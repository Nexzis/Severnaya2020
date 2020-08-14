-- !!! Кодировка текста UTF-8
-- УСО КТП1. ПЛК А1. 
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
["A1_3.i1"]={ Tag="AI_PAN01_1Q_CUR_B", Comment="Ток фазы B ввода 1Q", Units ="А", reliabilityFlag=true, repaireFlag=false,  LL=0, LH=0, HL=1800, HH=1999,   BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8516 (пан.01), 1Q",},
["A1_3.i2"]={ Tag="AI_PAN01_1Q_V_AC", Comment="Напряжение U AC на вводе 1Q", Units ="кВ", reliabilityFlag=true,repaireFlag=false,  LL=0, LH=0, HL=1950, HH=1999,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8516, 1-я секция. ТН.",},
["A1_3.i3"]={ Tag="AI_PAN01_1SEC_V_BC", Comment="Напряжение U ВC на 1секции", Units ="кВ", reliabilityFlag=true,repaireFlag=false,  LL=350, LH=360, HL=420, HH=440,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8516, 1-я секция. ТН.",},
["A1_3.i4"]={ Tag="AI_PAN07_2Q_CUR_B", Comment="Ток фазы B ввода 2Q", Units ="А", reliabilityFlag=true,repaireFlag=false,  LL=350, LH=360, HL=420, HH=440,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8516 (пан.07), 2Q",},
["A1_4.i1"]={ Tag="AI_PAN07_2Q_V_AC", Comment="Напряжение U AC на вводе 2Q", Units ="кВ", reliabilityFlag=true,repaireFlag=false,  LL=0, LH=0, HL=2050, HH=2100,   LL_check=false, LH_check=false, HL_check=true, HH_check=true,  Source="КТП №8516 (пан.07), 2Q",},
["A1_4.i2"]={ Tag="AI_PAN07_2SEC_V_BC", Comment="Напряжение U ВC на 2 секции", Units ="кВ", reliabilityFlag=true,repaireFlag=false,  LL=350, LH=360, HL=420, HH=440, SC=8000,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, Source="КТП №8516, 2-я секция. ТН.",},
["A1_4.i3"]={ Tag="AI_X_CUR_AC", Comment="Ток фазы С АС", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=4, LL=5, LH=6, HL=7, HH=8, SC=9,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, Source="КТП №8516, 2-я секция. ТН.",},
["A1_4.i4"]={ Tag="AI_X_RES01", Comment="УСО КТП1. Резерв(изм. напряжения)", Units ="_", reliabilityFlag=true,repaireFlag=false, BR=5, LL=6, LH=7, HL=8, HH=9, SC=10,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, Source="УСО КТП1. ПЛК А1",},
["A1_5.i1"]={ Tag="AI_X_RES02", Comment="УСО КТП1. Температура в КТП 8516", Units ="°C", reliabilityFlag=true,repaireFlag=false, BR=6, LL=-50, LH=-25, HL=25, HH=50, SC=11,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, Source="УСО КТП1. ПЛК А1",},
["A1_5.i2"]={ Tag="AI_X_RES03", Comment="УСО Э. Тепература в ЗРУ", Units ="°C", reliabilityFlag=true,repaireFlag=false, BR=7, LL=-50, LH=-25, HL=25, HH=50, SC=12,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, Source="УСО Э. ПЛК А1",},
["A1_5.i3"]={ Tag="AI_X_RES04", Comment="УСО КТП1. Резерв", Units ="_", reliabilityFlag=true,repaireFlag=false, BR=8, LL=9, LH=10, HL=11, HH=12, SC=13,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, Source="УСО КТП1. ПЛК А1",},
["A1_5.i4"]={ Tag="AI_X_RES05", Comment="УСО КТП1. Резерв", Units ="_", reliabilityFlag=true,repaireFlag=false, BR=9, LL=10, LH=11, HL=12, HH=13, SC=14,  LL_check=false, LH_check=false, HL_check=true, HH_check=true, Source="УСО КТП1. ПЛК А1",},
 
}

return AI_Signals;