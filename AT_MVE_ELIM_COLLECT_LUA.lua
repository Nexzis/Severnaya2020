local prefix_struct_modbus = {"RAW_ELIM1_UP_ST",
                        "RAW_ELIM2_UP_ST"}

local update_signal = {
["READ_INPUTS_REGISTER"] = "UPDATE_READ_INPUTS_REG", 
["READ_HOLDING_REGISTER"] = "UPDATE_READ_HOLDING_REG", 
}

function update_up(name_and_prefix)
  Core[name_and_prefix[1].."."..name_and_prefix[2]] = true
  os.sleep(0.2)
  --if Core[name_and_prefix[1].."."..name_and_prefix[2]] == true then
    --Core[name_and_prefix[1].."."..name_and_prefix[2]] = false
  --end
end



cnt_up = 0
for _,prefix in ipairs(prefix_struct_modbus) do
  cnt_up=cnt_up+1
  for _,signal_up_name in pairs(update_signal) do
    Core.onTimer(cnt_up, 0.5, update_up, {prefix,signal_up_name})
    cnt_up=cnt_up+1
  end
end

Core.waitEvents()