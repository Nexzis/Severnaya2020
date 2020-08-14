local start_date = 1451606410
local finish_date = 31643326

local function script_path()
  local str = lfs.currentdir() 
  --print(str:match("(.*[/\\])"))
  return str:match("(.*[/\\])")  
end

function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end

local kvartal_symbol = {"I","II","III", "IV"}


local function lines_from(file)
  if not file_exists(file) then return {} end
  local lines = {}
  
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
    
  local data_table = {}
  local size_table = 0
  for y = 1, #lines, 2 do
    data_table[lines[y]] = lines[y + 1]  
    size_table =  size_table + 1
    end
  return data_table, size_table
end

function calc_year()
  local old_year_table = lines_from(script_path().."ARCHIVE_VZLET\\TEMP_YEAR_ARCH.txt")
  local current_data_table, size_current_data_table = lines_from(script_path().."ARCHIVE_VZLET\\TEMP_MONTH_ARCH.txt")
  --local date_for_me_finish = os.date("*t",(start_date + finish_date)) 
  --Core.addLogMsg(tostring(size_current_data_table))
  local year_count = math.ceil(size_current_data_table / 12) + 1
  for y = 1, year_count, 1 do
    year_summ = 0
    for DT, VALUE in pairs(current_data_table) do 
    -- Добавляем в файла только те данные которых нет
      local date_num = tonumber(DT)
      local date_for_me = os.date("*t", date_num + os.tz())   
    
      if date_num > start_date  and  date_num < (start_date + finish_date) then
        --Core.addLogMsg(tostring(DT))
        --Core.addLogMsg(tostring(date_num))
        --Core.addLogMsg(tostring(start_date + finish_date))
        Core.addLogMsg("I AM "..date_for_me["year"]..date_for_me["month"]..date_for_me["day"])
        year_summ = year_summ + VALUE
      end
    end
    
    if old_year_table[tostring(2016 + (y - 1))] == nil then
      local processed_file_year = io.open(script_path().."ARCHIVE_VZLET\\TEMP_YEAR_ARCH.txt","a")
      processed_file_year:write(tostring(2016 + (y - 1)).."\n")
      processed_file_year:write(year_summ.."\n")
      processed_file_year:flush()
      processed_file_year:close()
    end
    
    start_date = start_date + finish_date
    Core.addLogMsg("IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII")
  end
end

function calc_kvartal()
--  if Core["VZLET_A2.FINISHED_MONTH"] == true then
    local old_kvartal_table = lines_from(script_path().."ARCHIVE_VZLET\\TEMP_KVARTAL_ARCH.txt")
    local current_data_table, size_current_data_table = lines_from(script_path().."ARCHIVE_VZLET\\TEMP_YEAR_ARCH.txt")
    local years = {}
    
    for DT, VALUE in pairs(current_data_table) do 
      table.insert(years, DT)
    end
    
    current_data_table, size_current_data_table = lines_from(script_path().."ARCHIVE_VZLET\\TEMP_MONTH_ARCH.txt")
    
    for y = 1, #years, 1 do
      local change_month_year = {}
      for DT, VALUE in pairs(current_data_table) do
        local date_num = tonumber(DT)
        if os.time({year = tonumber(years[y]), day = 1, month = 1}) < date_num and date_num < (os.time({year = tonumber(years[y]), day = 1, month = 1}) + 31556926) then
          change_month_year[DT] = VALUE
          Core.addLogMsg("ddd")
        end
      end

      local kvartal_num = 1
      for k = 1, 12, 3 do
        local kvartal = {}
        for dt, value in pairs(change_month_year) do          
          if tonumber(dt) > os.time({year = tonumber(years[y]), day = 1, month = k}) and tonumber(dt) < os.time({year = tonumber(years[y]), day = 1, month = k + 3}) then
            table.insert(kvartal, value)
          end
        end

        local kvartal_val = 0
        for j = 1, 3, 1 do
          if kvartal[j] ~= nil then
            kvartal_val = kvartal_val + kvartal[j]
          end
        end

        if old_kvartal_table[years[y].."_"..kvartal_symbol[kvartal_num]] == nil then
          local processed_file_year = io.open(script_path().."ARCHIVE_VZLET\\TEMP_KVARTAL_ARCH.txt","a")
          processed_file_year:write(years[y].."_"..kvartal_symbol[kvartal_num].."\n")
          processed_file_year:write(kvartal_val.."\n")
          processed_file_year:flush()
          processed_file_year:close()
        end
        kvartal_num = kvartal_num + 1
      end
    end
--  end
end
calc_year()
calc_kvartal()

--send_file()
--Core.onExtChange({"SEND_DATE_VAR"}, send_file)
Core.onTimer(1, 86000, calc_year)
Core.onTimer(2, 80000, calc_kvartal)
Core.waitEvents()