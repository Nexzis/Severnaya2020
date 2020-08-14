
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
  for y = 1, #lines, 2 do
    data_table[lines[y]] = lines[y + 1]  
    end
  return data_table
end



 

  ---------------------------------------------------------------------------------------------
local function write_to_file()
  ---------------------------------------------------------------------------------------------
  -- Опрос часовых архивов прибора ВЗЛЁТ
  ---------------------------------------------------------------------------------------------
  local current_dir = script_path()
  Core.addLogMsg("Вызвана")
  
  local get_result, data = Core.getData("ARM_2.SYNH_FILES")
  --Core.addLogMsg(data)
  local file_name =  string.match(data, ".+.txt")
  local string_for_write = string.gsub(data, file_name.."\n", "")
  --Core.addLogMsg(file_name)
  --Core.addLogMsg(string_for_write)
  local processed_file_name = "ARCHIVE_VZLET\\"..file_name
  local processed_file_path = current_dir..processed_file_name
  local processed_file = io.open(processed_file_path,"w")
  processed_file:write(string_for_write)

  processed_file:flush()
  processed_file:close()
  Core["DATA_FLAG"] = false
end


Core.onDataRecv(write_to_file)
Core.waitEvents()