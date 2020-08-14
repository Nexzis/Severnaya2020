-- Код для записи уставок, а так же записи текущих считанных уставок в регистры для записи.

local write_prefix = "_WR"
local raw_prefix = "RAW_"
local prefix_update_signal = "UPDATE_WRITE_HOLDING_REG"
local prefix_struct_modbus = "_UP_ST."
                    

local signals_on_write = {"WRITE_SETTINGS_ELIM1",
                    "WRITE_SETTINGS_ELIM2"}
                    
local rewrite_signals_on_write = {"REWRITE_READ_SETTINGS_IN_WR_REG_ELIM1",
                            "REWRITE_READ_SETTINGS_IN_WR_REG_ELIM2"}

local signals_elim = {
    ["_ADDR"] = {["Comment"]= "ЭЛИМ Устройство 1 Адрес устройства в модбас сети 0..255"},
    ["_PORT_SP"] = {["Comment"]= "ЭЛИМ Устройство 1 Скорость обмена по модбас 1-5 : 1-9600, 2-19200, 3-38400, 4-57600, 5-115200"},
    ["_UST_U_I"] = {["Comment"]= "ЭЛИМ Устройство 1 Уставки по току и напряжению 0-11 : 0-U27,5 I30,0;1-U55,0 I15,0;2-U60,0 I30,0;3-U30,0 I90,0;4-U110 I7,5;6-U220 I3,8;7-U330 I2,5;8-U440 I1,9;9-U550 I1,5;10-U660 I1,2;11-Свои"},
    ["_SHIM_U"] = {["Comment"]= "ЭЛИМ Устройство 1 Значение генератора ШИМ напряжения, 0...0х03FF(выход 0-5В)"},
    ["_SHIM_I"] = {["Comment"]= "ЭЛИМ Устройство 1 Значение генератора ШИМ тока, 0...0х03FF"},
    ["_ADD_U"] = {["Comment"]= "ЭЛИМ Устройство 1 Аддитивная поправка канала измерения напряжения(умол.0.0)"},
    ["_MLT_U"] = {["Comment"]= "ЭЛИМ Устройство 1 Мультипликативная поправка канала измерения напряжения(умол.1.0)"},
    ["_ADD_I"] = {["Comment"]="ЭЛИМ Устройство 1Аддитивная поправка канала измерения тока(умол.0.0)"},
    ["_MLT_I"] = {["Comment"]="ЭЛИМ Устройство 1Мультипликативная поправка канала измерения тока(умол.1.0)"},
    ["_STB_WORK"] = {["Comment"]="ЭЛИМ Устройство 1Ждущий режим 0-рабочий,1-ждущий"},
    ["_HH_U"] = {["Comment"]="ЭЛИМ Устройство 1Верхний предел напряжения для настраиваемого типа 0..9999В"},
    ["_HH_I"] = {["Comment"]="ЭЛИМ Устройство 1Верхний предел тока для настраиваемого типа 0..9999А"}
}

-- Функция для инициализации уставок текущими значениями этих уставок
local function rewrite_read_settings(rewrite_signal)
  if Core[rewrite_signal[1]] == true then
    elim_prefix = rewrite_signal[1]:sub(-5) -- у принятого сигнала обезаем последние 5 символов что даёт нам идентефикатор устройства
    
    for signal_elim, _ in pairs(signals_elim) do
      Core[raw_prefix..elim_prefix..write_prefix..signal_elim] = Core[raw_prefix..elim_prefix..signal_elim] -- составное имя сигнала для записи и имя сигнала считанного      
    end
    
    Core[rewrite_signal[1]] = false
  end
end

-- Функция для обновления сигнала на запись( посылает сигнал обновления в драйвер сигнала управления )
local function update_write_holding(write_signal)
  elim_prefix = write_signal[1]:sub(-5)
  
  if Core[raw_prefix..elim_prefix..prefix_struct_modbus..prefix_update_signal] == false then
    if Core[write_signal[1]] == true then
      Core[raw_prefix..elim_prefix..prefix_struct_modbus..prefix_update_signal] = true
      os.sleep(0.3)
    end
  else
    Core.addLogMsg("Сигнал уже был отправлен, но драйвер не отработал корректно")
  end
  
  Core[write_signal[1]] = false
end
  
for _, rewrite_signal in pairs(rewrite_signals_on_write) do
  Core.onExtChange({rewrite_signal}, rewrite_read_settings, {rewrite_signal})
end

for _, update_signals in pairs(signals_on_write) do
  Core.onExtChange({update_signals}, update_write_holding, {update_signals})
end
--Core.onExtChange(write_signal,commands_operator_Descriptor["eval"],{raw_objectName,objectName})	

Core.waitEvents( )


