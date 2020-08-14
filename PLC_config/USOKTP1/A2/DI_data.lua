-- !!! Кодировка текста UTF-8
-- УСО КТП1. ПЛК А2. 
-- таблица соответствия  дискретных входов ПЛК и тегов (со свойствами).
-- ["A1_1.i1"] - описание входного канала ( например: ПЛК А1_модуль в слоте 1.канал i1).
-- Tag - имя тега без указания источника (УСО, ПЛК и т.д.).
-- Comment - Текстовое описание тега. Применяется при формировании строки сообщений.
-- Txt_1 - текстовое описание сигнала, принявшего значение true.
-- Txt_0 - текстовое описание сигнала, принявшего значение false, если значение не требует описание - можно оставить пустым (например когда состояние объекта описавыется двумя сигналами).
-- InvFlag - признак инверсии сигнала. Когда принимает значение true - Txt_0 и Txt_1 меняются местами. Предусмотрен для сигналов, источник которых  - нормально закрытые контакты (НЗ). По умолчаниею ставить false (НО).
-- AlarmClass - класс сообщения. Может задаваться буквами ("a", "e", "w") или числами. Описано в таблице event. При отключении сообщения в строке событий принимает значение 0 ("disabled").
-- AlarmMsg -- текст тревожного сообщения в строке событий. Применимо для аварийных и предупредительных событий.
-- reliabilityFlag - признак достоверности сигнала. Не заполнять. По умолчанию принимает значение  true.
-- repaireFlag - признак вывода сигнала из опроса. Используется при выводе оборудования в ремонт. Не заполнять. По умолчанию принимает значение false.
--  related_DI не используется (персппектива)


local DI_Signals=  -- таблица соответствия дискретных входов тэгам - привязка тэгов и их свойств к конкретному каналу ПЛК в формате "ПЛК_Слот.Канал
{
["A2_3.i1"]={ Tag="DI_X_RES22", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i2"]={ Tag="DI_X_RES23", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i3"]={ Tag="DI_X_RES24", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i4"]={ Tag="DI_X_RES25", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i5"]={ Tag="DI_X_RES26", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i6"]={ Tag="DI_X_RES27", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i7"]={ Tag="DI_X_RES28", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i8"]={ Tag="DI_X_RES29", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i9"]={ Tag="DI_X_RES30", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i10"]={ Tag="DI_X_RES31", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i11"]={ Tag="DI_X_RES32", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i12"]={ Tag="DI_X_RES33", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i13"]={ Tag="DI_X_RES34", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i14"]={ Tag="DI_X_RES35", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i15"]={ Tag="DI_X_RES36", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},
["A2_3.i16"]={ Tag="DI_X_RES37", related_DI="",  Comment="УСО КТП1. Резерв", Txt_1 =" (1)", Txt_0 ="(0)", InvFlag=false, AlarmClass=0, AlarmMsg="_", reliabilityFlag=true,repaireFlag=false, Source="УСО КТП1. ПЛК А2",},


} --DI_Signals

return DI_Signals;