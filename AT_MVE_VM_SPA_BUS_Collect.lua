local device_prefix = {"SPAC_VV1_803.", "SPAC_VV2_803.", "SPAC_SV_803."}


local update_signal = {
"RAW_SPAC_L2210_READ_REG_COMM_UPDATE", 
"RAW_SPAC_L2210_READ_INPUT_AND_OTPUT_UPDATE",
"RAW_SPAC_4D28_READ_REG_COMM_UPDATE", 
"RAW_SPAC_4D28_READ_INPUT_AND_OTPUT_UPDATE"
}

local function update_up(name)
  Core[name] = true
end

--[[function update_down(name)
  if Core[name] == true then
    Core[name] = false
  end
end--]]

local cnt_up = 0
for i = 1, #device_prefix, 1 do
  for j = 1, #update_signal, 1 do
    cnt_up=cnt_up+1
    --Core.onTimer(cnt_up, 0.5, update_up, device_prefix[i]..update_signal[j])
  end
end
--[[cnt_down = cnt_up+1
for _,signals in pairs(update_signal) do
  cnt_down=cnt_down+1
  Core.onTimer(cnt_down, 2, update_down, signals)
end--]]

Core.waitEvents()