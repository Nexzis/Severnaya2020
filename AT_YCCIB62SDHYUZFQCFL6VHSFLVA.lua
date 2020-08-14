local scada_signal_prefix = "GSP_SEV_KSSEV_E_USOKTP1_"
local plc_signal_prefix = "USOKTP1_A1_"

--local di_signals = {
--["6_i1"] = {["Tag"]="DI_DIAGN_1",            ["Comment"]="Контроль основного питания =220В",               ["Source"]="КРУ-10 кВ. УСО КТП1",      Txt_1 =" в норме",                               Txt_0 =" отсутствует"},
--["6_i2"] = {["Tag"]="DI_DIAGN_2",            ["Comment"]="Контроль резервного питания =220В",              ["Source"]="КРУ-10 кВ. УСО КТП1",      Txt_1 =" в норме",                               Txt_0 =" отсутствует"},
--["6_i3"] = {["Tag"]="DI_DIAGN_3",            ["Comment"]="Контроль исправности разрядников",               ["Source"]="КРУ-10 кВ. УСО КТП2",      Txt_1 =" в норме",                               Txt_0 =" неисправны"},
--["6_i4"] = {["Tag"]="DI_DIAGN_4",            ["Comment"]="Вход DC (наличие напряжения на входе инвертора", ["Source"]="КРУ-10 кВ. УСО КТП1",      Txt_1 =" включен",                               Txt_0 =" отключен"},
--["6_i5"] = {["Tag"]="DI_DIAGN_5",            ["Comment"]="Авария(инвертер)",                               ["Source"]="КРУ-10 кВ. УСО КТП1",      Txt_1 =" произошла",                             Txt_0 =" устранена"},
--["6_i6"] = {["Tag"]="DI_DIAGN_6",            ["Comment"]="Автоматы питания",                               ["Source"]="КРУ-10 кВ. УСО КТП1",      Txt_1 =" включены",                              Txt_0 =" отключены"},
--["6_i7"] = {["Tag"]="DI_DIAGN_7",            ["Comment"]="Двери  шкафа",                                   ["Source"]="КРУ-10 кВ. УСО КТП2",      Txt_1 =" открыты",                               Txt_0 =" закрыты"},
--["6_i8"] = {["Tag"]="DI_DIAGN_8",            ["Comment"]="Основной ИП =24В внутренних цепей",              ["Source"]="КРУ-10 кВ. УСО КТП1",      Txt_1 =" исправен",                              Txt_0 =" неисправен"},
--["6_i9"] = {["Tag"]="DI_DIAGN_9",            ["Comment"]="Резервный ИП =24В внутренних цепей",             ["Source"]="КРУ-10 кВ. УСО КТП1",      Txt_1 =" исправен",                              Txt_0 =" неисправен"},
--["6_i10"] = {["Tag"]="DI_DIAGN_RES06",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["6_i11"] = {["Tag"]="DI_DIAGN_RES07",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["6_i12"] = {["Tag"]="DI_DIAGN_RES8",        ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["6_i13"] = {["Tag"]="DI_DIAGN_RES09",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["6_i14"] = {["Tag"]="DI_DIAGN_RES10",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["6_i15"] = {["Tag"]="DI_DIAGN_RES11",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["6_i16"] = {["Tag"]="DI_DIAGN_RES12",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="КТП №8516 (пан.01)",       Txt_1 =" (1)",                                   Txt_0 ="(|)"},
--["7_i1"] = {["Tag"]="DI_PAN01_1Q_OFF",       ["Comment"]="Выключатель 1Q",                                 ["Source"]="КТП №8516 (пан.01)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["7_i2"] = {["Tag"]="DI_PAN01_1Q_ON",        ["Comment"]="Выключатель 1Q",                                 ["Source"]="КТП №8516 (пан.01)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["7_i3"] = {["Tag"]="DI_PAN01_1Q_FL",        ["Comment"]="Неисправность 1Q",                               ["Source"]="КТП №8516 (пан.01)",       Txt_1 =": неисправен",                           Txt_0 =": исправен"},
--["7_i4"] = {["Tag"]="DI_PAN01_1Q_AvOFF",     ["Comment"]="Аварийное отключение 1Q",                        ["Source"]="КТП №8516 (пан.01)",       Txt_1 =": произошло",                            Txt_0 =": устранено"},
--["7_i5"] = {["Tag"]="DI_PAN01_1Q_SQ_OUT",    ["Comment"]="Положение тележки выключателя 1Q",               ["Source"]="КТП №8516 (пан.03)",       Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
--["7_i6"] = {["Tag"]="DI_PAN01_1Q_SQ_IN",     ["Comment"]="Положение тележки выключателя 1Q",               ["Source"]="КТП №8516 (пан.03)",       Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
--["7_i7"] = {["Tag"]="DI_PAN03_4Q_OFF",       ["Comment"]="Выключатель 4Q",                                 ["Source"]="КТП №8516 (пан.03)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["7_i8"] = {["Tag"]="DI_PAN03_4Q_ON",        ["Comment"]="Выключатель 4Q",                                 ["Source"]="КТП №8516 (пан.03)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["7_i9"] = {["Tag"]="DI_PAN03_4Q_FL",        ["Comment"]="Неисправность 4Q",                               ["Source"]="КТП №8516 (пан.03)",       Txt_1 =": неисправен",                           Txt_0 =": исправен"},
--["7_i10"] = {["Tag"]="DI_PAN03_4Q_AvOFF",    ["Comment"]="Аварийное отключение 4Q",                        ["Source"]="КТП №8516 (пан.03)",       Txt_1 =": произошло",                            Txt_0 =": устранено"},
--["7_i11"] = {["Tag"]="DI_PAN03_4Q_SQ_OUT",   ["Comment"]="Положение тележки выключателя 4Q",               ["Source"]="КТП №8516 (пан.03)",       Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
--["7_i12"] = {["Tag"]="DI_PAN03_4Q_SQ_IN",    ["Comment"]="Положение тележки выключателя 4Q",               ["Source"]="КТП №8516 (пан.03)",       Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
--["7_i13"] = {["Tag"]="DI_PAN03_6Q_OFF",      ["Comment"]="Выключатель 6Q",                                 ["Source"]="КТП №8516 (пан.03)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["7_i14"] = {["Tag"]="DI_PAN03_6Q_ON",       ["Comment"]="Выключатель 6Q",                                 ["Source"]="КТП №8516 (пан.07)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["7_i15"] = {["Tag"]="DI_PAN07_2Q_OFF",      ["Comment"]="Выключатель 2Q",                                 ["Source"]="КТП №8516 (пан.07)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["7_i16"] = {["Tag"]="DI_PAN07_2Q_ON",       ["Comment"]="Выключатель 2Q",                                 ["Source"]="КТП №8516 (пан.07)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["8_i1"] = {["Tag"]="DI_PAN07_2Q_FL",        ["Comment"]="Неисправность 2Q",                               ["Source"]="КТП №8516 (пан.07)",       Txt_1 =": неисправен",                           Txt_0 =": исправен"},
--["8_i2"] = {["Tag"]="DI_PAN07_2Q_AvOFF",     ["Comment"]="Аварийное отключение 2Q",                        ["Source"]="КТП №8516 (пан.07)",       Txt_1 =": произошло",                            Txt_0 =": устранено"},
--["8_i3"] = {["Tag"]="DI_PAN07_2Q_SQ_OUT",    ["Comment"]="Положение тележки выключателя 2Q",               ["Source"]="КТП №8516 (пан.07)",       Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
--["8_i4"] = {["Tag"]="DI_PAN07_2Q_SQ_IN",     ["Comment"]="Положение тележки выключателя 2Q",               ["Source"]="КТП №8516 (пан.09)",       Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
--["8_i5"] = {["Tag"]="DI_PAN09_3Q_OFF",       ["Comment"]="Выключатель 3Q",                                 ["Source"]="КТП №8516 (пан.09)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["8_i6"] = {["Tag"]="DI_PAN09_3Q_ON",        ["Comment"]="Выключатель 3Q",                                 ["Source"]="КТП №8516 (пан.09)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["8_i7"] = {["Tag"]="DI_PAN09_3Q_FL",        ["Comment"]="Неисправность 3Q",                               ["Source"]="КТП №8516 (пан.09)",       Txt_1 =": неисправен",                           Txt_0 =": исправен"},
--["8_i8"] = {["Tag"]="DI_PAN09_3Q_AvOFF",     ["Comment"]="Аварийное отключение 3Q",                        ["Source"]="КТП №8516 (пан.09)",       Txt_1 =": произошло",                            Txt_0 =": устранено"},
--["8_i9"] = {["Tag"]="DI_PAN09_3Q_SQ_OUT",    ["Comment"]="Положение тележки выключателя 3Q",               ["Source"]="КТП №8516 (пан.09)",       Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
--["8_i10"] = {["Tag"]="DI_PAN09_3Q_SQ_IN",    ["Comment"]="Положение тележки выключателя 3Q",               ["Source"]="КТП №8516 (пан.13)",       Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
--["8_i11"] = {["Tag"]="DI_PAN13_5Q_OFF",      ["Comment"]="Выключатель 5Q",                                 ["Source"]="КТП №8516 (пан.13)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["8_i12"] = {["Tag"]="DI_PAN13_5Q_ON",       ["Comment"]="Выключатель 5Q",                                 ["Source"]="КТП №8516 (пан.13)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["8_i13"] = {["Tag"]="DI_PAN13_5Q_SQ_OUT",   ["Comment"]="Положение тележки выключателя 5Q",               ["Source"]="КТП №8516 (пан.13)",       Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
--["8_i14"] = {["Tag"]="DI_PAN13_5Q_SQ_IN",    ["Comment"]="Положение тележки выключателя 5Q",               ["Source"]="КТП №8516 (пан.08)",       Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
--["8_i15"] = {["Tag"]="DI_PAN08_3Q_AVR_OFF",  ["Comment"]="АВР СВ",                                         ["Source"]="КТП №8516 (пан.08)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["8_i16"] = {["Tag"]="DI_PAN08_3Q_AVR_ON",   ["Comment"]="АВР СВ",                                         ["Source"]="КТП №8516 (пан.08)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["9_i1"] = {["Tag"]="DI_PAN08_3Q_AVR_FL",    ["Comment"]="Отказ АВР СВ",                                   ["Source"]="КТП №8516 (пан.08)",       Txt_1 =": произошел",                            Txt_0 =": устранено"},
--["9_i2"] = {["Tag"]="DI_PAN08_3Q_AVR_WK",    ["Comment"]="Сработка АВР СВ",                                ["Source"]="КТП №8516 (пан.08)",       Txt_1 =": произошла",                            Txt_0 =": произошла"},
--["9_i3"] = {["Tag"]="DI_PAN08_3Q_AVR_RT",    ["Comment"]="Возврат АВР СВ",                                 ["Source"]="КТП №8516 (пан.08)",       Txt_1 =": произошел",                            Txt_0 =": произошел"},
--["9_i4"] = {["Tag"]="DI_PAN08_3Q_AVR_FLRT",  ["Comment"]="Отказ возврата АВР СВ",                          ["Source"]="КТП №8516 (пан.02)",       Txt_1 =": произошел",                            Txt_0 =": произошел"},
--["9_i5"] = {["Tag"]="DI_PAN02_4Q_AVR_OFF",   ["Comment"]="АВР АВ",                                         ["Source"]="КТП №8516 (пан.02)",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["9_i6"] = {["Tag"]="DI_PAN02_4Q_AVR_ON",    ["Comment"]="АВР АВ",                                         ["Source"]="КТП №8516 (пан.02)",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["9_i7"] = {["Tag"]="DI_PAN02_4Q_AVR_FL",    ["Comment"]="Отказ АВР АВ",                                   ["Source"]="КТП №8516 (пан.02)",       Txt_1 =": произошел",                            Txt_0 =": произошел"},
--["9_i8"] = {["Tag"]="DI_PAN02_4Q_AVR_WK",    ["Comment"]="Сработка АВР АВ",                                ["Source"]="КТП №8516 (пан.02)",       Txt_1 =": произошла",                            Txt_0 =": произошла"},
--["9_i9"] = {["Tag"]="DI_PAN02_4Q_AVR_RT",    ["Comment"]="Возврат АВР АВ",                                 ["Source"]="КТП №8516 (пан.02)",       Txt_1 =": произошел",                            Txt_0 =": произошел"},
--["9_i10"] = {["Tag"]="DI_PAN02_4Q_AVR_FLRT", ["Comment"]="Отказ возврата АВР АВ",                          ["Source"]="КТП №8516 (пан.13)",       Txt_1 =": произошел",                            Txt_0 =": произошел"},
--["9_i11"] = {["Tag"]="DI_PAN13_5Q_AvOFF",    ["Comment"]="Аварийное выключение 5Q",                        ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": произошло",                            Txt_0 =": произошло"},
--["9_i12"] = {["Tag"]="DI_ADES_FL",           ["Comment"]="Неисправность АДЭС",                             ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["9_i13"] = {["Tag"]="DI_KTP1_FL",           ["Comment"]="Неисправность КТП",                              ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["9_i14"] = {["Tag"]="DI_X_POS_CONT",        ["Comment"]="Положение выключателя 'управление от АСУ'",      ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": дистанционное",                        Txt_0 =": местное"},
--["9_i15"] = {["Tag"]="DI_TR1_T_OL",          ["Comment"]="Температурная перегрузка трансформатора 1",      ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["9_i16"] = {["Tag"]="DI_TR2_T_OL",          ["Comment"]="Температурная перегрузка трансформатора 2",      ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["10_i1"] = {["Tag"]="DI_ADES_OL",           ["Comment"]="Перегрузка АДЭС",                                ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["10_i2"] = {["Tag"]="DI_ADES_AVG_ON",       ["Comment"]="АВГ",                                            ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =" включен",                               Txt_0 =" включен"},
--["10_i3"] = {["Tag"]="DI_ADES_AVG_OFF",      ["Comment"]="АВГ",                                            ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
--["10_i4"] = {["Tag"]="DI_ADES_DG_RD",        ["Comment"]="Готовность ДГ",                                  ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["10_i5"] = {["Tag"]="DI_ADES_DG_WK",        ["Comment"]="Работа",                                         ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["10_i6"] = {["Tag"]="DI_ADES_DG_OL",        ["Comment"]="Перегрузка ДГ",                                  ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["10_i7"] = {["Tag"]="DI_ADES_DG_FL",        ["Comment"]="Неисправность ДГ",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =": активна",                              Txt_0 =": неактивна"},
--["10_i8"] = {["Tag"]="DI_X_RES13",           ["Comment"]="",                                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i9"] = {["Tag"]="DI_X_RES14",           ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i10"] = {["Tag"]="DI_X_RES15",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i11"] = {["Tag"]="DI_X_RES16",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i12"] = {["Tag"]="DI_X_RES17",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i13"] = {["Tag"]="DI_X_RES18",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i14"] = {["Tag"]="DI_X_RES19",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i15"] = {["Tag"]="DI_X_RES20",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--["10_i16"] = {["Tag"]="DI_X_RES21",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =" (1)",                                   Txt_0 ="(0)"},
--}

local ai_signals = {
["3_i1"] = {["Tag"] = "AI_PAN01_1Q_CUR_B"     ,["Comment"] = "Ток фазы B ввода 1Q"                   , ["Source"] ="КТП №8516 (пан.01), 1Q",     ["LL"]=0, ["LH"]=0, ["HL"]=1800, ["HH"]=1999, ["SWHH"] = false,     ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["3_i2"] = {["Tag"] = "AI_PAN01_1Q_V_AC"      ,["Comment"] = "Напряжение U AC на вводе 1Q"           , ["Source"] ="КТП №8516, 1-я секция. ТН.", ["LL"]=0, ["LH"]=0, ["HL"]=1950, ["HH"]=1999, ["SWHH"] = false,     ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["3_i3"] = {["Tag"] = "AI_PAN01_1SEC_V_BC"    ,["Comment"] = "Напряжение U ВC на 1секции"            , ["Source"] ="КТП №8516, 1-я секция. ТН.", ["LL"]=350, ["LH"]=360, ["HL"]=420, ["HH"]=440, ["SWHH"] = false,   ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["3_i4"] = {["Tag"] = "AI_PAN07_2Q_CUR_B"     ,["Comment"] = "Ток фазы B ввода 2Q"                   , ["Source"] ="КТП №8516 (пан.07), 2Q",     ["LL"]=350, ["LH"]=360, ["HL"]=420, ["HH"]=440, ["SWHH"] = false,   ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["4_i1"] = {["Tag"] = "AI_PAN07_2Q_V_AC"      ,["Comment"] = "Напряжение U AC на вводе 2Q"           , ["Source"] ="КТП №8516 (пан.07), 2Q",     ["LL"]=0, ["LH"]=0, ["HL"]=2050, ["HH"]=2100, ["SWHH"] = false,     ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["4_i2"] = {["Tag"] = "AI_PAN07_2SEC_V_BC"    ,["Comment"] = "Напряжение U ВC на 2 секции"           , ["Source"] ="КТП №8516, 2-я секция. ТН.", ["LL"]=350, ["LH"]=360, ["HL"]=420, ["HH"]=440, ["SWHH"] = false,   ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["4_i3"] = {["Tag"] = "AI_X_CUR_AC"           ,["Comment"] = "Ток фазы С АС"                         , ["Source"] ="КТП №8516, 2-я секция. ТН.", ["LL"]=5, ["LH"]=6, ["HL"]=7, ["HH"]=8, ["SWHH"] = false,           ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["4_i4"] = {["Tag"] = "AI_X_RES01"            ,["Comment"] = "УСО КТП1. Резерв(изм. напряжения)"     , ["Source"] ="Щит УСО КТП1. ПЛК А1",       ["LL"]=6, ["LH"]=7, ["HL"]=8, ["HH"]=9, ["SWHH"] = false,           ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["5_i1"] = {["Tag"] = "AI_X_RES02"            ,["Comment"] = "Температура в КТП 8516"                , ["Source"] ="Щит УСО КТП1. ПЛК А1",       ["LL"] = -50, ["LH"] = -25, ["HL"] = 25, ["HH"] = 50, ["SWHH"] = false,          ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["5_i2"] = {["Tag"] = "AI_X_RES03"            ,["Comment"] = "УСО КТП1. Резерв"                      , ["Source"] ="Щит УСО КТП1. ПЛК А1",       ["LL"]=8, ["LH"]=9, ["HL"]=10, ["HH"]=11, ["SWHH"] = false,         ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["5_i3"] = {["Tag"] = "AI_X_RES04"            ,["Comment"] = "УСО КТП1. Резерв"                      , ["Source"] ="Щит УСО КТП1. ПЛК А1",       ["LL"]=9, ["LH"]=10, ["HL"]=11, ["HH"]=12, ["SWHH"] = false,        ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
["5_i4"] = {["Tag"] = "AI_X_RES05"            ,["Comment"] = "УСО КТП1. Резерв"                      , ["Source"] ="Щит УСО КТП1. ПЛК А1",       ["LL"]=10, ["LH"]=11, ["HL"]=12, ["HH"]=13, ["SWHH"] = false,       ["SWHL"] = false, ["SWLL"] = false, ["SWLH"] = false },
}

--local function add_signal_event(data_table)
--  local e_type
--  if Core[scada_signal_prefix..data_table["Tag"]..".Value"] then
--    local msg_text = scada_signal_prefix..data_table["Comment"].." : "..data_table["Txt_1"]
--    e_type = 1
--    Core.addEvent(msg_text, 10100, e_type, data_table["Source"], "", scada_signal_prefix..data_table["Tag"]..".Value")
--  else
--    local msg_text = scada_signal_prefix..data_table["Comment"].." : "..data_table["Txt_0"]
--    e_type = 0
--    Core.addEvent(msg_text, 10100, e_type, data_table["Source"], "", scada_signal_prefix..data_table["Tag"]..".Value")
--  end
--end

local function add_borders_event()
  local e_type
  for plc_prefix, data_table in pairs(ai_signals) do
    local signal_value = math.floor(Core[scada_signal_prefix..data_table["Tag"]..".Value"])
    local signal = scada_signal_prefix..data_table["Tag"]
    local hh = Core[scada_signal_prefix..data_table["Tag"]..".HH"]
    local hl = Core[scada_signal_prefix..data_table["Tag"]..".HL"]
    local ll = Core[scada_signal_prefix..data_table["Tag"]..".LL"]
    local lh = Core[scada_signal_prefix..data_table["Tag"]..".LH"]
    local status = Core[scada_signal_prefix..data_table["Tag"]..".reliabilityFlag"]
    local hh_en = Core[scada_signal_prefix..data_table["Tag"]..".HH_en"]
    local hl_en = Core[scada_signal_prefix..data_table["Tag"]..".HL_en"]
    local ll_en = Core[scada_signal_prefix..data_table["Tag"]..".LL_en"]
    local lh_en = Core[scada_signal_prefix..data_table["Tag"]..".LH_en"]



    if status then
      Core[scada_signal_prefix..data_table["Tag"]..".OldValue"] = signal_value
    end
--    Core.addLogMsg(signal)
--  local sw = ai_signals[plc_prefix]["SW"]
    if signal_value > math.floor(hl) and not ai_signals[plc_prefix]["SWHL"] and status and hl_en then
      e_type = 1
      local msg_text = data_table["Comment"]..": Выход за верхнюю предупредительную границу"
      Core.addEvent(msg_text, 10100, e_type, data_table["Source"], "", signal.."SWHL")
      ai_signals[plc_prefix]["SWHL"] = true
      Core.addLogMsg(msg_text)
    end
    
    if signal_value < math.floor(hl) and ai_signals[plc_prefix]["SWHL"] and status and hl_en then
      e_type = 0
      local msg_text = data_table["Comment"]..": Выход за верхнюю предупредительную границу"
      Core.addEvent(msg_text, 10100, e_type, data_table["Source"], "", signal.."SWHL")
      ai_signals[plc_prefix]["SWHL"] = false
      Core.addLogMsg(msg_text)
    end
    
    if signal_value > math.floor(hh) and not ai_signals[plc_prefix]["SWHH"] and status and hh_en then
      e_type = 1
      local msg_text = data_table["Comment"]..": Выход за верхнюю аварийную границу"
      Core.addEvent(msg_text, 10000, e_type, data_table["Source"], "", signal.."SWHH")
      ai_signals[plc_prefix]["SWHH"] = true
      Core.addLogMsg(msg_text)
    end
    
    if signal_value < math.floor(hh) and ai_signals[plc_prefix]["SWHH"] and status and hh_en then
      e_type = 0
      local msg_text = data_table["Comment"]..": Выход за верхнюю аварийную границу"
      Core.addEvent(msg_text, 10000, e_type, data_table["Source"], "", signal.."SWHH")
      ai_signals[plc_prefix]["SWHH"] = false
      Core.addLogMsg(msg_text)
    end
      
    
    if signal_value < math.floor(lh) and not ai_signals[plc_prefix]["SWLH"] and status and lh_en then
      e_type = 1
      local msg_text = data_table["Comment"]..": Выход за нижнюю предупредительную границу"
      Core.addEvent(msg_text, 10100, e_type, data_table["Source"], "", signal.."SWLH")
      ai_signals[plc_prefix]["SWLH"] = true
      Core.addLogMsg(msg_text)
    end
    
    if signal_value > math.floor(lh) and ai_signals[plc_prefix]["SWLH"] and status and lh_en then
      e_type = 0
      local msg_text = data_table["Comment"]..": Выход за нижнюю предупредительную границу"
      Core.addEvent(msg_text, 10100, e_type, data_table["Source"], "", signal.."SWLH")
      ai_signals[plc_prefix]["SWLH"] = false
      Core.addLogMsg(msg_text)
    end
    
    if signal_value < math.floor(ll) and not ai_signals[plc_prefix]["SWLL"] and status and ll_en then
      e_type = 1
      local msg_text = data_table["Comment"]..": Выход за нижнюю аварийную границу"
      Core.addEvent(msg_text, 10000, e_type, data_table["Source"], "", signal.."SWLL")
      ai_signals[plc_prefix]["SWLL"] = true
      Core.addLogMsg(msg_text)
    end
    
    if signal_value > math.floor(ll) and ai_signals[plc_prefix]["SWLL"] and status and ll_en then
      e_type = 0
      local msg_text = data_table["Comment"]..": Выход за нижнюю аварийную границу"
      Core.addEvent(msg_text, 10000, e_type, data_table["Source"], "", signal.."SWLL")
      ai_signals[plc_prefix]["SWLL"] = false
      Core.addLogMsg(msg_text)
    end
  end
end
  
  
--for plc_tag, data_table in pairs(di_signals) do 
--  Core.onExtChange({scada_signal_prefix..data_table["Tag"]..".Value"}, add_signal_event, data_table)
--end

Core.onTimer(1, 1.5, add_borders_event)


Core.waitEvents()
--if Core[plc_signal_prefix.."FAULT.Slot"..string.match(,"%d*")] < 2 29000