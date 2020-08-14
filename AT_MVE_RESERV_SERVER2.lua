-- Данный код служит для резеовирования серверов на ОС Виндовс, и работает в сети с
-- двумя резервируемыми узлами, одним армом(который пополняет счётчик) и одним свитчём, который пингуется обоими серверами.

-- Две переменные которые выполняют роль триггера, при переключении в одно из состояний 
-- переменной old_switch присваивается значение переменной switch
local switch = false
local old_switch = false
--if Core.isReserved("ASUE_Server_N1.Loader", 1) ~= nil then 
--  if Core.isReserved("ASUE_Server_N1.Loader", 1) == false then
--    Core.setReserve("ASUE_Server_N2.Loader", true)
--	old_switch = false
--  end
--else
--  Core.setReserve("ASUE_Server_N2.Loader", false)
--  old_switch = true
--end
Core.addLogMsg("Инициализация системы")
Core["Arbitr.SECOND_SERVER_RESERVED"] = true
Core.setReserve("ASUE_Server_N2.Loader", true)
for e = 1, 20,1 do
  os.sleep(1)
  Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1
end
Core["Arbitr.SECOND_SERVER_RESERVED"] = true
--Core.addLogMsg("Первый переход и задержка 9 секунд")

while true do
  Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1
--  Core.addLogMsg("начало бесконечного цикла до первого пинга")
  
  local net_ping = os.ping("192.168.1.15", 0.7)
--  Core.addLogMsg("после пинга")
  if Core["Arbitr.FIRST_ARM_COUNTER"] == Core["Arbitr.OLD_S_A_COUNTER"] and net_ping ~= true then
    Core.addLogMsg("Старый счётчик арма совпал с новым "..Core["Arbitr.ERROR_COUNTER_S2"])
    Core["Arbitr.ERROR_COUNTER_S2"] = Core["Arbitr.ERROR_COUNTER_S2"] + 1
    if Core["Arbitr.ERROR_COUNTER_S2"] > 10000 then
      Core["Arbitr.ERROR_COUNTER_S2"] = 4
    end
  else
    Core["Arbitr.ERROR_COUNTER_S2"] = 0
  end
--  Core.addLogMsg("проверка условия по счётчикам")
  Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1
  
  if Core["Arbitr.ERROR_COUNTER_S2"] > 4 and not Core.isReserved("ASUE_Server_N2.Loader", 1) then
    --Core.addLogMsg("Старый счётчик арма совпал с новым и сервер является основным")
    switch = false
    if switch ~= old_switch then
      Core.setReserve("ASUE_Server_N2.Loader", true)
      Core["Arbitr.SECOND_SERVER_RESERVED"] = true
      Core.addEvent("Сервер 2 резервный" , 101, 1, "Сервер 2", "Сервер 2", "Сервер 2") 
      old_switch = switch
      Core.addLogMsg("если в резерве")
    end
  end
--  Core.addLogMsg("препроверка условия на счётчики второго арма")
  Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1
  if Core["Arbitr.FIRST_SERVER_COUNTER"] == Core["Arbitr.OLD_F_S_COUNTER"] then
    Core["Arbitr.ERROR_COUNTER_S2_S1"] = Core["Arbitr.ERROR_COUNTER_S2_S1"] + 1
    if Core["Arbitr.ERROR_COUNTER_S2_S1"] > 10000 then
      Core["Arbitr.ERROR_COUNTER_S2_S1"] = 5
    end
  else
    Core["Arbitr.ERROR_COUNTER_S2_S1"] = 0
  end
 
  Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1
--  Core.addLogMsg("если второй недоступен а первый в резерве")
  if Core["Arbitr.ERROR_COUNTER_S2"] == 0 and (Core["Arbitr.ERROR_COUNTER_S2_S1"] >=5 or Core.isReserved("ASUE_Server_N1.Loader", 1)) then
    for y = 0, 15, 1 do
      Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1
      os.sleep(0.2)
    end
--    Core.addLogMsg("после задержки перепроверка")
    if Core["Arbitr.FIRST_SERVER_COUNTER"] == Core["Arbitr.OLD_F_S_COUNTER"] then
      Core["Arbitr.ERROR_COUNTER_S2_S1"] = Core["Arbitr.ERROR_COUNTER_S2_S1"] + 1
      if Core["Arbitr.ERROR_COUNTER_S2_S1"] > 10000 then
        Core["Arbitr.ERROR_COUNTER_S2_S1"] = 5
      end
    else
      Core["Arbitr.ERROR_COUNTER_S2_S1"] = 0
    end
--    Core.addLogMsg("после задержки действия")
    Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1    
    if Core["Arbitr.ERROR_COUNTER_S2"] == 0 and (Core["Arbitr.ERROR_COUNTER_S2_S1"] >=5 or Core.isReserved("ASUE_Server_N1.Loader", 1)) then     
      switch = true
      if switch ~= old_switch then
        local DT = os.time()
--        Core.addLogMsg("Сработало условие второй не доступен "..tostring(os.date("%1N")))
        Core.setReserve("ASUE_Server_N2.Loader", false)
        Core.addEvent("Сервер 2 основной" , 101, 1, "Сервер 2", "Сервер 2", "Сервер 2", DT , "DIAGN")
        Core["Arbitr.SECOND_SERVER_RESERVED"] = false
        old_switch = switch
      end
    end
  end
 
  Core["Arbitr.SECOND_SERVER_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"] + 1
  if Core["Arbitr.SECOND_SERVER_COUNTER"] >= 10000 then
    Core["Arbitr.SECOND_SERVER_COUNTER"] = 0
  end

  Core["Arbitr.OLD_S_A_COUNTER"] = Core["Arbitr.FIRST_ARM_COUNTER"]
  Core["Arbitr.OLD_F_S_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"]
--  Core.addLogMsg("последняя задержка в коде")
  os.sleep(0.7)
--  Core.addLogMsg("после последней задержка в коде")
end