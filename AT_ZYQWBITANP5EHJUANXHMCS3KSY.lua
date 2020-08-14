local function script_path()
  local str = lfs.currentdir() 
  --print(str:match("(.*[/\\])"))
  return str:match("(.*[/\\])")  
end
 
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- Функция для определения текущей директории, взято c stackoverflow.com
-----------------------------------------------------------------------------------------------------------------------------------------------------
function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end
------------------------------------------------------------------------------------------------------------------------------------------------------

local function lines_from(file)
  if not file_exists(file) then return {} end
  local lines = {}
  
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
    
  local data_table = {}
  for y = 1, #lines, 2 do
    data_table[lines[y]] = lines[y + 1]  
    end
  return data_table
end

local function find_into_month_arch()
  if Core["ArchiveSelectButton.MonthButtonPressed"] == true and Core["DateSelectDateEditor.O_CHANGED"] == true then
    local current_dir = script_path()
    local processed_file_name = "ARCHIVE_VZLET\\TEMP_MONTH_ARCH.txt"
    local processed_file_path = current_dir..processed_file_name
    Core.addLogMsg(processed_file_path)
    
    local date = Core["DateSelectDateEditor.O_VALUE"] - 2
    local date_interval = date + 2629743 * 12
      
    local current_data_table = lines_from(processed_file_path)
    --  for DT, VALUE in pairs(current_data_table) do
    --    print(DT)
    --    print(VALUE)
    --  end
     
    local find_date = {}
        
    for DT, VALUE in pairs(current_data_table) do 
    -- Добавляем в файла только те данные которых нет
      local date_num = tonumber(DT)
     
      if date_num > date and  date_num <= date_interval then
        find_date[DT] = VALUE
      end
    end
    
    local tkeys = {}
    -- populate the table that holds the keys
    for k in pairs(find_date) do table.insert(tkeys, k) end
    
    if #tkeys > 10 then
    -- sort the keys
      table.sort(tkeys)
    -- use the keys to retrieve the values in the sorted order
      local counter = 0
      for _, k in ipairs(tkeys) do 
    --print(k, find_date[k]) end
        Core["Value[5].TextValueColumn["..counter.."]"] = tostring(find_date[k])
        counter = counter + 1
      end
    else
      for y = 1, 12, 1 do
        Core["Value[5].TextValueColumn["..y.."]"] = "Нет данных"
      end
    end
  end
end

local function find_into_day_arch()
  if Core["ArchiveSelectButton.DateButtonPressed"] == true and Core["DateSelectDateEditor.O_CHANGED"] == true then
    local current_dir = script_path()
    local processed_file_name = "ARCHIVE_VZLET\\TEMP_DAY_ARCH.txt"
    local processed_file_path = current_dir..processed_file_name
    Core.addLogMsg(processed_file_path)
    
    local date = Core["DateSelectDateEditor.O_VALUE"] - 2
    local date_interval = date + 86400 * 31
      
    local current_data_table = lines_from(processed_file_path)
    --  for DT, VALUE in pairs(current_data_table) do
    --    print(DT)
    --    print(VALUE)
    --  end
     
    local find_date = {}
        
    for DT, VALUE in pairs(current_data_table) do 
    -- Добавляем в файла только те данные которых нет
      local date_num = tonumber(DT)
     
      if date_num > date and  date_num <= date_interval then
        find_date[DT] = VALUE
      end
    end
    
    
    local tkeys = {}
    -- populate the table that holds the keys
    for k in pairs(find_date) do table.insert(tkeys, k) end
    
    if #tkeys > 28 then
      -- sort the keys
      table.sort(tkeys)
      -- use the keys to retrieve the values in the sorted order
      local counter = 0
      for _, k in ipairs(tkeys) do 
--      print(k, find_date[k]) end
        Core["Value[5].TextValueColumn["..counter.."]"] = tostring(find_date[k])
        counter = counter + 1
      end 
    else
      for y = 1, 31, 1 do
        Core["Value[5].TextValueColumn["..y.."]"] = "Нет данных"
      end
    end
  end
end

local function find_into_hour_arch()
  if Core["ArchiveSelectButton.HourButtonPressed"] == true and Core["DateSelectDateEditor.O_CHANGED"] == true then
    local current_dir = script_path()
    local processed_file_name = "ARCHIVE_VZLET\\TEMP_HOUR_ARCH.txt"
    local processed_file_path = current_dir..processed_file_name
    Core.addLogMsg(processed_file_path)
    
    local date = Core["DateSelectDateEditor.O_VALUE"] - 2
    local date_interval = date + 3600 * 24
    Core.addLogMsg(tostring(date)) 
    Core.addLogMsg(tostring(date_interval)) 
    local current_data_table = lines_from(processed_file_path)
    --  for DT, VALUE in pairs(current_data_table) do
    --    print(DT)
    --    print(VALUE)
    --  end
     
    local find_date = {}
        
    for DT, VALUE in pairs(current_data_table) do 
    -- Добавляем в файла только те данные которых нет
      local date_num = tonumber(DT)
     
      if date_num > date and  date_num <= date_interval then
        Core.addLogMsg(tostring(DT))
        find_date[DT] = VALUE
      end
    end
    
    local tkeys = {}
    -- populate the table that holds the keys
    for k in pairs(find_date) do table.insert(tkeys, k) end
    -- sort the keys
    
    if #tkeys > 22 then
      table.sort(tkeys)
      -- use the keys to retrieve the values in the sorted order
      local counter = 0
    
      for _, k in ipairs(tkeys) do 
--      print(k, find_date[k]) end
        Core["Value[5].TextValueColumn["..counter.."]"] = tostring(find_date[k])
        counter = counter + 1
      end
    else
      for y = 0, 23, 1 do
        Core["Value[5].TextValueColumn["..y.."]"] = "Нет данных"
      end
    end
  end
end

find_into_hour_arch()

Core.onExtChange({"DateSelectDateEditor.O_CHANGED"}, find_into_hour_arch)	
Core.onExtChange({"DateSelectDateEditor.O_CHANGED"}, find_into_day_arch)		
Core.onExtChange({"DateSelectDateEditor.O_CHANGED"}, find_into_month_arch)	

Core.waitEvents()
