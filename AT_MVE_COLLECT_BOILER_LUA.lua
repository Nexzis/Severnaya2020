local prefix_struct_modbus = {"RAW_BOILER_UP_ST",
                        "RAW_PUMPS_UP_ST"}


local update_signal = {"UPDATE_READ_HOLDING_REG",
                      "UPDATE_READ_COILS_STATUS",
                      "UPDATE_READ_INPUTS_REG"}

local function update_up(name_and_prefix)
  Core[name_and_prefix[1].."."..name_and_prefix[2]] = true
  os.sleep(0.2)
  --if Core[name_and_prefix[1].."."..name_and_prefix[2]] == true then
    --Core[name_and_prefix[1].."."..name_and_prefix[2]] = false
  --end
end



cnt_up = 0
for i=1, #prefix_struct_modbus, 1 do  
  for j=1, #update_signal, 1 do
    Core.onTimer(cnt_up, 1, update_up, {prefix_struct_modbus[i],update_signal[j]})
    cnt_up=cnt_up+1
  end
end



Core.waitEvents()