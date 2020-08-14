-- !!! Кодировка текста UTF-8
-- УСО К. ПЛК А1.
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
["A1_3.i1"]={ Tag="DI_DIAGN_1", related_DI="", Comment="Контроль основного питания ~220В", Txt_1 =": включено", Txt_0 =": включено", InvFlag=false, AlarmClass=10100, AlarmMsg=" основное питание отсутствует", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i2"]={ Tag="DI_DIAGN_2", related_DI="", Comment="Исправность разрядника", Txt_1 =": включено", Txt_0 =": включено", InvFlag=true, AlarmClass=10100, AlarmMsg=" : разрядник неисправен.", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i3"]={ Tag="DI_DIAGN_3", related_DI="", Comment="Автоматы питания", Txt_1 =" включены", Txt_0 ="включены", InvFlag=false, AlarmClass=10100, AlarmMsg=" отключены", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i4"]={ Tag="DI_DIAGN_4", related_DI="", Comment="Двери УСО К", Txt_1 ="", Txt_0 ="", InvFlag=true, AlarmClass=10100, AlarmMsg=" открыты", reliabilityFlag=false,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i5"]={ Tag="DI_DIAGN_5", related_DI="", Comment="Исправность ИП=24В внутренних цепей", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10100, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i6"]={ Tag="DI_DIAGN_6", related_DI="", Comment="Исправность ИП=24В внешних цепей", Txt_1 =" исправны", Txt_0 =" исправны", InvFlag=false, AlarmClass=10100, AlarmMsg=" неисправны", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i7"]={ Tag="DI_DIAGN_7", related_DI="", Comment="Авария ИБП", Txt_1 =" :активно", Txt_0 =": активно", InvFlag=true, AlarmClass=101, AlarmMsg=" произошла", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i8"]={ Tag="DI_X_RES01", related_DI="", Comment="Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg=" (Диагностика УСО П)", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_3.i9"]={ Tag="DI_B_AvOST", related_DI="", Comment="Аварийная остановка котла", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=true, AlarmClass=10000, AlarmMsg=" (Диагностика УСО П)", reliabilityFlag=true,repaireFlag=false, Source="Котельная",},
["A1_3.i10"]={ Tag="DI_BURN_AvOST", related_DI="", Comment="Аварийная остановка горелки", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10000, AlarmMsg=" произошло", reliabilityFlag=true,repaireFlag=false, Source="Котельная",},
["A1_3.i11"]={ Tag="DI_B_TOUT_HIGH", related_DI="", Comment="Температура котла на выходе аварийно высокая", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10100, AlarmMsg=" - активно", reliabilityFlag=true,repaireFlag=false, Source="Котельная",},
["A1_3.i12"]={ Tag="DI_B_P_LOW", related_DI="", Comment="Давление воды в котле аварийно низкое", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=true, AlarmClass=10100, AlarmMsg=" - активно", reliabilityFlag=true,repaireFlag=false, Source="Котельная",},
["A1_3.i13"]={ Tag="DI_B_C_LOW", related_DI="", Comment="Циркуляция воды через котел аварийно низкая", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10100, AlarmMsg=" - активно",reliabilityFlag=true,repaireFlag=false, Source="Котельная",},
["A1_3.i14"]={ Tag="DI_B_P_HIGH", related_DI="", Comment="Давление воды в котле аварийно высокое", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=true, AlarmClass=10100, AlarmMsg=" - активно", reliabilityFlag=true,repaireFlag=false, Source="Котельная",},
["A1_3.i15"]={ Tag="DI_FIREBOX_P_HIGH", related_DI="", Comment="Котельная. Давление в топке котла аварийно высокое", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="Котельная",},
["A1_3.i16"]={ Tag="DI_H1_WK", related_DI="", Comment="Насос №1 летнего контура в работе", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 1",},
["A1_4.i1"]={ Tag="DI_H1_FL", related_DI="", Comment="Авария насоса №1 летнего контура", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10000, AlarmMsg=" произошла",reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 1",},
["A1_4.i2"]={ Tag="DI_H2_WK", related_DI="", Comment="Насос №2 летнего контура в работе", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 2",},
["A1_4.i3"]={ Tag="DI_H2_FL", related_DI="", Comment="Авария насоса №2 летнего контура", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10000, AlarmMsg=" произошла", reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 2",},
["A1_4.i4"]={ Tag="DI_GVS_H1_WK", related_DI="", Comment="Насос №1 ГВС в работе", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 1 ГВС",},
["A1_4.i5"]={ Tag="DI_GVS_H1_FL", related_DI="", Comment="Авария насоса №1 ГВС", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10000, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 1 ГВС",},
["A1_4.i6"]={ Tag="DI_GVS_H2_WK", related_DI="", Comment="Насос №2 ГВС в работе", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=101, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 2 ГВС",},
["A1_4.i7"]={ Tag="DI_GVS_H2_FL", related_DI="", Comment="Авария насоса №2 ГВС", Txt_1 =" (активно)", Txt_0 =" (активно)", InvFlag=false, AlarmClass=10000, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="Котельная. Насос 2 ГВС",},
["A1_4.i8"]={ Tag="DI_X_RES02", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i9"]={ Tag="DI_X_RES03", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i10"]={ Tag="DI_X_RES04", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i11"]={ Tag="DI_X_RES05", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i12"]={ Tag="DI_X_RES06", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i13"]={ Tag="DI_X_RES07", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i14"]={ Tag="DI_X_RES08", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i15"]={ Tag="DI_X_RES09", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},
["A1_4.i16"]={ Tag="DI_X_RES10", related_DI="", Comment="УСО К. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО К. ПЛК А1",},


} --DI_Signals

return DI_Signals;