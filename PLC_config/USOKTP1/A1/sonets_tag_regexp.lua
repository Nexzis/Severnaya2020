is_column = true

function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*[/\\])")
end


current_dir = script_path() -- код для получения текущей дериктории в незавизимости от уставленой библиотеки lfs или 
file_path = "\\" -- если файл находиться в подпапке либо в директориях ниже или выше, текущего нахождения файла с луа кодом, то вносим в него изменения
source_file_name = "untitled.txt" -- имя файла с которого производится выборка
processed_file_name = "untitled11.txt"
source_file_path = current_dir..file_path..source_file_name -- полный путь исходного файла на парсинг
processed_file_path = current_dir..file_path..processed_file_name


source_file = io.open(source_file_path,"r") -- открытие файла с исходным текстом
processed_file = io.open(processed_file_path,"w+") -- открытие файла для записи

source_string_array = {} -- массив для помещения строк из исходного файла
processed_string_array = {} -- массив для помежщения выбраных строк

for line in source_file:lines() do table.insert(source_string_array, tostring(line))end -- записываем каждую строку файла в отдельный элемент массива

required_tags_for_regexp = { -- массив для заполнения тегами того что нужно вытащить в новый файл или отдельную таблицу
  "InvFlag="
  }

if  not is_column then
  for i = 1, #source_string_array do  -- идём по строкам в массиве, полученных из файла
    concat_match_res = "" -- строка полученная путём результата поиска тегов по файлу
    match_result = {} -- найденый результат
    for j = 1, #required_tags_for_regexp do -- проход по строке для поиска тегов из массива
        match_result[j] = string.match(source_string_array[i], "("..required_tags_for_regexp[j].."\"(.-)\")") 
      if match_result[j] ~= nil then 
        concat_match_res = concat_match_res..match_result[j].." "
      end
    end
    if concat_match_res ~= "" then
      processed_file:write(concat_match_res.."\n")
    end
  end
end

if is_column then
  for i = 1, #required_tags_for_regexp do  -- идём по строкам в массиве, полученных из файла
     -- строка полученная путём результата поиска тегов по файлу
    match_result = {} -- найденый результат
    for j = 1, #source_string_array do -- проход по строке для поиска тегов из массива
        concat_match_res = ""
        match_result[j] = string.match(source_string_array[j], "("..required_tags_for_regexp[i].."\"(.-)\")") -- "("..required_tags_for_regexp[i].."\"(.-)\")")  required_tags_for_regexp[i].."\"(.-)\""
      if match_result[j] ~= nil then 
        concat_match_res = concat_match_res..match_result[j]
        processed_file:write(concat_match_res.."\n")
      end
    end
  end
end

processed_file:flush()
processed_file:close()

