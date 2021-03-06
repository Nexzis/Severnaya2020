﻿-- !!! Кодировка текста UTF-8
-- УСО КТП2. ПЛК А1.
-- таблица соответствия дискретных входов ПЛК и тегов (со свойствами).
-- ["A1_1.i1"] - описание входного канала ( например: ПЛК А1_модуль в слоте 1.канал i1).
-- Tag - имя тега без указания источника (УСО, ПЛК и т.д.).
-- Comment - Текстовое описание тега. Применяется при формировании строки сообщений.
-- Txt_1 - текстовое описание сигнала, принявшего значение true.
-- Txt_0 - текстовое описание сигнала, принявшего значение false, если значение не требует описание - можно оставить пустым (например когда состояние объекта описавыется двумя сигналами).
-- InvFlag - признак инверсии сигнала. Когда принимает значение true - Txt_0 и Txt_1 меняются местами. Предусмотрен для сигналов, источник которых - нормально закрытые контакты (НЗ). По умолчаниею ставить false (НО).
-- AlarmClass - класс сообщения. Может задаваться буквами ("a", "e", "w") или числами. Описано в таблице event. При отключении сообщения в строке событий принимает значение 0 ("disabled").
-- AlarmMsg -- текст тревожного сообщения в строке событий. Применимо для аварийных и предупредительных событий.
-- reliabilityFlag - признак достоверности сигнала. Не заполнять. По умолчанию принимает значение true.
-- repaireFlag - признак вывода сигнала из опроса. Используется при выводе оборудования в ремонт. Не заполнять. По умолчанию принимает значение false.
-- related_DI не используется (персппектива)


local DI_Signals= -- таблица соответствия дискретных входов тэгам - привязка тэгов и их свойств к конкретному каналу ПЛК в формате "ПЛК_Слот.Канал
{
["A1_6.i1"]={ Tag="DI_DIAGN_1", related_DI="", Comment="Контроль основного питания =220В -", Txt_1 =" в норме", Txt_0 =" в норме", InvFlag=true, AlarmClass=10100, AlarmMsg=" основное питание отсутствует", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i2"]={ Tag="DI_DIAGN_2", related_DI="", Comment="Контроль резервного питания =220В -", Txt_1 =" в норме", Txt_0 =" в норме", InvFlag=true, AlarmClass=10100, AlarmMsg=" резервное питание отсутствует", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i3"]={ Tag="DI_DIAGN_3", related_DI="", Comment="Контроль исправности разрядников -", Txt_1 =" в норме", Txt_0 =" в норме", InvFlag=true, AlarmClass=10100, AlarmMsg=" неисправны", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i4"]={ Tag="DI_DIAGN_4", related_DI="", Comment="Вход DC (наличие напряжения на входе инвертора) - ", Txt_1 =" включен", Txt_0 =" включен", InvFlag=true, AlarmClass=10100, AlarmMsg=" напряжение отсутствует", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i5"]={ Tag="DI_DIAGN_5", related_DI="", Comment="Авария(инвертер) ", Txt_1 =" произошла", Txt_0 =" произошла", InvFlag=true, AlarmClass=10000, AlarmMsg=" произошла", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i6"]={ Tag="DI_DIAGN_6", related_DI="", Comment="Автоматы питания ", Txt_1 =" включены", Txt_0 =" включены", InvFlag=false, AlarmClass=10100, AlarmMsg=" отключены", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i7"]={ Tag="DI_DIAGN_7", related_DI="", Comment="Двери шкафа ", Txt_1 =" открыты", Txt_0 =" открыты", InvFlag=true, AlarmClass=10100, AlarmMsg=" открыты ", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i8"]={ Tag="DI_DIAGN_8", related_DI="", Comment="Основной ИП =24В внутренних цепей ", Txt_1 =" исправен", Txt_0 =" исправен", InvFlag=false, AlarmClass=10100, AlarmMsg=" неисправен. ", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i9"]={ Tag="DI_DIAGN_9", related_DI="", Comment="Резервный ИП =24В внутренних цепей ", Txt_1 =" исправен", Txt_0 =" исправен", InvFlag=false, AlarmClass=10100, AlarmMsg=" неисправен. ", reliabilityFlag=true,repaireFlag=false, Source="КРУ-10 кВ. УСО КТП2",},
["A1_6.i10"]={ Tag="DI_DIAGN_RES05", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_6.i11"]={ Tag="DI_DIAGN_RES06", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_6.i12"]={ Tag="DI_DIAGN_RES07", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_6.i13"]={ Tag="DI_DIAGN_RES08", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_6.i14"]={ Tag="DI_DIAGN_RES09", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_6.i15"]={ Tag="DI_DIAGN_RES10", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_6.i16"]={ Tag="DI_DIAGN_RES11", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_7.i1"]={ Tag="DI_PAN01_1Q_OFF", related_DI="A1_7.i2", Comment="Выключатель 1Q", Txt_1 =" отключен", Txt_0 =" отключен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.01). "},
["A1_7.i2"]={ Tag="DI_PAN01_1Q_ON", related_DI="A1_7.i1", Comment="Выключатель 1Q", Txt_1 =" включен", Txt_0 =" включен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.01). ",},
["A1_7.i3"]={ Tag="DI_PAN01_1Q_FL", related_DI="", Comment="Неисправность 1Q", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.01). ",},
["A1_7.i4"]={ Tag="DI_PAN01_1Q_AvOFF", related_DI="", Comment="Аварийное отключение 1Q", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10000, AlarmMsg=" произошло", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.01). ",},
["A1_7.i5"]={ Tag="DI_PAN01_1Q_SQ_OUT", related_DI="A1_7.i6", Comment="Положение тележки выключателя 1Q", Txt_1 =" «Выкачено»", Txt_0 =" «Выкачено»", InvFlag=false, AlarmClass=101, AlarmMsg=" выкачено", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.01). ",},
["A1_7.i6"]={ Tag="DI_PAN01_1Q_SQ_IN", related_DI="A1_7.i5", Comment="Положение тележки выключателя 1Q «Рабочее положение»", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.01). ",},
["A1_7.i7"]={ Tag="DI_PAN03_4Q_OFF", related_DI="A1_7.i8" , Comment="Выключатель 4Q ", Txt_1 =" отключен", Txt_0 =" отключен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.03). ",},
["A1_7.i8"]={ Tag="DI_PAN03_4Q_ON" , related_DI="A1_7.i7", Comment="Выключатель 4Q ", Txt_1 =" включен", Txt_0 =" включен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.03). ",},
["A1_7.i9"]={ Tag="DI_PAN03_4Q_FL", related_DI="", Comment="Неисправность 4Q", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.03). ",},
["A1_7.i10"]={ Tag="DI_PAN03_4Q_SQ_OUT", related_DI="A1_7.i11", Comment="Положение тележки выключателя 4Q", Txt_1 =" «Выкачено»", Txt_0 =" «Выкачено»", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.03). ",},
["A1_7.i11"]={ Tag="DI_PAN03_4Q_SQ_IN", related_DI="A1_7.i10", Comment="Положение тележки выключателя 4Q «Рабочее положение»", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.03). ",},
["A1_7.i12"]={ Tag="DI_PAN07_2Q_OFF", related_DI="A1_7.i13", Comment="Выключатель 2Q", Txt_1 =" отключен", Txt_0 =" отключен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.07). ",},
["A1_7.i13"]={ Tag="DI_PAN07_2Q_ON", related_DI="A1_7.i12", Comment="Выключатель 2Q", Txt_1 =" включен", Txt_0 =" включен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.07). ",},
["A1_7.i14"]={ Tag="DI_PAN07_2Q_FL", related_DI="", Comment="Неисправность 2Q", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.07). ",},
["A1_7.i15"]={ Tag="DI_PAN07_2Q_AvOFF", related_DI="", Comment="Аварийное отключение 2Q", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10000, AlarmMsg=" произошло", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.07). ",},
["A1_7.i16"]={ Tag="DI_PAN07_2Q_SQ_OUT", related_DI="A1_8.i1", Comment="Положение тележки выключателя 2Q", Txt_1 =" «Выкачено»", Txt_0 =" «Выкачено»", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.07). ",},
["A1_8.i1"]={ Tag="DI_PAN07_2Q_SQ_IN", related_DI="A1_7.i16", Comment="Положение тележки выключателя 2Q «Рабочее положение»", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524 (пан.07). ",},
["A1_8.i2"]={ Tag="DI_PAN09_3Q_OFF", related_DI="A1_8.i3", Comment="Выключатель 3Q", Txt_1 =" отключен", Txt_0 =" отключен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i3"]={ Tag="DI_PAN09_3Q_ON", related_DI="A1_8.i2", Comment="Выключатель 3Q", Txt_1 =" включен", Txt_0 =" включен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i4"]={ Tag="DI_PAN09_3Q_FL", related_DI="", Comment="Неисправность 3Q", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i5"]={ Tag="DI_PAN09_3Q_AvOFF", related_DI="", Comment="Аварийное отключение 3Q", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10000, AlarmMsg=" произошло", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i6"]={ Tag="DI_PAN09_3Q_SQ_OUT", related_DI="A1_8.i7", Comment="Положение тележки выключателя 3Q", Txt_1 =" «Выкачено»", Txt_0 =" «Выкачено»", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i7"]={ Tag="DI_PAN09_3Q_SQ_IN", related_DI="A1_8.i6", Comment="Положение тележки выключателя 3Q «Рабочее положение»", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i8"]={ Tag="DI_PAN08_3Q_AVR_OFF", related_DI="A1_8.i9", Comment="АВР СВ", Txt_1 =" отключен", Txt_0 =" отключен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i9"]={ Tag="DI_PAN08_3Q_AVR_ON", related_DI="A1_8.i8", Comment="АВР СВ", Txt_1 =" включен", Txt_0 =" включен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i10"]={ Tag="DI_PAN08_3Q_AVR_FL", related_DI="", Comment="Отказ АВР СВ", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i11"]={ Tag="DI_PAN08_3Q_AVR_WK", related_DI="", Comment="АВР СВ сработал", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i12"]={ Tag="DI_PAN08_3Q_AVR_RT", related_DI="", Comment="Возврат АВР СВ", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i13"]={ Tag="DI_PAN08_3Q_AVR_FLRT", related_DI="", Comment="Отказ возврата АВР СВ", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i14"]={ Tag="DI_PAN02_4Q_AVR_OFF", related_DI="A1_8.i15", Comment="АВР АВ", Txt_1 =" отключен", Txt_0 =" отключен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i15"]={ Tag="DI_PAN02_4Q_AVR_ON", related_DI="A1_8.i14", Comment="АВР АВ", Txt_1 =" включен", Txt_0 =" включен", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_8.i16"]={ Tag="DI_PAN02_4Q_AVR_FL", related_DI="", Comment="Отказ АВР АВ", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_9.i1"]={ Tag="DI_PAN02_4Q_AVR_WK", related_DI="", Comment="АВР АВ сработал", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_9.i2"]={ Tag="DI_PAN02_4Q_AVR_RT", related_DI="", Comment="Возврат АВР АВ", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_9.i3"]={ Tag="DI_PAN02_4Q_AVR_FLRT", related_DI="", Comment="Отказ возврата АВР АВ", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source=" КТП №8524",},
["A1_9.i4"]={ Tag="DI_KTP2_FL", related_DI="", Comment="Неисправность КТП №8524", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524. ПУ",},
["A1_9.i5"]={ Tag="DI_X_PCONT", related_DI="", Comment="Положение выключателя «управления от АСУ Э»", Txt_1 =": дистанционное", Txt_0 =": дистанционное", InvFlag=true, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524. ПУ",},
["A1_9.i6"]={ Tag="DI_TR1_T_OL", related_DI="", Comment="Температурная перегрузка трансформатора 1", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524. ПУ",},
["A1_9.i7"]={ Tag="DI_TR2_T_OL", related_DI="", Comment="Температурная перегрузка трансформатора 2", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="КТП №8524. ПУ",},
["A1_9.i8"]={ Tag="DI_SHUOT_LOWCURRESIST", related_DI="", Comment="Снижение сопротивления изоляции оперативного тока", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="ШУОТ КТП №8524",},
["A1_9.i9"]={ Tag="DI_SHUOT_AB_OFF", related_DI="", Comment="ШУОТ КТП №8524. Отключение АБ", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=10100, AlarmMsg=": активно", reliabilityFlag=true,repaireFlag=false, Source="ШУОТ КТП №8524",},
["A1_9.i10"]={ Tag="DI_X_RES12", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ШУОТ КТП №8524",},
["A1_9.i11"]={ Tag="DI_X_RES13", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_9.i12"]={ Tag="DI_X_RES14", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_9.i13"]={ Tag="DI_X_RES15", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_9.i14"]={ Tag="DI_X_RES16", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_9.i15"]={ Tag="DI_X_RES17", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_9.i16"]={ Tag="DI_X_RES18", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i1"]={ Tag="DI_X_RES19", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i2"]={ Tag="DI_X_RES20", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i3"]={ Tag="DI_X_RES21", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i4"]={ Tag="DI_X_RES22", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i5"]={ Tag="DI_X_RES23", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i6"]={ Tag="DI_X_RES24", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i7"]={ Tag="DI_X_RES25", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i8"]={ Tag="DI_X_RES26", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i9"]={ Tag="DI_X_RES27", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i10"]={ Tag="DI_X_RES28", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i11"]={ Tag="DI_X_RES29", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i12"]={ Tag="DI_X_RES30", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i13"]={ Tag="DI_X_RES31", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i14"]={ Tag="DI_X_RES32", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i15"]={ Tag="DI_X_RES33", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},
["A1_10.i16"]={ Tag="DI_X_RES34", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 =" (0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="ПЛК А1",},


} --DI_Signals

return DI_Signals;