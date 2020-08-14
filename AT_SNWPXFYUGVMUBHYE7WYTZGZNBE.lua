local old_counter_s1 = 0
local old_val_s1 = 0
local old_counter_s2 = 0
local old_val_s2 = 0
Core["ASUE_Server_N1_FAULT_A1"] = true
Core["ASUE_Server_N2_FAULT_A1"] = true

while true do
  if Core["Arbitr.FIRST_SERVER_COUNTER"] == old_val_s1 then 
    old_counter_s1 = old_counter_s1 + 1
  else
    old_counter_s1 = 0  
  end
  
  if Core["Arbitr.SECOND_SERVER_COUNTER"] == old_val_s2 then 
    old_counter_s2 = old_counter_s2 + 1 
  else
    old_counter_s2 = 0
  end

  if old_counter_s1 > 10000 then
    old_counter_s1 = 11
  end

  if old_counter_s2 > 10000 then
    old_counter_s2 = 11
  end

  if old_counter_s1 > 5  then
    Core["ASUE_Server_N1_FAULT_A1"] = false    
  else   
    Core["ASUE_Server_N1_FAULT_A1"] = true  
  end


  if old_counter_s2 > 5 then
    Core["ASUE_Server_N2_FAULT_A1"] = false
  else
    Core["ASUE_Server_N2_FAULT_A1"] = true
  end

  old_val_s1 = Core["Arbitr.FIRST_SERVER_COUNTER"]
  old_val_s2 = Core["Arbitr.SECOND_SERVER_COUNTER"]
  os.sleep(1)
  
end