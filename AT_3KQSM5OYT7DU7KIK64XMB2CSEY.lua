----------------------------------------------------------------------------------------------------------------------------------------------------
-- Функция для определения текущей директории, взято c stackoverflow.com, используется 
-- библиотека LUA - LFS
----------------------------------------------------------------------------------------------------------------------------------------------------
local function script_path()
  local str = lfs.currentdir() 
  --print(str:match("(.*[/\\])"))
  return str:match("(.*[/\\])")  
end
----------------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------------
-- Функция для определения текущей директории, взято c stackoverflow.com
-----------------------------------------------------------------------------------------------------------------------------------------------------
function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end
------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
-- взято с https://stackoverflow.com/questions/11201262/how-to-read-data-from-a-file-in-lua
-- get all lines from a file, returns an empty 
-- list/table if the file does not exist
------------------------------------------------------------------------------------------------------------------------------------------------------
local function lines_from(file)
  if not file_exists(file) then return {} end
  local lines = {}
  
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
    
  local data_table = {}
  for y = 1, #lines, 1 do
    data_table[y] = lines[y]  
    end
  return data_table
end
---------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
--  Синхронизация файлов
---------------------------------------------------------------------------------------------
local function send_to_sync(file_name)
  local current_dir = script_path()
  local processed_file_name = "ARCHIVE_VZLET\\"..file_name
  local processed_file_path = current_dir..processed_file_name
  Core.addLogMsg(processed_file_path)
  local processed_file = io.open(processed_file_path,"r")
  local current_data_string = processed_file:read("*a")
  current_data_string = file_name.."\n"..current_data_string
  Core.addLogMsg(current_data_string)
  processed_file:flush()
  processed_file:close()
  Core.sendData("ARM_1.SYNH_FILES", current_data_string)
end

local file_name_table = {"DateArchive_1.txt","HourArchive_1.txt","KvartalArchive_1.txt","MonthArchive_1.txt",
                         "TEMP_DAY_ARCH.txt", "TEMP_HOUR_ARCH.txt", "TEMP_KVARTAL_ARCH.txt",
                         "TEMP_MONTH_ARCH.txt", "TEMP_YEAR_ARCH.txt", "YearArchive_1.txt",
                         "DateArchive_2.txt","HourArchive_2.txt","KvartalArchive_2.txt","MonthArchive_2.txt",
                         "YearArchive_2.txt"}

local function send_file()
 -- if Core["SEND_DATE_VAR"] == true then
    for q = 1, #file_name_table, 1 do
      --os.sleep(10)
      send_to_sync(file_name_table[q])
      Core["DATA_FLAG"] = true
      local counter = 0 
      while Core["DATA_FLAG"] == true and counter < 120 do
        os.sleep(1)
        counter = counter + 1
      end
    end
  -- end
  --Core["SEND_DATE_VAR"] = false
end

os.sleep(40)
send_file()
--Core.onExtChange({"SEND_DATE_VAR"}, send_file)
Core.onTimer(1, 7200, send_file)
Core.waitEvents()