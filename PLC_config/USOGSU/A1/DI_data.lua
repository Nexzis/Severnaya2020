-- !!! Кодировка текста UTF-8
-- УСО ГЩУ. ПЛК А1.
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
["A1_5.i1"]={ Tag="DI_DIAGN_1", related_DI="", Comment="Контроль основного питания =220В", Txt_1 =" в норме", Txt_0 =" в норме", InvFlag=true, AlarmClass=10100, AlarmMsg=" основное питание отсутствует", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i2"]={ Tag="DI_DIAGN_2", related_DI="", Comment="Контроль резервного питания =220В", Txt_1 =" в норме", Txt_0 =" в норме", InvFlag=true, AlarmClass=10100, AlarmMsg=" резервное питание отсутствует", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i3"]={ Tag="DI_DIAGN_3", related_DI="", Comment="Контроль исправности разрядников", Txt_1 =" в норме", Txt_0 =" неисправны", InvFlag=false, AlarmClass=10100, AlarmMsg=" неисправны", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i4"]={ Tag="DI_DIAGN_4", related_DI="", Comment="Вход DC (наличие напряжения на входе инвертора)", Txt_1 =" включен", Txt_0 =" отключен", InvFlag=false, AlarmClass=10100, AlarmMsg=" напряжение отсутствует", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i5"]={ Tag="DI_DIAGN_5", related_DI="", Comment="Авария инвертера", Txt_1 =" произошла", Txt_0 =" произошла", InvFlag=true, AlarmClass=10000, AlarmMsg=" произошла", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i6"]={ Tag="DI_DIAGN_6", related_DI="", Comment="Автоматы питания", Txt_1 =" включены", Txt_0 =" включены", InvFlag=false, AlarmClass=10100, AlarmMsg=" отключены", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i7"]={ Tag="DI_DIAGN_7", related_DI="", Comment="Двери шкафа", Txt_1 =" открыты", Txt_0 =" открыты", InvFlag=true, AlarmClass=10100, AlarmMsg=" открыты ", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i8"]={ Tag="DI_DIAGN_8", related_DI="", Comment="Основной ИП =24В внутренних цепей", Txt_1 =" исправен", Txt_0 =" исправен", InvFlag=false, AlarmClass=10100, AlarmMsg=" неисправен. ", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i9"]={ Tag="DI_DIAGN_9", related_DI="", Comment="Резервный ИП =24В внутренних цепей", Txt_1 =" исправен", Txt_0 =" исправен", InvFlag=false, AlarmClass=10100, AlarmMsg=" неисправен. ", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i10"]={ Tag="DI_DIAGN_RES03", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i11"]={ Tag="DI_DIAGN_RES04", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i12"]={ Tag="DI_DIAGN_RES05", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i13"]={ Tag="DI_DIAGN_RES06", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i14"]={ Tag="DI_DIAGN_RES07", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i15"]={ Tag="DI_DIAGN_RES08", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_5.i16"]={ Tag="DI_DIAGN_RES09", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="УСО ГЩУ. ПЛК А1",},
["A1_6.i1"]={ Tag="DI_PAN01_1Q_OFF", related_DI="", Comment="Выключатель 1Q ", Txt_1 ="отключен", Txt_0 ="отключен", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.01). ",},
["A1_6.i2"]={ Tag="DI_PAN01_1Q_ON", related_DI="", Comment="Выключатель 1Q ", Txt_1 ="включен", Txt_0 ="включен", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.01). ",},
["A1_6.i3"]={ Tag="DI_PAN01_2Q_OFF", related_DI="A1_6.i4", Comment="Выключатель 2Q ", Txt_1 ="отключен", Txt_0 ="отключен", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.01). ",},
["A1_6.i4"]={ Tag="DI_PAN01_2Q_ON", related_DI="A1_6.i3", Comment="Выключатель 2Q ", Txt_1 ="включен", Txt_0 ="включен", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.01). ",},
["A1_6.i5"]={ Tag="DI_PAN01_Q_AvOFF", related_DI="", Comment="Аварийное отключение 1Q, 2Q", Txt_1 =": активно", Txt_0 =": неактивно", InvFlag=true, AlarmClass=10100, AlarmMsg=" произошло", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.01). ",},
["A1_6.i6"]={ Tag="DI_PAN01_AVR_OFF", related_DI="", Comment="АВР", Txt_1 =": готовность", Txt_0 =": сработал", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.01). ",},
["A1_6.i7"]={ Tag="DI_X_PCONT", related_DI="", Comment="Положение переключателя «Управления от АСУ»", Txt_1 =": активно", Txt_0 =": активно", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i8"]={ Tag="DI_X_RES10", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=0, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i9"]={ Tag="DI_X_RES11", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=0, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i10"]={ Tag="DI_AB1_VDC_LOW", related_DI="", Comment="ГЩУ. Низкое напряжение постоянного тока 220В АБ1", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i11"]={ Tag="DI_AB1_SYSPSAC_FL", related_DI="", Comment="ГЩУ. Отказ системы питания переменного тока 220В АБ1", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i12"]={ Tag="DI_AB1_BAT_FL", related_DI="", Comment="ГЩУ. Неисправность зарядного устройства 220В АБ1", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i13"]={ Tag="DI_AB2_VDC_LOW", related_DI="", Comment="ГЩУ. Низкое напряжение постоянного тока 220 В АБ2", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i14"]={ Tag="DI_AB2_SYSPSAC_FL", related_DI="", Comment="ГЩУ. Отказ системы питания переменного тока 220В АБ2", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i15"]={ Tag="DI_AB2_BAT_FL", related_DI="", Comment="ГЩУ. Неисправность зарядного устройства 220В АБ2", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},
["A1_6.i16"]={ Tag="DI_X_RES12", related_DI="", Comment="Резерв", Txt_1 ="", Txt_0 ="", InvFlag=false, AlarmClass=101, AlarmMsg="-", reliabilityFlag=true,repaireFlag=false, Source="МСС-7 (пан.). ",},


} --DI_Signals

return DI_Signals;