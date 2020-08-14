require "./lua_lib/crc16_ansi"
require "./lua_lib/acs_data_lib"

local update_signal = "RAW_HOBBIT1_UPDATE"
local PORT_CONNECT_ERROR = 10
local port = nil
local msg = {0x21}
local pref_msg = {0x7e, 0x01}
local bad_answer_count = 0
-- таблица состояний каналов
local raw_state_signal = {
  "RAW_HOBBIT1_CH1_STATE_WORD",
  "RAW_HOBBIT1_CH2_STATE_WORD",
  "RAW_HOBBIT1_CH3_STATE_WORD",
  "RAW_HOBBIT1_CH4_STATE_WORD"
}

-- таблица концентраций
local raw_concentrate_signal = {
  "RAW_HOBBIT1_CH1_CONCENTRATE",
  "RAW_HOBBIT1_CH2_CONCENTRATE",
  "RAW_HOBBIT1_CH3_CONCENTRATE",
  "RAW_HOBBIT1_CH4_CONCENTRATE"
}

-- Строка в шестнадцатиричный вид в лог приложения пишется, на вход строка
local function hex_dump(buf)
  for i=1,math.ceil(#buf/16) * 16 do
    if (i-1) % 16 == 0 then Core.addLogMsg(string.format('%08X  ', i-1)) end
    Core.addLogMsg( i > #buf and '   ' or string.format('%02X ', buf:byte(i)) )
    if i %  8 == 0 then Core.addLogMsg(' ') end
    if i % 16 == 0 then Core.addLogMsg( buf:sub(i-16+1, i):gsub('%c','.'), '\n' ) end
  end
end

-- Функция для связи с ком портом
local function com_connect()
  port = SerialPort.new("COM5", 9600, 8, 1, "NONE")
  
-- Если порт не открылся, то сообщение в лог и выход из программы
  if port == nil then
    Core.addLogMsg("Can't connect to host")
    os.sleep(2)
    com_connect()
  end  
end

local function close_port_on_reserve(id_port)
  if id_port ~= nil then 
    id_port:close()
  end
end

local function request_for_port(pref_msg, msg)
  local loc_pref_msg = assigument_of_array(pref_msg)
  local loc_msg = assigument_of_array(msg)
  -- Прибавление к префиксу посылки самого тела посылки 
  for _, value in ipairs(loc_msg) do
    table.insert(loc_pref_msg, value)
  end
  
  -- Прибавление к телу посылки с префиксом кода CRC 
  for _, value in ipairs(count_crc(loc_msg)) do
    table.insert(loc_pref_msg,value)
  end

  -- Формирование посылки на отправку 
  local request = ""
  for _, value in ipairs(loc_pref_msg) do
    request = request..string.char(value)
  end

  return request
end

-- Отправка запроса на порт, возвращает ответ
local function request_on_port(request)
  local success = "bad"  -- Переменная для подтверждения статуса запроса
  local answer = nil  -- ответ от устройства
  port:send(string.char(0x0f)) -- Согласно протокола отправляем на устройство байт 0x0f
  os.sleep(0.15)
  local count_bytes = port:recvBytesAvailable()
  local accept_answer = port:recv(count_bytes)
  if accept_answer == nil then
    return {0, "bad"}
  end
  
  accept_byte = string.byte(accept_answer, 1)
  

  if accept_byte == 0x06 then -- Если от устройства приходит ответ 0х06, то это означает что можно послать запрос на получение данных
    port:send(request) -- Посылаем интересующий нас запрос
    os.sleep(0.15)
    count_bytes = port:recvBytesAvailable()
    answer = port:recv(count_bytes)
    success = "good"
    -- Core.addLogMsg("ANSWER"..answer )
    if answer == nil or string.len(answer) < 3 then
      return {0, "bad"}
    end
  --[[else
    Core.addLogMsg("Устройство не ответило корректно на запрос, повтор...")  
    bad_answer_count = bad_answer_count + 1
      
      if bad_answer_count >= 7 then
        return {0, 10}
      end]]
  end
--port:clearBuffers()
  return {answer, success}  
end

-- Достаём из посылки сведения и концентрацию по каждому каналу,
-- функция принимает пакет из которого убраны символы не относящиеся
-- к данным каналов(а)
local function channel_info(byte_channel_info)
  local channel_state = {} -- Массив состояний канала на каждый индекс приходится по состоянию одного канала(если канал один то массив из одного элемента)
  local concentration = {{}} -- Двухмерный массив для значений концентрации, в каждом элементе массива находиться четыре байта данных
  local count_for_byte = 1 -- Вспомогательная переменная для записи концентрации в массив побайтно
  local count_for_state = 1 -- Вспомогательная переменная для записи состояний в массив
  
  for i = 1, #byte_channel_info, 5 do -- Цикл для записи значений в массивы
    channel_state[count_for_state] = string.byte(byte_channel_info, i) -- Запись в массив состояний байта состояния, в случае посылки больше чем из одного канала, каждый пятый байт является состоянием каждого следующего канала
    concentration[count_for_state] = {} -- Инициализация массива для записи концентрации( нужно для корректной работы записи в двухмерный маассив)
    
    for j = i+1, i+4 do -- Цикл по четырём байтам(следующим после байта состояния) и их запись в массив
      concentration[count_for_state][count_for_byte] = string.byte(byte_channel_info, j) -- Запись байтов из которых складывается значение концентрации в массив
      count_for_byte = count_for_byte + 1 
    end
    
    count_for_state = count_for_state + 1
    count_for_byte = 1
  end
  
  return {channel_state, concentration} -- Возвращаем массив из состоящий из состояний каналов - массив(channel_state), и концентраций - двухмерный массив(concentration)
end

-- Разбор посылки
local function unpackage(pack)
  if #pack == 8 then 
  end

  if #pack > 8 then--Если пришла посылка с состоянием нескольких канало
    local byte_7E = string.byte(pack, 1)
    local data_size = string.byte(pack, 2)
    local data_type = string.byte(pack, 3)
    local channel_amount = string.byte(pack, 4)
    
    local channnel_params = channel_info(string.sub(pack, 5, #pack - 2))
    return {byte_7E, data_size, data_type, channel_amount, channnel_params}
  end
end

-- Функция для записи посылки в переменные
local function write_on_variables(data_pack)
  for i = 1, #data_pack[5][1] do 
    Core[raw_state_signal[i]] = data_pack[5][1][i]
    Core[raw_concentrate_signal[i]] = array_byte_to_int(data_pack[5][2][i],true)
  end
end  

local old_reserve = false
-- Функция которая выполняющая запрос на устройство
local function processing(req_info)
  if Core["@RESERVE"] == false and old_reserve == true then
    com_connect()
    old_reserve = false
  end

  if Core["@RESERVE"] == true then
    old_reserve = Core["@RESERVE"]
    close_port_on_reserve(port)
    Core["RAW_HOBBIT1_UPDATE"] = false 
    Core.addLogMsg("Порт закрыт, узел в резерве")
    return "RESERVE"
  end
  local answer
  if Core[update_signal] == true then -- Если есть команда на запрос выполнить запрос и записать результат в переменную
    answer = request_on_port(request_for_port(req_info[1], req_info[2]))-- выполнение запроса выполняется функцией request_for_port(req_info[1], req_info[2]), где req_info[1] - стандартные байты префикса сообщения, req_info[2] - тело сообщения
    if answer[2] == "bad" or type(answer) == "nil" then
      port:clearBuffers()
      Core.addLogMsg("Error read data")
      Core.addLogMsg("Try to connect ...")
      bad_answer_count = bad_answer_count + 1
      
      if port == nil then
        com_connect()
        os.sleep(1)
      end
      
      if bad_answer_count == 5 then
        Core["HOBBIT1_DS_DP"] = 2
        Core.addLogMsg("HOBBIT ERROR")
      end

      Core["RAW_HOBBIT1_UPDATE"] = false  
      return 42
    end
  
  

  -- Считаем CRC пришедшего пакета
  local validation = string_to_byte(answer[1]:sub(3,  #answer[1] - 2))
--  hex_dump(answer[1]:sub(3,  #answer[1] - 2))
  local validation_crc = count_crc(validation)
  
--  Core.addLogMsg(validation_2[1].."  "..validation_2[2])
--   Core.addLogMsg(string_to_byte(answer[1]:sub(-2))[1].."    "..string_to_byte(answer[1]:sub(-2))[2])
  -- Вызываем функцию сравнения посчитанного crc пришедшего пакета и crc пришедшего вместе с пакетоm 
  if deepcompare(validation_crc, string_to_byte(answer[1]:sub(-2))) then
    --Core.addLogMsg("it looking good")
    bad_answer_count = 0
    local unpackage_answer = unpackage(answer[1])
    -- Запись полученных значений в переменные  
    write_on_variables(unpackage_answer)
    
    if answer[2] == "good" then -- Проверяем если запрос и ответ прошли успешно(функция request_on_port вернула true, во втором элементе возвращаемого массива
      Core["RAW_HOBBIT1_UPDATE"] = false -- Скидываем переменную вызова
      Core["HOBBIT1_DS_DP"] = 0
    end
  else
    Core.addLogMsg("crc package not corrected")
    Core["RAW_HOBBIT1_UPDATE"] = false -- Скидываем переменную вызова
    Core["HOBBIT1_DS_DP"] = 16 -- код ошибки для недостоверных показаний
  end
  end
end
  
-- Вызов функции для открытия соединения с ком портом.
if Core["@RESERVE"] ~= true then
  com_connect()
end

Core.onExtChange({update_signal}, processing, {pref_msg, msg})
Core.waitEvents()