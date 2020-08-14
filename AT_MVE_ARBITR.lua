old_counter_s1 = 0
old_val_s1 = 0
old_counter_s2 = 0
old_val_s2 = 0
sw1 = false
sw2 = false
e_type_s1 = 0
e_type_s2 = 0
Core["ASUE_Server_N1_FAULT_A2"] = true
Core["ASUE_Server_N2_FAULT_A2"] = true

while true do
  Core["Arbitr.FIRST_ARM_COUNTER"] = Core["Arbitr.FIRST_ARM_COUNTER"] + 1
  
  if Core["Arbitr.FIRST_ARM_COUNTER"] > 10000 then
    Core["Arbitr.FIRST_ARM_COUNTER"] = 0
  end
  
  if Core["Arbitr.FIRST_SERVER_COUNTER"] == old_val_s1 then 
    old_counter_s1 = old_counter_s1 + 1
  else
    old_counter_s1 = 0  
  end
  
  Core["Arbitr.FIRST_ARM_COUNTER"] = Core["Arbitr.FIRST_ARM_COUNTER"] + 1

  if Core["Arbitr.SECOND_SERVER_COUNTER"] == old_val_s2 then 
    old_counter_s2 = old_counter_s2 + 1 
  else
    old_counter_s2 = 0
  end

  if old_counter_s1 > 10000 then
    old_counter_s1 = 21
  end

  if old_counter_s2 > 10000 then
    old_counter_s2 = 21
  end

  if old_counter_s1 > 9 then
    if not sw1 then
      Core["ASUE_Server_N1_FAULT_A2"] = false
      sw1 = true
      --e_type_s1 = 1
      --Core.addEvent("Сервер 1 не доступен", 10000, e_type_s1, "Система диагностики серверов АСУЭ", "", "server1_fault")
    end
  end

  if  old_counter_s1 == 0 then
    if sw1 then
      Core["ASUE_Server_N1_FAULT_A2"] = true
      sw1 = false 
      --e_type_s1 = 0
      --Core.addEvent("Сервер 1 не доступен", 10000, e_type_s1, "Система диагностики серверов АСУЭ", "", "server1_fault")
    end
  end

  Core["Arbitr.FIRST_ARM_COUNTER"] = Core["Arbitr.FIRST_ARM_COUNTER"] + 1

  if old_counter_s2 > 9 then
    if not sw2 then
      Core["ASUE_Server_N2_FAULT_A2"] = false
      sw2 = true
      --e_type_s2 = 1
      --Core.addEvent("Сервер 2 не доступен", 10000, e_type_s2, "Система диагностики серверов АСУЭ", "", "server2_fault")
    end
  end

  if  old_counter_s2 == 0 then
    if sw2 then
      Core["ASUE_Server_N2_FAULT_A2"] = true
      sw2 = false 
      --e_type_s2 = 0
      --Core.addEvent("Сервер 2 не доступен", 10000, e_type_s2, "Система диагностики серверов АСУЭ", "", "server2_fault")
    end
  end

  
--if old_counter_s1 > 10  then
--  Core["ASUE_Server_N1_FAULT_A2"] = false    
--else   
--  Core["ASUE_Server_N1_FAULT_A2"] = true  
--end
--
--
--if old_counter_s2 > 10 then
--  Core["ASUE_Server_N2_FAULT_A2"] = false
--else
--  Core["ASUE_Server_N2_FAULT_A2"] = true
--end
  
  

  Core["Arbitr.FIRST_ARM_COUNTER"] = Core["Arbitr.FIRST_ARM_COUNTER"] + 1

  old_val_s1 = Core["Arbitr.FIRST_SERVER_COUNTER"]
  old_val_s2 = Core["Arbitr.SECOND_SERVER_COUNTER"]

  
  Core["Arbitr.FIRST_ARM_COUNTER"] = Core["Arbitr.FIRST_ARM_COUNTER"] + 1
  os.sleep(0.4)
end