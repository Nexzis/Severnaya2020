local list_table_name = {"DYNAMIC_TABLE_TE_ARM2."}

-----------------------------------------------------------
-- based on http://www.ethernut.de/api/gmtime_8c_source.html
-- Код для пересчёта времени timestamp в DT
------------------------------------------------------------
local floor=math.floor

local DSEC=24*60*60 -- secs in a day
local YSEC=365*DSEC -- secs in a year
local LSEC=YSEC+DSEC    -- secs in a leap year
local FSEC=4*YSEC+DSEC  -- secs in a 4-year interval
local BASE_DOW=4    -- 1970-01-01 was a Thursday
local BASE_YEAR=1970    -- 1970 is the base year

local _days={
    -1, 30, 58, 89, 119, 150, 180, 211, 242, 272, 303, 333, 364
}
local _lpdays={}
for i=1,2  do _lpdays[i]=_days[i]   end
for i=3,13 do _lpdays[i]=_days[i]+1 end

function gmtime(t)
  print(os.date("!\n%c\t%j",t),t)
    local y,j,m,d,w,h,n,s
    local mdays=_days
    s=t
    -- First calculate the number of four-year-interval, so calculation
    -- of leap year will be simple. Btw, because 2000 IS a leap year and
    -- 2100 is out of range, this formula is so simple.
    y=floor(s/FSEC)
    s=s-y*FSEC
    y=y*4+BASE_YEAR         -- 1970, 1974, 1978, ...
    if s>=YSEC then
        y=y+1           -- 1971, 1975, 1979,...
        s=s-YSEC
        if s>=YSEC then
            y=y+1       -- 1972, 1976, 1980,... (leap years!)
            s=s-YSEC
            if s>=LSEC then
                y=y+1   -- 1971, 1975, 1979,...
                s=s-LSEC
            else        -- leap year
                mdays=_lpdays
            end
        end
    end
    j=floor(s/DSEC)
    s=s-j*DSEC
    local m=1
    while mdays[m]<j do m=m+1 end
    m=m-1
    local d=j-mdays[m]
    -- Calculate day of week. Sunday is 0
    w=(floor(t/DSEC)+BASE_DOW)%7
    -- Calculate the time of day from the remaining seconds
    h=floor(s/3600)
    s=s-h*3600
    n=floor(s/60)
    s=s-n*60
    print("y","j","m","d","w","h","n","s")
    print(y,j+1,m,d,w,h,n,s)
    return {["year"] = y, ["month"] = m, ["day"] = d, ["hour"] = h, ["min"] = n, ["sec"] = s}
end
----------------------------------------------------------------------------------------------------------------------------------------------------



-----------------------------------------------------------------------------------------------------------------------------------------------------
-- Функция для определения текущей директории, взято c stackoverflow.com
-----------------------------------------------------------------------------------------------------------------------------------------------------
local function script_path()
  local str = lfs.currentdir() 
  --print(str:match("(.*[/\\])"))
  return str:match("(.*[/\\])")  
end
 
----------------------------------------------------------------------------------
function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
local function add_rows(table_name)
  for y = 1, 4, 1 do
    -- Посылаем команду добавить строку в таблицу
    Core[table_name.."ADD_ROW"] = true
    -- Ждём ошибку или успех операции
    while Core[table_name.."ROW_ADDED"] == false and Core[table_name.."ERROR"] == false do os.sleep(0.1) end
    if Core[table_name.."ERROR"] == true  then
      Core.addLogMsg("Ошибка при добавлении строк, зовите программиста")
      Core[table_name.."PROCESSING"] = "Ошибка редактирования таблицы"
      return 0
    elseif Core[table_name.."ROW_ADDED"] == true then     
      Core[table_name.."RESET_ROW_ADD"] = true
      Core[table_name.."ADD_ROW"] = false
      --Core[table_name.."HEIGHT"] = Core[table_name.."HEIGHT"] + 5
      while Core[table_name.."ROW_ADDED"] == true do os.sleep(0.05) end
      Core[table_name.."RESET_ROW_ADD"] = false
    end
  end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
local function lines_from(file)
  if not file_exists(file) then Core.addLogMsg("НЕТ ФАЙЛОВ") return {} end
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
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
local function set_data(table_name)
  Core[table_name.."SET_DATA"] = true
  while Core[table_name.."ERROR"] == false and Core[table_name.."SET_DONE"] == false do os.sleep(0.03) end

  if Core[table_name.."ERROR"] == true then
    Core.addLogMsg("Ошибка при добавлении значения")
    Core[table_name.."PROCESSING"] = "Ошибка выборки данных"
    return 0
  elseif Core[table_name.."SET_DONE"] == true then
    Core[table_name.."RESET_SET"] = true
    Core[table_name.."SET_DATA"] = false
    while Core[table_name.."SET_DONE"] == true do os.sleep(0.03) end
    Core[table_name.."RESET_SET"] = false
  end
end
------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------
local function find_into_year(table_name)
  local current_dir = script_path()
  local current_data_table = lines_from(current_dir.."ARCHIVE_VZLET\\YearArchive_1.txt")
  
  Core[table_name.."COL_INT"] = 0
  Core[table_name.."ROW_INT"] = 0
  Core[table_name.."CELL_VALUE"] = Core[table_name.."CHANGE_YEAR"] 
  set_data(table_name)
  
  Core[table_name.."COL_INT"] = 1
  Core[table_name.."ROW_INT"] = 0
  if current_data_table[Core[table_name.."CHANGE_YEAR"]] ~= nil then
    Core[table_name.."CELL_VALUE"] = current_data_table[Core[table_name.."CHANGE_YEAR"]]
    set_data(table_name)
  else
    Core[table_name.."CELL_VALUE"] = "НЕТ ДАННЫХ"
    set_data(table_name)
  end
  
  current_data_table = lines_from(current_dir.."ARCHIVE_VZLET\\YearArchive_2.txt")
  Core[table_name.."COL_INT"] = 2
  Core[table_name.."ROW_INT"] = 0
  if current_data_table[Core[table_name.."CHANGE_YEAR"]] ~= nil then
    Core[table_name.."CELL_VALUE"] = current_data_table[Core[table_name.."CHANGE_YEAR"]]
    set_data(table_name)
  else
    Core[table_name.."CELL_VALUE"] = "НЕТ ДАННЫХ"
    set_data(table_name)
  end
  Core[table_name.."PROCESSING"] = "Успешно"
end
----------------------------------------------------------------------------------------------------

---------------------------------------------
local kvartal_symbol = {"_I","_II","_III", "_IV"}
---------------------------------------------

-------------------------------------------------------------------------------------------------
local string_parameters = {"Средний","Максимум","Минимум","Сумма"}
-------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
local function find_into_kvartal(table_name)
  local current_dir = script_path()
  local current_data_table = lines_from(current_dir.."ARCHIVE_VZLET\\KvartalArchive_1.txt")
  
  for w = 0, 3, 1 do
    Core[table_name.."COL_INT"] = 0
    Core[table_name.."ROW_INT"] = w
    Core[table_name.."CELL_VALUE"] = Core[table_name.."CHANGE_YEAR"]..kvartal_symbol[w+1]
    set_data(table_name)
  end


  for j = 0, 3, 1 do
    Core[table_name.."COL_INT"] = 1
    Core[table_name.."ROW_INT"] = j
    if current_data_table[Core[table_name.."CHANGE_YEAR"]..kvartal_symbol[j+1]] ~= nil then
      Core[table_name.."CELL_VALUE"] = current_data_table[Core[table_name.."CHANGE_YEAR"]..kvartal_symbol[j+1]]
      set_data(table_name)
    else
      Core[table_name.."CELL_VALUE"] = "НЕТ ДАННЫХ"
      set_data(table_name)
    end
  end 

  current_data_table = lines_from(current_dir.."ARCHIVE_VZLET\\KvartalArchive_2.txt")
  for j = 0, 3, 1 do
    Core[table_name.."COL_INT"] = 2
    Core[table_name.."ROW_INT"] = j
    if current_data_table[Core[table_name.."CHANGE_YEAR"]..kvartal_symbol[j+1]] ~= nil then
      Core[table_name.."CELL_VALUE"] = current_data_table[Core[table_name.."CHANGE_YEAR"]..kvartal_symbol[j+1]]
      set_data(table_name)
    else
      Core[table_name.."CELL_VALUE"] = "НЕТ ДАННЫХ"
      set_data(table_name)
    end
  end 
  Core[table_name.."PROCESSING"] = "Успешно"
end
-----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
local function choice_file(table_name)
  local current_dir = script_path()
  if Core[table_name.."SIGN_OF_MONTH"] then return current_dir.."ARCHIVE_VZLET\\MonthArchive" end
  if Core[table_name.."SIGN_OF_DAY"] then return current_dir.."ARCHIVE_VZLET\\DateArchive" end
  if Core[table_name.."SIGN_OF_HOUR"] then return current_dir.."ARCHIVE_VZLET\\HourArchive" end
  if Core[table_name.."SIGN_OF_YEAR"] then find_into_year(table_name) return 42 end
  if Core[table_name.."SIGN_OF_KVARTAL"] then find_into_kvartal(table_name) return 42 end
end 

local function choice_second_rate(table_name)
  if Core[table_name.."SIGN_OF_MONTH"] then return 2629743 end
  if Core[table_name.."SIGN_OF_DAY"] then return 86400 end
  if Core[table_name.."SIGN_OF_HOUR"] then return 3600 end
end 
  

------------------------------------------------------------------------------------------------------
local function no_data(table_name, start_number)
  Core[table_name.."PROCESSING"] = "Ошибка выборки данных"
  Core[table_name.."ERROR_TEXT"] = "Архив не содержит всех данных\n указанного диапазона"
  if start_number == nil then
    start_number = 0
  end
  
  for y = start_number, Core[table_name.."ROW_COUNT"] - 1 , 1 do
   Core[table_name.."ROW_INT"] = y
   Core[table_name.."CELL_VALUE"] = "Нет данных"
   set_data(table_name)
  end
end
       

-----------------------------------------------------------------------------------------------
-- Поиск по заданному диапазону
-----------------------------------------------------------------------------------------------
local function find_into_arch(table_name)
  if Core[table_name.."FIND_INTO_ARCHIVE"] == true then   
    local processed_file_path = choice_file(table_name)
    --Core.addLogMsg(processed_file_path)
    if processed_file_path == 42 then
      Core[table_name.."FIND_INTO_ARCHIVE"] = false
      return 0
    end

    if file_exists(processed_file_path.."_1.txt") then
      Core[table_name.."PROCESSING"] = "Идёт выборка данных"
      Core.setMessage("")
	  local second_rate = choice_second_rate(table_name)
      local date = Core[table_name.."START_DATE"]
      local date_interval = date + (second_rate * (Core[table_name.."ROW_COUNT"]))
      Core.addLogMsg(tostring(date))
      Core.addLogMsg(tostring(date_interval))
      local current_data_table = lines_from(processed_file_path.."_1.txt")
      --  for DT, VALUE in pairs(current_data_table) do
      --    print(DT)
      --    print(VALUE)
      --  end
       
      local find_date = {}
          
      for DT, VALUE in pairs(current_data_table) do 
      -- Добавляем в файла только те данные которых нет
        local date_num = tonumber(DT)
       
        if date_num > date and  date_num < date_interval then
          --Core.addLogMsg(tostring(DT))
          find_date[DT] = VALUE
        end
      end
      
      local tkeys = {}
      -- populate the table that holds the keys
      for k in pairs(find_date) do table.insert(tkeys, k) end
      -- sort the keys
      
      if #tkeys == 0 then
	    Core[table_name.."COL_INT"] = 0
		os.sleep(0.5)
        no_data(table_name)
	    Core[table_name.."COL_INT"] = 1
		os.sleep(0.5)
		no_data(table_name)
        Core[table_name.."COL_INT"] = 2
		os.sleep(0.5)
		no_data(table_name)
		Core[table_name.."FIND_INTO_ARCHIVE"] = false
		return 0
      end
    
      -- use the keys to retrieve the values in the sorted order
      table.sort(tkeys)    

      --Core.addLogMsg(tostring(#tkeys))
      for m = 0, #tkeys - 1, 1 do
        Core[table_name.."COL_INT"] = 0
        Core[table_name.."ROW_INT"] = m
        --Core.addLogMsg(tostring(Core[table_name.."ROW_INT"]))
        local human_data = gmtime(tkeys[m + 1] + 0.0) 
        --Core.addLogMsg(human_data["day"].."."..human_data["month"].."."..human_data["day"].." "..human_data["hour"]..":"..human_data["min"])
        Core[table_name.."CELL_VALUE"] = human_data["day"].."."..human_data["month"].."."..human_data["year"].." "..human_data["hour"]..":"..human_data["min"]   
        set_data(table_name)
      end
      
      local total = 0.0
      local maximum = 0.0
      local minimum = tonumber(find_date[tkeys[1]])
      for w = 0, #tkeys - 1, 1 do
        Core[table_name.."COL_INT"] = 1
        Core[table_name.."ROW_INT"] = w
        Core[table_name.."CELL_VALUE"] = tostring(find_date[tkeys[w + 1]]) 
        total = total + tonumber(find_date[tkeys[w + 1]])

        if tonumber(find_date[tkeys[w + 1]]) > maximum then
           maximum = tonumber(find_date[tkeys[w + 1]])
        end
        if tonumber(find_date[tkeys[w + 1]]) < minimum then
           minimum = tonumber(find_date[tkeys[w + 1]])
        end
        set_data(table_name)
      end
      local average = total / #tkeys
      local counted_val = {average, maximum, minimum, total}
     
      if #tkeys < Core[table_name.."ROW_COUNT"] then
	    Core[table_name.."COL_INT"] = 0
		os.sleep(0.5)
        no_data(table_name, #tkeys)
	    Core[table_name.."COL_INT"] = 1
		os.sleep(0.5)
		no_data(table_name, #tkeys)
		Core[table_name.."FIND_INTO_ARCHIVE"] = false
        return 0
      end

      add_rows(table_name)
      local cycle_count = 1
      local final_count_val = #tkeys + 3
      for r = #tkeys, final_count_val, 1 do
        Core[table_name.."COL_INT"] = 0
        Core[table_name.."ROW_INT"] = r
        Core[table_name.."CELL_VALUE"] =  string_parameters[cycle_count]
        set_data(table_name)
        cycle_count = cycle_count + 1
      end
      cycle_count = 1
      for o = #tkeys, final_count_val, 1 do
        Core[table_name.."COL_INT"] = 1
        Core[table_name.."ROW_INT"] = o
        Core[table_name.."CELL_VALUE"] = string.format('%.2f',counted_val[cycle_count])
        set_data(table_name)
        cycle_count = cycle_count + 1
      end
-----------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
      current_data_table = lines_from(processed_file_path.."_2.txt")
      find_date = {}
	  
      for DT, VALUE in pairs(current_data_table) do 
      -- Добавляем в файла только те данные которых нет
        local date_num = tonumber(DT)
       
        if date_num > date and  date_num < date_interval then
          --Core.addLogMsg(tostring(DT))
          find_date[DT] = VALUE
        end
      end
    
    
      tkeys = {}
    -- populate the table that holds the keys
      for k in pairs(find_date) do table.insert(tkeys, k) end
    -- sort the keys

      table.sort(tkeys)
      total = 0.0
      maximum = 0.0
      minimum = tonumber(find_date[tkeys[1]])
      for w = 0, #tkeys - 1, 1 do
        Core[table_name.."COL_INT"] = 2
        Core[table_name.."ROW_INT"] = w
        Core[table_name.."CELL_VALUE"] = tostring(find_date[tkeys[w + 1]]) 
        total = total + tonumber(find_date[tkeys[w + 1]])

        if tonumber(find_date[tkeys[w + 1]]) > maximum then
           maximum = tonumber(find_date[tkeys[w + 1]])
        end
        if tonumber(find_date[tkeys[w + 1]]) < minimum then
           minimum = tonumber(find_date[tkeys[w + 1]])
        end
        set_data(table_name)
      end
	  
      average = total / #tkeys
      counted_val = {average, maximum, minimum, total}
     
      if #tkeys + 4 < Core[table_name.."ROW_COUNT"] then
	    Core[table_name.."COL_INT"] = 0
		os.sleep(0.5)
        no_data(table_name, #tkeys)
	    Core[table_name.."COL_INT"] = 1
		os.sleep(0.5)
		no_data(table_name, #tkeys)
        Core[table_name.."COL_INT"] = 2
		os.sleep(0.5)
		no_data(table_name, #tkeys)
		Core[table_name.."FIND_INTO_ARCHIVE"] = false
		return 0
      end

      final_count_val = #tkeys + 3
      cycle_count = 1
      for o = #tkeys, final_count_val, 1 do
        Core[table_name.."COL_INT"] = 2
        Core[table_name.."ROW_INT"] = o
        Core[table_name.."CELL_VALUE"] = string.format('%.2f',counted_val[cycle_count])
        set_data(table_name)
        cycle_count = cycle_count + 1
      end
-----------------------------------------------------------------------------------
    else
      Core.setMessage("Запрашиваемый файл по пути "..tostring(file).." не найден")
      Core.addLogMsg("Запрашиваемый файл по пути "..file.." не найден")
      Core[table_name.."PROCESSING"] = "Ошибка выборки данных"
      Core[table_name.."ERROR_TEXT"] = "Запрашиваемый файл по пути: \n"..file.." не найден"
	  Core[table_name.."FIND_INTO_ARCHIVE"] = false
      return 0
    end
  end

  Core[table_name.."FIND_INTO_ARCHIVE"] = false
  Core[table_name.."PROCESSING"] = "Успешно"
end
------------------------------------------------------------------------------------

--find_into_hour_arch()
for t = 1, #list_table_name, 1 do
  Core.onExtChange({list_table_name[t].."FIND_INTO_ARCHIVE"}, find_into_arch, list_table_name[t])	
end

Core.waitEvents()
