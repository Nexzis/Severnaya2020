local prefix = {"RAW_HOBBIT1_",
          "RAW_HOBBIT2_"}


local update_signal = {
["READ_INPUTS_REGISTER"] = "UPDATE",
}

function update_up(name_and_prefix)
  Core[name_and_prefix[1]..name_and_prefix[2]] = true
  os.sleep(0.2)
  --if Core[name_and_prefix[1]..name_and_prefix[2]] == true then
    --Core[name_and_prefix[1]..name_and_prefix[2]] = false
  --end
end



cnt_up = 0
for _,prefix_s in ipairs(prefix) do
  cnt_up=cnt_up+1
  for _,signal_up_name in pairs(update_signal) do
    Core.onTimer(cnt_up, 1.5, update_up, {prefix_s,signal_up_name})
  end
end


Core.waitEvents()