-- !!! Кодировка текста UTF-8
-- УСО КТП2. ПЛК А2. 
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
["A2_3.o1"]={Tag="DO_PAN01_1Q_OFF", Comment="КТП №8524 (пан.01). Выключатель 1Q", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.01). ",},
["A2_3.o2"]={Tag="DO_PAN01_1Q_ON", Comment="КТП №8524 (пан.01). Выключатель 1Q", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.01). ",},
["A2_3.o3"]={Tag="DO_PAN07_2Q_OFF", Comment="КТП №8524 (пан.07). Выключатель 2Q", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.07). ",},
["A2_3.o4"]={Tag="DO_PAN07_2Q_ON", Comment="КТП №8524 (пан.07). Выключатель 2Q", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.07). ",},
["A2_3.o5"]={Tag="DO_PAN03_4Q_OFF", Comment="КТП №8524 (пан.03). Выключатель 4Q", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.03). ",},
["A2_3.o6"]={Tag="DO_PAN03_4Q_ON", Comment="КТП №8524 (пан.03). Выключатель 4Q", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.03). ",},
["A2_3.o7"]={Tag="DO_PAN09_3Q_OFF", Comment="КТП №8524 (пан.09). Выключатель 3Q", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.09). ",},
["A2_3.o8"]={Tag="DO_PAN09_3Q_ON", Comment="КТП №8524 (пан.09). Выключатель 3Q", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.09). ",},
["A2_3.o9"]={Tag="DO_PAN09_AVRSV_ON", Comment="КТП №8524 (пан.09). АВР СВ", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.09). ",},
["A2_3.o10"]={Tag="DO_PAN09_AVRSV_OFF", Comment="КТП №8524 (пан.09). АВР СВ", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.09). ",},
["A2_3.o11"]={Tag="DO_PAN03_AVRAS_ON", Comment="КТП №8524 (пан.03). АВР АС", Txt_1 =" отключить.", Txt_0 =" отключить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.03). ",},
["A2_3.o12"]={Tag="DO_PAN03_AVRAS_OFF", Comment="КТП №8524 (пан.03). АВР АС", Txt_1 =" включить.", Txt_0 =" включить.", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="КТП №8524 (пан.03). ",},
["A2_3.o13"]={Tag="DO_X_RES35", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_3.o14"]={Tag="DO_X_RES36", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_3.o15"]={Tag="DO_X_RES37", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_3.o16"]={Tag="DO_X_RES38", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o1"]={Tag="DO_X_RES39", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o2"]={Tag="DO_X_RES40", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o3"]={Tag="DO_X_RES41", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o4"]={Tag="DO_X_RES42", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o5"]={Tag="DO_X_RES43", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o6"]={Tag="DO_X_RES44", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o7"]={Tag="DO_X_RES45", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o8"]={Tag="DO_X_RES46", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o9"]={Tag="DO_X_RES47", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o10"]={Tag="DO_X_RES48", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o11"]={Tag="DO_X_RES49", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o12"]={Tag="DO_X_RES50", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o13"]={Tag="DO_X_RES51", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o14"]={Tag="DO_X_RES52", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o15"]={Tag="DO_X_RES53", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},
["A2_4.o16"]={Tag="DO_X_RES54", Comment="УСО КТП2. Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=100, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Fix_Con=false, Source="УСО КТП2. ПЛК А2",},

	
} --DO_Signals

return DO_Signals;