-- !!! Кодировка текста UTF-8
-- УСО ГЩУ. ПЛК А1.
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
["A1_7.o1"]={Tag="DO_PAN01_1Q_OFF", Comment="ГЩУ. (пан.01). Выключатель 1Q", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.01). ",},
["A1_7.o2"]={Tag="DO_PAN01_1Q_ON", Comment="ГЩУ.(пан.01). Выключатель 1Q", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.01). ",},
["A1_7.o3"]={Tag="DO_PAN01_2Q_OFF", Comment="ГЩУ. (пан.01). Выключатель 2Q", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.07). ",},
["A1_7.o4"]={Tag="DO_PAN01_2Q_ON", Comment="ГЩУ. (пан.01). Выключатель 2Q", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.07). ",},
["A1_7.o5"]={Tag="DO_X_AvOST", Comment="ГЩУ. Аварийный останов", Txt_1 =" выполнить.", Txt_0 =" выполнить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.03). ",},
["A1_7.o6"]={Tag="DO_X_RES13", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o7"]={Tag="DO_X_RES14", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o8"]={Tag="DO_X_RES15", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o9"]={Tag="DO_X_RES16", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o10"]={Tag="DO_X_RES17", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o11"]={Tag="DO_X_RES18", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o12"]={Tag="DO_X_RES19", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o13"]={Tag="DO_X_RES20", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o14"]={Tag="DO_X_RES21", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o15"]={Tag="DO_X_RES22", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_7.o16"]={Tag="DO_X_RES23", Comment="УСО ГЩУ. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО ГЩУ. ПЛК А1",},

} --DO_Signals

return DO_Signals;