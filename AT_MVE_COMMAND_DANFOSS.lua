-- Программа для запуска останова артскважины номер два отправляет данные на контроллер данфосс
-- 
local function start_danfoss()
  if Core["DANFOSS_ART2.HMI_START"] == true then
-- Переменная которую нужно записать в "ПРАВДА" в регистр для пуска скважины    
    Core["DANFOSS_ART2.COMMAND_START_STOP"] = true
-- Проверяем что переменная для записи в регистр, была сброшена драйвером модбас
    if Core["DANFOSS_ART2.Modbus_ST_UP.UPDATE_WRITE_COIL"] == false then
      Core["DANFOSS_ART2.Modbus_ST_UP.UPDATE_WRITE_COIL"] = true
    else
      Core.addLogMsg("Команда уже была подана, но не сброшена, проблема со связью")
    end

    os.sleep(0.5)
    
    Core["DANFOSS_ART2.COMMAND_START_STOP"] = false
    Core["DANFOSS_ART2.HMI_START"] = false
  end
end

local function stop_danfoss()
  if Core["DANFOSS_ART2.HMI_STOP"] == true then
-- Переменная которую нужно записать в "ЛОЖЬ" в регистр для останова скважины     
    Core["DANFOSS_ART2.COMMAND_START_STOP"] = false
-- Проверяем что переменная для записи в регистр, была сброшена драйвером модбас
    if Core["DANFOSS_ART2.Modbus_ST_UP.UPDATE_WRITE_COIL"] == false then
      Core["DANFOSS_ART2.Modbus_ST_UP.UPDATE_WRITE_COIL"] = true
    else
      Core.addLogMsg("Команда уже была подана, но не сброшена, проблема со связью")
    end

    os.sleep(0.5)
    
    Core["DANFOSS_ART2.COMMAND_START_STOP"] = false
    Core["DANFOSS_ART2.HMI_STOP"] = false
  end   
end

-- Сторожа на измение сигналов с интерфейса
Core.onExtChange({"DANFOSS_ART2.HMI_START"}, start_danfoss)
Core.onExtChange({"DANFOSS_ART2.HMI_STOP"}, stop_danfoss)
Core.waitEvents()