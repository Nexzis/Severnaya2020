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
["A1_3.i1"]={ Tag="AI_PAN01_1Q_CUR_B", Comment="Ток фазы B ввода 1Q", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=350, LH=360, HL=420, HH=440, SC=1300, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8524 (пан.01). 1Q. TT",},
["A1_3.i2"]={ Tag="AI_PAN01_1Q_V_AC", Comment="Напряжение U AC на вводе 1Q", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=0, LH=1, HL=12, HH=13, SC=1600, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8524 (пан.01). 1Q. ТН",},
["A1_3.i3"]={ Tag="AI_PAN01_1SEC_V_BC", Comment="Напряжение U ВC на 1секции", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=350, LH=360, HL=420, HH=440, SC=1700, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8524 (пан.01).  1-я секция. ТН",},
["A1_3.i4"]={ Tag="AI_PAN07_2Q_CUR_B", Comment="Ток фазы B ввода 2Q", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=350, LH=360, HL=420, HH=440, SC=1800, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8524 (пан.07). 2Q. TT",},
["A1_4.i1"]={ Tag="AI_PAN07_2Q_V_AC", Comment="Напряжение U AC на вводе 2Q", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=350, LH=360, HL=420, HH=440, SC=1900, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8524 (пан.07). 2Q. ТН",},
["A1_4.i2"]={ Tag="AI_PAN07_2SEC_V_BC", Comment="Напряжение U ВC на 2 секции", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=350, LH=360, HL=420, HH=440, SC=2000, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="КТП №8524 (пан.07).  2-я секция. ТН",},
["A1_4.i3"]={ Tag="AI_PAN03_4Q_V_LIN", Comment="Линейное напряжение на аварийном вводе 4Q", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=350, LH=360, HL=420, HH=440, SC=2100, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="УСО КТП2. ПЛК А1",},
["A1_4.i4"]={ Tag="AI_SHUOT_CONT_V", Comment="Контроль напряжения ШУОТ 24 03 вспом. зоны", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=0, LL=160, LH=180, HL=240, HH=250, SC=2200, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="УСО КТП2. ПЛК А1",},
["A1_5.i1"]={ Tag="AI_X_RES01", Comment="УСО КТП2. Резерв", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=8, LL=8, LH=8, HL=19, HH=20, SC=23, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="УСО КТП2. ПЛК А1",},
["A1_5.i2"]={ Tag="AI_X_RES02", Comment="УСО КТП2. Резерв", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=9, LL=9, LH=9, HL=20, HH=21, SC=24, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="УСО КТП2. ПЛК А1",},
["A1_5.i3"]={ Tag="AI_X_RES03", Comment="УСО КТП2. Резерв", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=10, LL=10, LH=10, HL=21, HH=22, SC=25, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="УСО КТП2. ПЛК А1",},
["A1_5.i4"]={ Tag="AI_X_RES04", Comment="УСО КТП2. Резерв", Units ="А", reliabilityFlag=true,repaireFlag=false, BR=11, LL=11, LH=11, HL=22, HH=23, SC=26, BR_check=false, LL_check=false, LH_check=false, HL_check=true, HH_check=true, SC_check=false, Source="УСО КТП2. ПЛК А1",},

}

return AI_Signals;