local ip_list = { ["10.9.67.98"]  = {["name"] ="АРМ 1"              , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = "ARM_1_FAULT"},
                  ["10.9.67.99"]  = {["name"] ="АРМ 2"              , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = "ARM_2_FAULT"},
                  ["192.168.1.11"]  = {["name"] ="Сервер 1"          , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  ["192.168.1.12"]  = {["name"] ="Сервер 2"          , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.20"] = {["name"] ="ПЛК А1"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.21"] = {["name"] ="ПЛК А2"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.30"] = {["name"] ="ПЛК А1"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.31"] = {["name"] ="ПЛК А2"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.40"] = {["name"] ="ПЛК А1"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.50"] = {["name"] ="ПЛК А1"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.60"] = {["name"] ="ПЛК А1"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.70"] = {["name"] ="ПЛК А1"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                  --["192.168.1.90"] = {["name"] ="ПЛК А1"             , ["switch"] = false, ["error_counter"] = 0, ["Tag"] = ""},
                 }

for _, data_table in pairs(ip_list) do
  if data_table["Tag"] ~= "" then
    Core[data_table["Tag"]] = true
  end
end

               
local function diagn_device(ip)
  local ping = os.ping(ip, 0.4)
  
  if ping ~= true then
    ip_list[ip]["error_counter"] = ip_list[ip]["error_counter"] + 1
  else 
    ip_list[ip]["error_counter"] = 0
  end
  
  if ip_list[ip]["error_counter"] > 10000 then
    ip_list[ip]["error_counter"] = 4
  end
  
  local e_type
  if ip_list[ip]["error_counter"] > 1 and ip_list[ip]["switch"] == false then
    ip_list[ip]["switch"] = true
    e_type = 1
    Core.addEvent(ip_list[ip]["name"].." недоступен", 10000, e_type, "Система диагностики устройств", "", ip_list[ip]["name"].."диагностика")
    if ip_list[ip]["Tag"] ~= "" then
      Core[ip_list[ip]["Tag"]] = false
    end
  elseif ip_list[ip]["error_counter"] < 1 and ip_list[ip]["switch"] == true then
    ip_list[ip]["switch"] = false
    e_type = 0
    Core.addEvent(ip_list[ip]["name"].." недоступен", 10000, e_type, "Система диагностики устройств", "", ip_list[ip]["name"].."диагностика")
    if ip_list[ip]["Tag"] ~= "" then
      Core[ip_list[ip]["Tag"]] = true
    end
  end    
end
 

while true do
  for ip, name in pairs(ip_list) do
    if Core["@RESERVE"] or Core["@RESERVED"] then
      os.sleep(2.5)
    else
     diagn_device(ip)
     os.sleep(1)
    end
  end
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  