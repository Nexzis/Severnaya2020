-- !!! Кодировка текста UTF-8
-- УСО ГЩУ. ПЛК А1. 
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
 	["A1_3.i1"]={ Tag="AI_PAN01_1Q_CUR_B", Comment="ГЩУ (пан.01). Ток фазы B ввода 1Q", Units ="А", reliabilityFlag=true,repaireFlag=false,  LL=0, LH=0, HL=2050, HH=2100,   LL_check=false, LH_check=false, HL_check=true, HH_check=true,  Source="ГЩУ (пан.01). 1Q. TT",},
["A1_3.i2"]={ Tag="AI_PAN01_1Q_V_AC", Comment="ГЩУ (пан.01). Напряжение U AC на вводе 1Q", Units ="В", reliabilityFlag=true,repaireFlag=false,  LL=350, LH=370, HL=420, HH=440,   LL_check=false, LH_check=false, HL_check=true, HH_check=true,  Source="ГЩУ (пан.01). 1Q. TН",},
["A1_3.i3"]={ Tag="AI_PAN01_1SEC_V_BC", Comment="ГЩУ (пан.01). Напряжение U ВC на 1секции", Units ="В", reliabilityFlag=true,repaireFlag=false,  LL=350, LH=370, HL=420, HH=440,  LL_check=false, LH_check=false, HL_check=true, HH_check=true,  Source="ГЩУ (пан.01). 1-я секция. TН",},
["A1_3.i4"]={ Tag="AI_PAN01_2Q_CUR_B", Comment="ГЩУ (пан.01). Ток фазы B ввода 2Q", Units ="А", reliabilityFlag=true,repaireFlag=false,  LL=0, LH=0, HL=2050, HH=2100,     LL_check=false, LH_check=false, HL_check=true, HH_check=true,  Source="ГЩУ (пан.01). 2Q. TT",},
["A1_4.i1"]={ Tag="AI_PAN01_2Q_V_AC", Comment="ГЩУ (пан.01). Напряжение U AC на вводе 2Q", Units ="В", reliabilityFlag=true,repaireFlag=false,  LL=350, LH=370, HL=420, HH=440,   LL_check=true, LH_check=true, HL_check=true, HH_check=true,  Source="ГЩУ (пан.01). 2Q. TН",},
["A1_4.i2"]={ Tag="AI_PAN01_2SEC_V_BC", Comment="ГЩУ (пан.01). Напряжение U ВC на 2 секции", Units ="В", reliabilityFlag=true,repaireFlag=false, LL=350, LH=370, HL=420, HH=440,   LL_check=false, LH_check=false, HL_check=true, HH_check=true,  Source="ГЩУ (пан.01). 2-я секция. TН",},
["A1_4.i3"]={ Tag="AI_X_RES01", Comment="УСО ГЩУ. Температура в помещении (эмуляция)", Units ="гр. С", reliabilityFlag=true,repaireFlag=false,  LL=-40, LH=-45, HL=40, HH=45,  LL_check=true, LH_check=true, HL_check=true, HH_check=true,  Source="Щит УСО ГЩУ. ПЛК А1",},
["A1_4.i4"]={ Tag="AI_X_RES02", Comment="УСО ГЩУ. Резерв", Units ="-", reliabilityFlag=true,repaireFlag=false, LL=7, LH=7, HL=18, HH=19,   LL_check=false, LH_check=false, HL_check=true, HH_check=true,  Source="Щит УСО ГЩУ. ПЛК А1",},

}

return AI_Signals;