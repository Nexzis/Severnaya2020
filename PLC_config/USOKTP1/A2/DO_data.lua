-- !!! Кодировка текста UTF-8
-- УСО КТП1. ПЛК А2. 
-- таблица соответствия  дискретных выходов ПЛК и тегов (со свойствами).
-- ["A1_9.o1"] - описание выходного канала ( например: ПЛК А1_модуль в слоте 9.канал i1).
-- Tag - имя тега без указания источника (УСО, ПЛК и т.д.).
-- Comment - Текстовое описание тега. Применяется при формировании строки сообщений.
-- Txt_1 - текстовое описание сигнала, принявшего значение true.
-- Txt_0 - текстовое описание сигнала, принявшего значение false, если значение не требует описание - можно оставить пустым (например когда состояние объекта описавыется двумя сигналами).
-- InvFlag - признак инверсии сигнала. Когда принимает значение true - Txt_0 и Txt_1 меняются местами. Предусмотрен для сигналов, источник которых  - нормально закрытые контакты (НЗ). По умолчаниею ставить false (НО).
-- AlarmClass - класс сообщения. Может задаваться буквами ("a", "e", "w") или числами. Описано в таблице event. При отключении сообщения в строке событий принимает значение 0 ("disabled").
-- AlarmMsg -- текст тревожного сообщения в строке событий. Применимо для аварийных и предупредительных событий.
-- reliabilityFlag - признак достоверности сигнала. Не заполнять. По умолчанию принимает значение  true.
-- repaireFlag - признак вывода сигнала из опроса. Используется при выводе оборудования в ремонт. Не заполнять. По умолчанию принимает значение false.
--  relatedTag не используется (персппектива)
-- Fix_Con - признак типа выходного сигнала (импульсный/постоянная фиксация)

local DO_Signals=  -- таблица соответствия дискретных выходов тэгам - привязка тэгов и их свойств к конкретному каналу ПЛК в формате "ПЛК_Слот.Канал
	{
		-- адрес           тэг             оисание						состояние    состояние         инверсия       команда      тескст сообщения достоверность		ремонт			фиксация контакта после срабатывания
["A2_4.o1"]={Tag="DO_PAN01_1Q_OFF", Comment="КТП №8516 (пан.01). Выключатель 1Q", Txt_1 =" : отключить", Txt_0 =" : отключить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.01). Выключатель 1Q",},
["A2_4.o2"]={Tag="DO_PAN01_1Q_ON", Comment="КТП №8516 (пан.01). Включить выключатель 1Q", Txt_1 ="  :включить", Txt_0 ="  :включить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.01). Выключатель 1Q",},
["A2_4.o3"]={Tag="DO_AS_START", Comment="АДЭС КТП №8516.   стоп АС", Txt_1 =" : СТОП", Txt_0 =" : СТОП", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="АДЭС КТП №8516.   АС. ПУ",},
["A2_4.o4"]={Tag="DO_AS_STOP", Comment="АДЭС КТП №8516.   пуск АС", Txt_1 =" :ПУСК", Txt_0 =" :ПУСК", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="АДЭС КТП №8516.   АС. ПУ",},
["A2_4.o5"]={Tag="DO_PAN07_2Q_OFF", Comment="КТП №8516 (пан.07). Отключить выключатель 2Q", Txt_1 =" : отключить", Txt_0 =" : отключить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.07). Выключатель 2Q",},
["A2_4.o6"]={Tag="DO_PAN07_2Q_ON", Comment="КТП №8516 (пан.07). Включить выключатель 2Q", Txt_1 ="  :включить", Txt_0 ="  :включить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.07). Выключатель 2Q",},
["A2_4.o7"]={Tag="DO_PAN09_3Q_OFF", Comment="КТП №8516 (пан.09). Отключить выключатель 3Q", Txt_1 =" : отключить", Txt_0 =" : отключить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.09). Выключатель 3Q",},
["A2_4.o8"]={Tag="DO_PAN09_3Q_ON", Comment="КТП №8516 (пан.09). Включить выключатель 3Q", Txt_1 ="  :включить", Txt_0 ="  :включить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.09). Выключатель 3Q",},
["A2_4.o9"]={Tag="DO_PAN08_AVRSV_ON", Comment="КТП №8516 (пан.08). Включить АВР СВ", Txt_1 =" : отключить", Txt_0 =" : отключить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.08). АВР СВ. ПУ",},
["A2_4.o10"]={Tag="DO_PAN08_AVRSV_OFF", Comment="КТП №8516 (пан.08). Отключить АВР СВ", Txt_1 ="  :включить", Txt_0 ="  :включить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.08). АВР СВ. ПУ",},
["A2_4.o11"]={Tag="DO_PAN02_AVRAS_ON", Comment="КТП №8516 (пан.02). Включить АВР АС", Txt_1 =" : отключить", Txt_0 =" : отключить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.02). АВР АС. ПУ",},
["A2_4.o12"]={Tag="DO_PAN02_AVRAS_OFF", Comment="КТП №8516 (пан.02). Отключить АВР AC", Txt_1 ="  :включить", Txt_0 ="  :включить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8516 (пан.02). АВР АС. ПУ",},
["A2_4.o13"]={Tag="DO_ADES_AVG_ON", Comment="АДЭС КТП №8516.   Включить АВГ", Txt_1 =" : отключить", Txt_0 =" : отключить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="АДЭС КТП №8516.   ПУ",},
["A2_4.o14"]={Tag="DO_ADES_AVG_OFF", Comment="АДЭС КТП №8516.   Отключить АВГ", Txt_1 ="  :включить", Txt_0 ="  :включить", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="АДЭС КТП №8516.   ПУ",},
["A2_4.o15"]={Tag="DO_ADES_START", Comment="АДЭС КТП №8516.   Пуск АДЭС", Txt_1 =" : СТОП", Txt_0 =" : СТОП", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="АДЭС КТП №8516.   ПУ",},
["A2_4.o16"]={Tag="DO_ADES_STOP", Comment="АДЭС КТП №8516.   Стоп АДЭС", Txt_1 =" :ПУСК", Txt_0 =" :ПУСК", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="АДЭС КТП №8516.   ПУ",},
["A2_5.o1"]={Tag="DO_X_RES38", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o2"]={Tag="DO_X_RES39", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o3"]={Tag="DO_X_RES40", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o4"]={Tag="DO_X_RES41", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o5"]={Tag="DO_X_RES42", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o6"]={Tag="DO_X_RES43", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o7"]={Tag="DO_X_RES44", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o8"]={Tag="DO_X_RES45", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o9"]={Tag="DO_X_RES46", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o10"]={Tag="DO_X_RES47", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o11"]={Tag="DO_X_RES48", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o12"]={Tag="DO_X_RES49", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o13"]={Tag="DO_X_RES50", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o14"]={Tag="DO_X_RES51", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o15"]={Tag="DO_X_RES52", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},
["A2_5.o16"]={Tag="DO_X_RES53", Comment="УСО КТП1. Резерв", Txt_1 ="  (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП1. ПЛК А2",},

	
} --DO_Signals

return DO_Signals;