require "./lua_lib/acs_data_lib"
require "./lua_lib/ieee754"
local socket = require("socket")
-- Типы аварийных сообщений для сонаты.
local AS=10000  
local WS=10100
local TS=101

-------------------------------------------------------------------------------------------------------------------------------------------------
--local connect = nil
-- Ключём таблицы является адрес в модбас сети, значением айпи-адрес прибора или преобразователя и название структуры сигналов прибора в проекте
-------------------------------------------------------------------------------------------------------------------------------------------------
local vzlet_list = {
 ["1"] = {"192.168.1.57", "VZLET311"},
}
-------------------------------------------------------------------------------------------------------------------------------------------------

 -----------------------------------------------------------
-- based on http://www.ethernut.de/api/gmtime_8c_source.html
-- Код для пересчёта времени timestamp в DT
------------------------------------------------------------
local floor=math.floor

local DSEC=24*60*60 -- secs in a day
local YSEC=365*DSEC -- secs in a year
local LSEC=YSEC+DSEC    -- secs in a leap year
local FSEC=4*YSEC+DSEC  -- secs in a 4-year interval
local BASE_DOW=4    -- 1970-01-01 was a Thursday
local BASE_YEAR=1970    -- 1970 is the base year

local _days={
    -1, 30, 58, 89, 119, 150, 180, 211, 242, 272, 303, 333, 364
}
local _lpdays={}
for i=1,2  do _lpdays[i]=_days[i]   end
for i=3,13 do _lpdays[i]=_days[i]+1 end

function gmtime(t)
  print(os.date("!\n%c\t%j",t),t)
    local y,j,m,d,w,h,n,s
    local mdays=_days
    s=t
    -- First calculate the number of four-year-interval, so calculation
    -- of leap year will be simple. Btw, because 2000 IS a leap year and
    -- 2100 is out of range, this formula is so simple.
    y=floor(s/FSEC)
    s=s-y*FSEC
    y=y*4+BASE_YEAR         -- 1970, 1974, 1978, ...
    if s>=YSEC then
        y=y+1           -- 1971, 1975, 1979,...
        s=s-YSEC
        if s>=YSEC then
            y=y+1       -- 1972, 1976, 1980,... (leap years!)
            s=s-YSEC
            if s>=LSEC then
                y=y+1   -- 1971, 1975, 1979,...
                s=s-LSEC
            else        -- leap year
                mdays=_lpdays
            end
        end
    end
    j=floor(s/DSEC)
    s=s-j*DSEC
    local m=1
    while mdays[m]<j do m=m+1 end
    m=m-1
    local d=j-mdays[m]
    -- Calculate day of week. Sunday is 0
    w=(floor(t/DSEC)+BASE_DOW)%7
    -- Calculate the time of day from the remaining seconds
    h=floor(s/3600)
    s=s-h*3600
    n=floor(s/60)
    s=s-n*60
    print("y","j","m","d","w","h","n","s")
    print(y,j+1,m,d,w,h,n,s)
    return {["year"] = y, ["month"] = m, ["day"] = d, ["hour"] = h, ["min"] = n, ["sec"] = s}
end
----------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Отладочная функция, взятая с сайта stackoverflow.com, требуется в случае необходимости вывести сдержиое посылки в шестнадцатеричном формате.
-- Принимает на вход строку, печатает на экране коды байт в шестнадцатеричном виде
----------------------------------------------------------------------------------------------------------------------------------------------------
local function hex_dump(buf)
      for i=1,math.ceil(#buf/16) * 16 do
         if (i-1) % 16 == 0 then io.write(string.format('%08X  ', i-1)) end
         io.write( i > #buf and '   ' or string.format('%02X ', buf:byte(i)) )
         if i %  8 == 0 then io.write(' ') end
         if i % 16 == 0 then io.write( buf:sub(i-16+1, i):gsub('%c','.'), '\n' ) end
      end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Переменная необходимая для генерации номера запроса для модбас
-------------------------------------------------------------------------------
local cnt = 0
local function check_modbus_counter(counter)
  counter = counter + 1
  --Core.addLogMsg("Счётчик вызван")
  if counter >= 65535 then counter = 0 end
  return counter
end
-------------------------------------------------------------------------------

-------------------------------------------------------------------
-- Код для вызова задержки если это необходимо. Код взял с lua.org
-------------------------------------------------------------------
local clock = os.clock
function sleep(n)
  local t0 = clock()
  while clock() - t0 <= n do end
end
--------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Функция создаёт модбас-ТИСИПИ запрос на чтение, принимает на вход таблицу порядок элементов в которой:
-- таблица для составления запроса принимает на вход таблицу в которой: 
-- первый элемент - номер обмена, второй адресс устройства, третий адрес 
-- код функции, четвертый - стартовый адресс, пятый количество регистров
-------------------------------------------------------------------------------
local function making_modbus_request(modbus_req_parametrs, data_of_writing) 
  Core.addLogMsg("Функция Создания запроса вызвана")
  local cnt_mb = modbus_req_parametrs[1]                      
  local slave_address =  modbus_req_parametrs[2]           
  local code_function =   modbus_req_parametrs[3]
  local start_address = modbus_req_parametrs[4]
  local amount_registers =   modbus_req_parametrs[5]
  
  -- работа с переменными побайтно для формирования запроса модбас побайтно
  local big_cnt =  word_to_byte(cnt_mb, 1) 
  local small_cnt = word_to_byte(cnt_mb, 0) 
  local big_address = word_to_byte(start_address, 1)
  local small_address =  word_to_byte(start_address, 0)
  local big_amount_registers = word_to_byte(amount_registers, 1)
  local small_amount_registers = word_to_byte(amount_registers, 0)
  local lenght_request = amount_registers * 2 + 7
  local big_lenght = word_to_byte(lenght_request, 1)
  local small_lenght = word_to_byte(lenght_request, 0)
  local data_lenght = amount_registers * 2
  -- отладочная информация
  --Core.addLogMsg(data_lenght)

  -- Формирование запроса для функции 0х03 или 0х10
  if code_function == 3 or code_function == 4 then
    local request = string.char(big_cnt, small_cnt, 0, 0, 0, 6, slave_address, code_function, big_address, small_address, big_amount_registers, small_amount_registers)
    return request
  elseif code_function == 16 then
    local data =  bytes_array_to_string(data_of_writing)
    local request = string.char(big_cnt, small_cnt, 0, 0, big_lenght, small_lenght, slave_address, code_function, big_address,
                                small_address,big_amount_registers, small_amount_registers, data_lenght)..data
    return request
  end
  
  --Core.addLogMsg("Функция Создания запроса завершена")
end
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
-- Функция для создания модбас-запроса на чтение архивов с прибора ВЗЛЁТ УСРВ311
-- принимает на вход таблицу в которой:
-- первый элемент - номер обмена по модбас, второй - адрес устройства в модбас сети, третий - код функции(дожен быть 65(функция не стандартная),
-- четвёртый - номер массива(0 - часовые, 1 - суточные, 2 - месячные), пятый - количество записей(не может быть больше 6 в силу особенностей модбас протокола и размеров записи),
-- шестой тип чтения записи(0 - по индексу, 1 - по времени)
-- седьмой - в зависимости от типа чтения записи, если запись по индексу, то индекс записи с которой начинается чтение, если по дате то таблица вида {["year"] = y, ["month"] = m, ["day"] = d, ["hour"] = h, ["min"] = n, ["sec"] = s}.
local function making_archieve_vzlet_request(modbus_archive_parametrs)
  --Core.addLogMsg("Функция Создания запроса вызвана")
  local cnt_mb = modbus_archive_parametrs[1]                      
  local slave_address =  modbus_archive_parametrs[2]           
  local code_function =   modbus_archive_parametrs[3]
  local array_number = modbus_archive_parametrs[4]
  local amount_records =   modbus_archive_parametrs[5]
  local record_type = modbus_archive_parametrs[6]
  

  -- работа с переменными побайтно для формирования запроса модбас побайтно
  local big_cnt =  word_to_byte(cnt_mb, 1) 
  local small_cnt = word_to_byte(cnt_mb, 0)
  local big_array_number = word_to_byte(array_number, 1)
  local small_array_number =  word_to_byte(array_number, 0)
  local big_amount_records = word_to_byte(amount_records, 1)
  local small_amount_records = word_to_byte(amount_records, 0)
  
  -- отладочная информация
  --Core.addLogMsg(data_lenght)

  -- Формирование запроса для функции 0x41
  if code_function == 65 and record_type == 0 then
    local fist_record_index = modbus_archive_parametrs[7]
    local big_fist_record_index = word_to_byte(fist_record_index, 1)
    local small_fist_record_index = word_to_byte(fist_record_index, 0)
    local request = string.char(big_cnt, small_cnt, 0, 0, 0, 9, slave_address, code_function, big_array_number, small_array_number, big_amount_records, small_amount_records, record_type,  big_fist_record_index, small_fist_record_index)
    return request
  elseif code_function == 65 and record_type == 1 then
    local year = modbus_archive_parametrs[7].year - 2000
    local month = modbus_archive_parametrs[7].month
    local day = modbus_archive_parametrs[7].day
    local hour = modbus_archive_parametrs[7].hour 
    local min = modbus_archive_parametrs[7].min
    local sec = modbus_archive_parametrs[7].sec
    print(year..month..day..hour..min..sec)
    local request = string.char(big_cnt, small_cnt, 0, 0, 0, 13, slave_address, code_function, big_array_number, small_array_number, big_amount_records, small_amount_records, record_type,  sec, min, hour, day, month, year)
    return request
  end
  Core.addLogMsg("Функция Создания запроса завершена")
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------
---- Функция для распаковки модбас пакета, принимаем на вход пакет в виде строки(string)
---------------------------------------------------------------------------------
local function unpacking_modbus_package(package)
  -- Core.addLogMsg("Функция распаковки модбас пакета вызвана")
  -- Идентификатор транзакции
  local transaction_num = array_byte_to_int(string_to_byte(string.sub(package, 1, 2)))
  --Core.addLogMsg(transaction_num)
  -- Идентификатор протокола
  local intentefier_protocol = array_byte_to_int(string_to_byte(string.sub(package, 3, 4)))
  --Core.addLogMsg(intentefier_protocol)
  -- Длина
  local packet_length = array_byte_to_int(string_to_byte(string.sub(package, 5, 6))) 
  --Core.addLogMsg(packet_length)
  -- Адрес устройства
  local device_address = array_byte_to_int(string_to_byte(string.sub(package, 7, 7))) 
  --Core.addLogMsg(device_address)
  -- Код функции
  local function_code = array_byte_to_int(string_to_byte(string.sub(package, 8, 8)))
  --Core.addLogMsg(function_code)
   -- Длина данных
  local data_length = array_byte_to_int(string_to_byte(string.sub(package, 9, 9)))  
  -- Core.addLogMsg("Длина данных "..data_length)
  --print("Длина данных "..data_length)
  if data_length >= 65535 then
    return 0
  end
  -- Данные
  local data = {}
  -- Распаковка регистров со значащими данными
  for i = 0, data_length - 1, 1 do    
    table.insert(data, string_to_byte(string.sub(package, i + 10)))
    -- Core.addLogMsg(data[i+1])
  end
  -- Core.addLogMsg("Функция распаковки модбас пакета завершена")
  return data
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Получает все необходимые аргументы для запроса и отправляет запрос в порт, считает количество байт которые нужно принять и принимает их, возвращает строку ответа.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function read_arch_vzlet(sock, unit_id, array_num, amount_records, req_type, index_or_date)
  local request = making_archieve_vzlet_request({cnt, unit_id, 65, array_num, amount_records, req_type, index_or_date})
-- hex_dump(request) -- Раскоментировать если нужно вывести запрос в 16-иричном виде
  sock:send(request)
-- Core.addLogMsg("Запрос послан") -- Отладочная
  local lenght_answer
  
  if array_num == 0 then
    lenght_answer = 9 + amount_records * 30
  else 
    lenght_answer = 9 + amount_records * 34
  end
  
  local answer, error = sock:receive(tostring(lenght_answer))
  -- print(answer)
  -- hex_dump(answer)
  --Core.addLogMsg("Принят ответ от зоны событий")
  
  return answer
end
-------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------
-- Распаковка посылки данных содержит время архивации и значение расхода в м3, для часового ахива
-- 30 байт данных содержат одну запись, для суточный и месячных 34
------------------------------------------------------------------------------------------------
local function unpacking_archive_data(package)
  local data_table = {}
  
  if #package % 30 == 0 then
    for n = 1, #package, 30 do
      local timestamp = array_byte_to_int({package[n][1], package[n+1][1], package[n+2][1], package[n+3][1]})
      local uchet = tonumber(tostring(array_byte_to_int({package[n+4][1], package[n+5][1], package[n+6][1], package[n+7][1]}) + ieee754_from_hex(array_byte_to_int({package[n+8][1], package[n+9][1], package[n+10][1], package[n+11][1]}))))
      data_table[tostring(timestamp)] = uchet
    end
    return data_table
  elseif #package % 34 == 0 then
    for n = 1, #package, 34 do
      local timestamp = array_byte_to_int({package[n][1], package[n+1][1], package[n+2][1], package[n+3][1]})
      local uchet = tonumber(tostring(array_byte_to_int({package[n+4][1], package[n+5][1], package[n+6][1], package[n+7][1]}) + ieee754_from_hex(array_byte_to_int({package[n+8][1], package[n+9][1], package[n+10][1], package[n+11][1]}))))
      --gmtime(timestamp)
      ---print(uchet)
      data_table[tostring(timestamp)] = uchet
    end
  return data_table
  end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Подключение к устройству
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function connect_to_vzlet(ip_addres, port)
  local sock, err = socket.connect(ip_addres, port)
    
  if err ~= nil then
    Core.setMessage(err)
    print(err)
    sock = nil
    err = nil
    return "No connection"
  end
  
  if sock == nil then
    Core.setMessage("Sock is nil")
    sock = nil
    err = nil
    return "No connection"
  end
  
  Core.setMessage("")
  sock:settimeout(5)
  return sock   
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Валидация и посыл запроса на заданый порт с задаными характеристиками запроса.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function request_to_vzlet(sock, dev_address, array_num, amount_records, req_type, index_or_date)
  if sock == "NO CONNECT" then
    Core.addLogMsg("Connection imposible")
    print("Connection imposible")
    return "Connection imposible"
  end
  
  if dev_address > 128 or dev_address <= 0 or type(dev_address) ~= "number" then 
    Core.addLogMsg("Был введён неверный адрес устройства, адрес выставлен в единицу")
    dev_address = 1
  end
  
  if array_num > 2 or array_num < 0 or type(array_num) ~= "number" then
    Core.addLogMsg("Номер массива может принимать занчения 0,1,2 и никакие другие")
    array_num = 0
  end
  
  if amount_records > 6 or amount_records < 0 or type(amount_records) ~= "number" then
    Core.addLogMsg("Было введёно неверное количество записей, выставлено в единицу")
    amount_records = 1
  end
  
  if (req_type ~= 1 and req_type ~= 0) or type(req_type) ~= "number" then
    print(req_type)
    print("Было введёно неверный тип запроса, выставлено в единицу")
    req_type = 1
  end
  
  if req_type == 1 then
    date = gmtime(index_or_date)
  else
    date = index_or_date
  end
  
  local modbus_answer = read_arch_vzlet(sock, dev_address, array_num, amount_records, req_type, date)
  if modbus_answer == nil or #modbus_answer < 15 then
    return "Device not responding or request is error"
  end
  
  local data_answer = unpacking_modbus_package(modbus_answer)
  if data_answer == 0 then
    return "Answer not correct"
  end
  
  local vzlet_answer = unpacking_archive_data(data_answer)
  if type(vzlet_answer) == "table" then
    return vzlet_answer
  end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Функция для определения текущей директории, взято c stackoverflow.com, используется 
-- библиотека LUA - LFS
----------------------------------------------------------------------------------------------------------------------------------------------------
local function script_path()
  local str = lfs.currentdir() 
  --print(str:match("(.*[/\\])"))
  return str:match("(.*[/\\])")  
end
----------------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------------
-- Функция для определения текущей директории, взято c stackoverflow.com
-----------------------------------------------------------------------------------------------------------------------------------------------------
function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
-- взято с https://stackoverflow.com/questions/11201262/how-to-read-data-from-a-file-in-lua
-- get all lines from a file, returns an empty 
-- list/table if the file does not exist
------------------------------------------------------------------------------------------------------------------------------------------------------
local function lines_from(file)
  if not file_exists(file) then return {} end
  local lines = {}
  
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
    
  local data_table = {}
  for y = 1, #lines, 2 do
    data_table[lines[y]] = lines[y + 1]  
    end
  return data_table
end
---------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Функция для выполнения циклических запросов к устройству, в момент времени когда не считывается архив
-- Обновляет переменные которые привязаны в драйвере устройства на считывание регистров
--------------------------------------------------------------------------------------------------------
local function cycle_request_register()
    if Core["VZLET_A2.INTERUPT_CYCLE_REQ"] == false then
      Core["VZLET_A2.Modbus_UP_ST.UPDATE_READ_INPUTS_REG"] = true
      Core["VZLET_A2.Modbus_UP_ST.UPDATE_READ_HOLDING_REG"] = true 
    else
      Core["VZLET_A2.Modbus_UP_ST.UPDATE_READ_INPUTS_REG"] = false
      Core["VZLET_A2.Modbus_UP_ST.UPDATE_READ_HOLDING_REG"] = false
    end 
end
---------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
-- Опрос часовых архивов прибора ВЗЛЁТ
---------------------------------------------------------------------------------------------
local function read_hour_archive()
  if Core["@RESERVE"] == true then
    Core.addLogMsg("Приложение в состоянии резерва. Опрос прибора производится на другом сервере")
    return 0
  end

  Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = true
  os.sleep(1)
  local current_dir = script_path()
  local processed_file_name = "ARCHIVE_VZLET\\TEMP_HOUR_ARCH.txt"
  local processed_file_path = current_dir..processed_file_name
--  print(processed_file_path)
  local connection = connect_to_vzlet("192.168.1.57", 26)
  
  if connection == "No connection" then 
    Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
    return 0
  end
  
  local current_data_table = lines_from(processed_file_path)
--  for DT, VALUE in pairs(current_data_table) do
--    print(DT)
--    print(VALUE)
--  end
 
  local processed_file = io.open(processed_file_path,"a")
  
-- Считываем весь массив данных часового архива
  for i = 0, 119, 5 do
    local data_from_vzl = request_to_vzlet(connection, 1, 0, 5, 0, i)
    if  type(data_from_vzl) ~= "table" then
      --print(data_from_vzl)
      Core.addLogMsg(data_from_vzl)
      Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
      return 0
    end 
    
    for DT, VALUE in pairs(data_from_vzl) do 
-- Добавляем в файла только те данные которых нет
      if current_data_table[DT] == nil then
        processed_file:write(DT.."\n")
        processed_file:write(string.format("%.3f", VALUE).."\n")
      end
    end
    sleep(0.3)
  end

  processed_file:flush()
  processed_file:close()
  
  connection:close()

  Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
end
-----------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
-- Опрос суточных архивов прибора ВЗЛЁТ
-----------------------------------------------------------------------------------
local function read_day_archive()
  if Core["@RESERVE"] == true then
    Core.addLogMsg("Приложение в состоянии резерва. Опрос прибора производится на другом сервере")
    return 0
  end

  Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = true
  os.sleep(1)
  local current_dir = script_path()
  local processed_file_name = "ARCHIVE_VZLET\\TEMP_DAY_ARCH.txt"
  local processed_file_path = current_dir..processed_file_name
--  print(processed_file_path)
  local connection = connect_to_vzlet("192.168.1.57", 26)

  if connection == "No connection" then
    Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
    return 0
  end
  
  local current_data_table = lines_from(processed_file_path)
--  for DT, VALUE in pairs(current_data_table) do
--    print(DT)
--    print(VALUE)
--  end
 
  local processed_file = io.open(processed_file_path,"a")

-- Считываем весь массив данных часового архива
  for i = 0, 44, 5 do
    local data_from_vzl = request_to_vzlet(connection, 1, 1, 5, 0, i)
    if  type(data_from_vzl) ~= "table" then
--    print(data_from_vzl)
      Core.addLogMsg(data_from_vzl)
      Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
      return 0
    end
    
    for DT, VALUE in pairs(data_from_vzl) do 
-- Добавляем в файла только те данные которых нет
      if current_data_table[DT] == nil then
        processed_file:write(DT.."\n")
        processed_file:write(string.format("%.3f", VALUE).."\n")
      end
    end
    sleep(0.3)
  end

  processed_file:flush()
  processed_file:close()
  
  connection:close()

  Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
end
---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
-- Опрос месячных архивов прибора ВЗЛЁТ
---------------------------------------------------------------------------------------
local function read_month_archive()
  if Core["@RESERVE"] == true then
    Core.addLogMsg("Приложение в состоянии резерва. Опрос прибора производится на другом сервере")
    return 0
  end

  Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = true
  os.sleep(1)
  local current_dir = script_path()
  local processed_file_name = "ARCHIVE_VZLET\\TEMP_MONTH_ARCH.txt"
  local processed_file_path = current_dir..processed_file_name
--  print(processed_file_path)
  local connection = connect_to_vzlet("192.168.1.57", 26)
  
  if connection == "No connection" then
    Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
    return 0
  end
  
  local current_data_table = lines_from(processed_file_path)
--  for DT, VALUE in pairs(current_data_table) do
--    print(DT)
--    print(VALUE)
--  end
 
  local processed_file = io.open(processed_file_path,"a")

-- Считываем весь массив данных часового архива
  for i = 0, 29, 5 do
    local data_from_vzl = request_to_vzlet(connection, 1, 2, 5, 0, i)
    if  type(data_from_vzl) ~= "table" then
--      print(data_from_vzl)
      Core.addLogMsg(data_from_vzl)
      Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
      return 0
    end
    
    for DT, VALUE in pairs(data_from_vzl) do 
-- Добавляем в файла только те данные которых нет
      if current_data_table[DT] == nil then
        processed_file:write(DT.."\n")
        processed_file:write(string.format("%.3f", VALUE).."\n")
      end
    end
    sleep(0.3)
  end

  processed_file:flush()
  processed_file:close()
  
  connection:close()
  Core["VZLET_A2.FINISHED_MONTH"] = true
  Core["VZLET_A2.INTERUPT_CYCLE_REQ"] = false
end
-------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------
-- инициализионный цикл, первый!!!!
---------------------------------------------------------------------------------------------------------
read_hour_archive()
read_day_archive()
read_month_archive()
    
-----------------------------------------------------
-- Вызов функций по таймеру
-----------------------------------------------------
Core.onTimer(1, 3600, read_hour_archive)
Core.onTimer(2, 86400, read_day_archive)
Core.onTimer(3, 2678400, read_month_archive)
Core.onTimer(4, 1.5, cycle_request_register)
Core.waitEvents()