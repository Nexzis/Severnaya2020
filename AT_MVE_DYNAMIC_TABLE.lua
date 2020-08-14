------------------------------------------------------------------------------------------------------------------------------------
-- Данный, с позволения сказать код, предназначен для создания динамических таблиц, а именно он является обработчиком для элемента
-- DYNAMIC_TABLE, являющимся элементом человеко - машинного интерфейса, созданного на базе стандартного примитива TTable, а так же 
-- типа - Dynamic_Table, предназначенного для обвязки интерфейсного блока.
-- Код позволяет менять размер таблицы в соответствии с заданным.
-- В данном случае в зависимости от разницы конечного и начального времени.
------------------------------------------------------------------------------------------------------------------------------------

-- Переменная в которой мы задаём имена ГЛОБАЛЬНЫХ переменных типа DYNAMIC_TABLE, для которых в интерфейсе пользователя будет производиться
-- динамизация таблицы. Имена ГЛОБАЛЬНЫХ переменных заносятся в таблицу через запятую, к ним добавляются точки, для работы с ними как со структурами.
local list_table_name = {"DYNAMIC_TABLE_ARM2.","DYNAMIC_TABLE_TE_ARM2."}
----------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------
-- для выбора количества секунд
local function choice_second_rate(table_name)
  if Core[table_name.."SIGN_OF_MONTH"] then return 2629743 end
  if Core[table_name.."SIGN_OF_DAY"] then return 86400 end
  if Core[table_name.."SIGN_OF_HOUR"] then return 3600 end
  if Core[table_name.."SIGN_OF_KVARTAL"] then return 4 end
  if Core[table_name.."SIGN_OF_YEAR"] then return 1 end
end 
-------------------------------------------------------------------

------------------------------------------------------------------------
-- Функция для удаления строк из таблицы, принимает на вход имя таблицы
------------------------------------------------------------------------
local function remove_rows(table_name)
  -- Вычисление количества удаляемых строк, вычитаем из текущего количества строк,
  -- количество строк которые необходимы и единицу(так как интерфейс считает строки с нуля)
  local remove_count = Core[table_name.."ROW_COUNT"] - Core[table_name.."HMI_COUNT_ROW"]
  --Core.addLogMsg(tostring(remove_count))
  Core.addLogMsg("Нужно удалить строк"..remove_count) 
  -- Цикл в ходе которого удаляется необходимое количество строк
  for y = 1, remove_count, 1 do
    -- Для удаления последней строки, нам нудно указать её номер,
    -- для этого мы берём общее количество строк и отнимаем единицу(так как интерфейс считает строки с нуля)
    Core[table_name.."ROW_INT"] = Core[table_name.."ROW_COUNT"] - 1
    -- Посылаем команду удалить выбранную строку(команда посылается в интерфейс)
    Core[table_name.."REMOVE_ROW"] = true
    -- Ожидание ответа от интерфейса, в случае успеха или ошибки выполнения, цикл прервётся
    while Core[table_name.."ROW_REMOVED"] == false and Core[table_name.."ERROR"] == false do os.sleep(0.1) end
    -- Обрабатываем случай, когда приходит ошибка выполнения команд
    if Core[table_name.."ERROR"] == true  then
      Core.addLogMsg("Ошибка при удалении строк, зовите программиста")
      Core[table_name.."PROCESSING"] = "Ошибка редактирования таблицы"
      return 0
    -- Если ошибки нет, значит команда прошла успешно и строка удалилась
    elseif Core[table_name.."ROW_REMOVED"] == true then
      -- Скидываем успех прошедшей команды, а так же саму посланную команду    
      Core[table_name.."RESET_ROW_REMOVED"] = true
      Core[table_name.."REMOVE_ROW"] = false
      --Core[table_name.."HEIGHT"] = Core[table_name.."HEIGHT"] - 15
      while Core[table_name.."ROW_REMOVED"] == true do os.sleep(0.05) end
      Core[table_name.."RESET_ROW_REMOVED"] = false
    end
  end
end
-------------------------------------------------------------------------

-------------------------------------------------------------------------
-- функция для добавления строк в таблицу, довавляет строки в таблицу
-------------------------------------------------------------------------
local function add_rows(table_name)
  -- Вычисление количества добавляемых строк, вычитаем из нужного количества строк,
  -- количество строк которые есть и единицу(так как интерфейс считает строки с нуля)
  local add_count = Core[table_name.."HMI_COUNT_ROW"] - Core[table_name.."ROW_COUNT"]
  Core.addLogMsg("Нужно добавить строк"..add_count)
  --Core.addLogMsg(tostring(remove_count))
  for y = 1, add_count, 1 do
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

-----------------------------------------------------------------------------
-- Функция которая выбирает добавить или убрать строки из таблицы
-----------------------------------------------------------------------------
local function change_add_or_remove(table_name)
  Core[table_name.."RESET_ERROR"] = false

  if Core[table_name.."HMI_CHANGE_SIZE"] == true then
    if Core[table_name.."HMI_COUNT_ROW"] - Core[table_name.."ROW_COUNT"] < 0 then
      Core.addLogMsg("Вызвана функция удаления строк")
      remove_rows(table_name)
      Core[table_name.."HMI_CHANGE_SIZE"] = false
      Core.setMessage("")
      Core[table_name.."PROCESSING"] = "Идёт редактирование таблицы"
      Core[table_name.."ERROR_TEXT"] = ""
    end
    --else
    --  Core.setMessage("Число строк в таблице не может быть отрицательным или равным 0")
    --  Core.addLogMsg("Число строк в таблице не может быть отрицательным или равным 0")
    --  Core[table_name.."PROCESSING"] = "Ошибка редактирования таблицы"
    --  Core[table_name.."ERROR_TEXT"] = "Число строк в таблице не может быть отрицательным или равным 0"
    --  Core[table_name.."HMI_CHANGE_SIZE"] = false
    --end
    

    if Core[table_name.."HMI_COUNT_ROW"] > Core[table_name.."ROW_COUNT"] then
      if Core[table_name.."HMI_COUNT_ROW"] > 48 then
        Core.setMessage("Число строк в таблице не может быть больше 48")
        Core.addLogMsg("Число строк в таблице не может превышать 48")
        Core[table_name.."PROCESSING"] = ""
        Core[table_name.."ERROR_TEXT"] = "Число строк в таблице не может быть больше 48"
        Core[table_name.."HMI_CHANGE_SIZE"] = false
        return 0
      else
        Core.addLogMsg("Вызвана функция добавления строк")
        add_rows(table_name)
        Core[table_name.."HMI_CHANGE_SIZE"] = false
        Core.setMessage("")
        Core[table_name.."PROCESSING"] = "Идёт редактирование таблицы"
        Core[table_name.."ERROR_TEXT"] = ""
      end
    end
  end
end
-----------------------------------------------------------------------------

local function interval_calc(table_name)
  Core[table_name.."RESET_ERROR"] = true

  if Core[table_name.."REQUEST_TO_ARCHIVE"] == true then
    local interval = Core[table_name.."STOP_DATE"] - Core[table_name.."START_DATE"]    
    if interval <= 0 and Core[table_name.."SIGN_OF_YEAR"] == false and Core[table_name.."SIGN_OF_KVARTAL"] == false then 
      Core.setMessage("Интервал не может быть отрицательным или равным 0")
      Core[table_name.."PROCESSING"] = "Ошибка редактирования таблицы"
      Core[table_name.."ERROR_TEXT"] = "Заданный интервал меньше единицы времени,\n или отрицателен"
      Core[table_name.."REQUEST_TO_ARCHIVE"] = false
      return 0
    else
      Core.setMessage("")
      Core[table_name.."PROCESSING"] = "Идёт редактирование таблицы"
      Core[table_name.."ERROR_TEXT"] = ""
    end
    
    Core.addLogMsg(tostring(Core[table_name.."STOP_DATE"]))
    Core.addLogMsg(tostring(Core[table_name.."START_DATE"]))
    local second_rate = choice_second_rate(table_name)
    Core.addLogMsg(tostring(second_rate))
    -- Если есть признак часа, дня или месяца
    local amount_cell = 0
    if second_rate == nil then
      second_rate = 3600
    end
    if second_rate > 3500 then
      amount_cell = math.ceil((Core[table_name.."STOP_DATE"] - Core[table_name.."START_DATE"]) / second_rate)
    elseif second_rate == 4 then
      amount_cell = second_rate
    elseif second_rate == 1 then   
      amount_cell = second_rate
    end

    Core.addLogMsg(tostring(amount_cell))
	if amount_cell == 0 then
	  amount_cell = 1
	end
	  
    Core[table_name.."HMI_COUNT_ROW"] = amount_cell
    Core[table_name.."HMI_CHANGE_SIZE"] = true
    change_add_or_remove(table_name)
    Core[table_name.."FIND_INTO_ARCHIVE"] = true	
  end

  Core[table_name.."REQUEST_TO_ARCHIVE"] = false
end 

for t = 1, #list_table_name, 1 do
  Core.onExtChange({list_table_name[t].."REQUEST_TO_ARCHIVE"}, interval_calc, list_table_name[t])
end

Core.waitEvents()