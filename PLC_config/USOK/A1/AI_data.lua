-- !!! Кодировка текста UTF-8
-- УСО К. ПЛК А1. 
-- таблица соответствия  аналоговых входов ПЛК и тегов (со свойствами).
-- ["A1_1.i1"] - описание входного канала ( например: ПЛК А1_модуль в слоте 1.канал i1).
-- Tag - имя тега без указания источника (УСО, ПЛК и т.д.).
-- Units - единицы измерения величины.
-- Comment - Текстовое описание тега. Применяется при формировании строки сообщений.
-- reliabilityFlag - признак достоверности сигнала. Не заполнять. По умолчанию принимает значение  true.
-- repaireFlag - признак вывода сигнала из опроса. Используется при выводе оборудования в ремонт. Не заполнять. По умолчанию принимает значение false.
-- BR - уровень определения обрыва канала датчика
-- LL - уровень нижней аварийной границы параметра
-- LH - уровень нижней предупредительной границы параметра 
-- HL - уровень  верхней предупредительной границы параметра 
-- HH - уровень верхней аварийной границы параметра
-- SC - уровень определения короткого замыкания канала датчика 
-- BR_check - признак отслеживания скриптом обрыва канала датчика (true/false)
-- LL_check - признак отслеживания скриптом нижней аварийной границы параметра (true/false)
-- LH_check - признак отслеживания скриптом нижней предупредительной границы параметра  (true/false)
-- HL_check - признак отслеживания скриптом верхней предупредительной границы параметра (true/false)
-- HH_check - признак отслеживания скриптом верхней аварийной границы параметра (true/false)
-- SC_check - признак отслеживания скриптом короткого замыкания канала датчика (true/false)


local AI_Signals=  -- таблица соответствия аналоговых входов тэгам - привязка тэгов и их свойств к конкретному каналу ПЛК в формате "ПЛК_Слот.Канал
	{
 	
}

return AI_Signals;