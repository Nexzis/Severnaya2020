-- Данный код служит для резеовирования серверов на ОС Виндовс, и работает в сети с
-- двумя резервируемыми узлами, одним армом(который пополняет счётчик) и одним свитчём, который пингуется обоими серверами.

-- Две переменные которые выполняют роль триггера, при переключении в одно из состояний 
-- переменной old_switch присваивается значение переменной switch
local switch = false
local old_switch = false

-- Стартуем сервер в резерве и выдерживаем паузу 5 секунд
Core.setReserve("ASUE_Server_N1.Loader", true)
Core["Arbitr.FIRST_SERVER_RESERVED"] = true

for e = 1, 6,1 do
  os.sleep(1)
  Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
  -- Проверка пинга со свитчём
end

while true do
  -- В начале цикла пополняем счётчик данного сервера, счётчик необходим для того что бы второй сервер знал что первый сервер находится в работе и запущеном состоянии
  Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
  -- Проверка пинга со свитчём
  local net_ping = os.ping("192.168.1.15", 0.7)

  -- Если сервер не пингует свитч, а так же не видит обновления переменной которую пополняет АРМ,
  -- значит он находиттся не в сети, либо завис, поэтому каждый цикл начисляем этому серверу счётчик ошибок,
  -- если же пинг сервера успешен и счётчик арма не равен значению на прошлом цикле, то обнуляем счётчик ошибок сервера
  if Core["Arbitr.FIRST_ARM_COUNTER"] == Core["Arbitr.OLD_F_A_COUNTER"] and net_ping ~= true then
    Core.addLogMsg("Старый счётчик арма совпал с новым "..Core["Arbitr.ERROR_COUNTER_S1"])
    Core["Arbitr.ERROR_COUNTER_S1"] = Core["Arbitr.ERROR_COUNTER_S1"] + 1
    if Core["Arbitr.ERROR_COUNTER_S1"] > 10000 then
      Core["Arbitr.ERROR_COUNTER_S1"] = 11
    end
  else
    Core["Arbitr.ERROR_COUNTER_S1"] = 0
  end

  -- пополняем счётчик данного сервера, счётчик необходим для того что бы второй сервер знал что первый сервер находится в работе и запущеном состоянии
  Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
  
  -- Если сервер насчитал более трёх ошибок подряд, и до этого не был переведён в резерв, то считаем этот сервер не рабочим и переводим его в резерв, добавляем сообщение о переходе сервера в резерв
  if Core["Arbitr.ERROR_COUNTER_S1"] > 10 and not Core.isReserved("ASUE_Server_N1.Loader", 1) then
    Core.addLogMsg("Старый счётчик арма совпал с новым, так же отсутствует пинг со свитчём и сервер является основным")
    switch = false
    if switch ~= old_switch then
      local DT = os.time()
      Core.addLogMsg("НЕТ ПИНГА И СЧЁТЧИКА АРМ В РЕЗЕРВ!!!!!!!!!")
      Core.setReserve("ASUE_Server_N1.Loader", true)
      Core["Arbitr.FIRST_SERVER_RESERVED"] = true
      Core.addEvent("Сервер 1 в резерве" , 101, 1, "Сервер 1", "Сервер 1", "Сервер 1", DT, "DIAGN")
      old_switch = switch
    end
  end

  -- пополняем счётчик данного сервера, счётчик необходим для того что бы второй сервер знал что первый сервер находится в работе и запущеном состоянии
  Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
  
  -- Проверяем пополняется ли счётчик другого сервера, если не пополняется то прибавляем счётчик ошибок второго сервера
  if Core["Arbitr.SECOND_SERVER_COUNTER"] == Core["Arbitr.OLD_S_S_COUNTER"] then
    Core["Arbitr.ERROR_COUNTER_S1_S2"] = Core["Arbitr.ERROR_COUNTER_S1_S2"] + 1
    if Core["Arbitr.ERROR_COUNTER_S1_S2"] > 10000 then
      Core["Arbitr.ERROR_COUNTER_S1_S2"] = 5
    end
  else
    Core["Arbitr.ERROR_COUNTER_S1_S2"] = 0
  end
  
  -- пополняем счётчик данного сервера, счётчик необходим для того что бы второй сервер знал что наш сервер находится в работе и запущеном состоянии
  Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
  
  -- Если наш сервер чувствует себя без ошибок, при этом второй сервер находится в резерве, либо не пополняет свой счётчик, что говорит о его останове,
  -- то переводим наш сервер в основу
  if Core["Arbitr.ERROR_COUNTER_S1"] == 0 and (Core["Arbitr.ERROR_COUNTER_S1_S2"] >=5 or Core.isReserved("ASUE_Server_N2.Loader", 1)) then 
    for y = 0, 15, 1 do
      Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
      os.sleep(0.2)
    end
 
    if Core["Arbitr.SECOND_SERVER_COUNTER"] == Core["Arbitr.OLD_S_S_COUNTER"] then
      Core["Arbitr.ERROR_COUNTER_S1_S2"] = Core["Arbitr.ERROR_COUNTER_S1_S2"] + 1
      if Core["Arbitr.ERROR_COUNTER_S1_S2"] > 10000 then
        Core["Arbitr.ERROR_COUNTER_S1_S2"] = 5
      end
    else
      Core["Arbitr.ERROR_COUNTER_S1_S2"] = 0
    end    

    Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1

    if Core["Arbitr.ERROR_COUNTER_S1"] == 0 and (Core["Arbitr.ERROR_COUNTER_S1_S2"] >=5 or Core.isReserved("ASUE_Server_N2.Loader", 1)) then 
      Core.addLogMsg("Сработало условие при котором наш сервер находится в состоянии без ошибок, при этом не доступен сервер-партнёр, либо сервер патнёр в резерве")
      switch = true
      if switch ~= old_switch then
        local DT = os.time()
        Core.setReserve("ASUE_Server_N1.Loader", false)
        Core.addEvent("Сервер 1 основной" , 101, 1, "Сервер 1", "Сервер 1", "Сервер 1", DT, "DIAGN")
        old_switch = switch
        Core["Arbitr.FIRST_SERVER_RESERVED"] = false
      end
    end
  end
   
  -- пополняем счётчик данного сервера, счётчик необходим для того что бы второй сервер знал что наш сервер находится в работе и запущеном состоянии
  Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
  
  -- Если оба сервера не в резерве, второй сервер без ошибок, то выполняем задержку, и проверяем оба сервера на резерв и второй сервер на ошибку, если срабатывают оба условия
  -- то есть оба сервера основных и второй сервер без ошибок, то выводим наш сервер в резерв
  local result, reserve_flag  = Core.directGet("192.168.1.12:10000", 0.5, "@RESERVE", 0)
  
  if Core.isReserved("ASUE_Server_N2.Loader", 0.5) ~= nil and Core.isReserved("ASUE_Server_N1.Loader", 0.5) ~= nil then
    if Core.isReserved("ASUE_Server_N2.Loader", 1) == false and Core["Arbitr.ERROR_COUNTER_S1_S2"] < 1 and reserve_flag == false then       
      if Core.isReserved("ASUE_Server_N1.Loader", 1) == false then
        for y = 0, 25, 1 do
          Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
          os.sleep(0.4)
        end
        
        if Core.isReserved("ASUE_Server_N2.Loader", 0.5) ~= nil and Core.isReserved("ASUE_Server_N1.Loader", 0.5) ~= nil then
          if Core.isReserved("ASUE_Server_N2.Loader", 1) == false and Core["Arbitr.ERROR_COUNTER_S1_S2"] < 1 and reserve_flag == false then       
            if Core.isReserved("ASUE_Server_N1.Loader", 1) == false then
              switch = false
              if switch ~= old_switch then
                local DT = os.time()
                Core.addLogMsg("RESERVE    "..tostring(val))
                Core.addLogMsg("Сработало условие два основных!!!! первый в резерв!!!!!!"..tostring(os.date("%1N")))
                Core.setReserve("ASUE_Server_N1.Loader", true) 
                Core.addEvent("Сервер 1 в резерве" , 101, 1, "Сервер 1", "Сервер 1", "Сервер 1", DT, "DIAGN")
                old_switch = switch
                Core["Arbitr.FIRST_SERVER_RESERVED"] = true
 
                Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
                os.sleep(0.3)
                Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
              end
            end
          end
        end
     end
   end
 end


  Core["Arbitr.FIRST_SERVER_COUNTER"] = Core["Arbitr.FIRST_SERVER_COUNTER"] + 1
  if Core["Arbitr.FIRST_SERVER_COUNTER"] >= 10000 then
    Core["Arbitr.FIRST_SERVER_COUNTER"] = 0
  end

  Core["Arbitr.OLD_F_A_COUNTER"] = Core["Arbitr.FIRST_ARM_COUNTER"]
  Core["Arbitr.OLD_S_S_COUNTER"] = Core["Arbitr.SECOND_SERVER_COUNTER"]
 
  os.sleep(1)
end
