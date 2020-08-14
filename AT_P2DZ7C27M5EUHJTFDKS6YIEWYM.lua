local counter = 0
local ping
local sw = false

while true do
  ping = os.ping("192.168.1.140", 1)
  
  if ping ~= true then 
    counter = counter + 1
  else
    counter = 0
  end

  if counter > 3 and not sw then 
    Core["SPT_943"] = 2
    sw = true
  elseif counter < 3 and sw then
    Core["SPT_943"] = 0
    sw = false
  end

  os.sleep(0.6)
end
  
  