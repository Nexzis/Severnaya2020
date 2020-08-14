local scada_signal_prefix = "GSP_SEV_KSSEV_E_USOKTP1_"

local signals = {
["6_i1"] = {["Tag"]="DI_DIAGN_1",            ["Comment"]="Контроль основного питания =220В",               ["Source"]="КРУ-10 кВ. УСО КТП1",   ["InvFlag"]=true ,  Txt_1 =" в норме",                               Txt_0 =" отсутствует"},
["6_i2"] = {["Tag"]="DI_DIAGN_2",            ["Comment"]="Контроль резервного питания =220В",              ["Source"]="КРУ-10 кВ. УСО КТП1",   ["InvFlag"]=true ,  Txt_1 =" в норме",                               Txt_0 =" отсутствует"},
["6_i3"] = {["Tag"]="DI_DIAGN_3",            ["Comment"]="Контроль исправности разрядников",               ["Source"]="КРУ-10 кВ. УСО КТП2",   ["InvFlag"]=true ,  Txt_1 =" в норме",                               Txt_0 =" неисправны"},
["6_i4"] = {["Tag"]="DI_DIAGN_4",            ["Comment"]="Вход DC (наличие напряжения на входе инвертора", ["Source"]="КРУ-10 кВ. УСО КТП1",   ["InvFlag"]=true ,  Txt_1 =" включен",                               Txt_0 =" отключен"},
["6_i5"] = {["Tag"]="DI_DIAGN_5",            ["Comment"]="Авария(инвертер)",                               ["Source"]="КРУ-10 кВ. УСО КТП1",   ["InvFlag"]=true ,  Txt_1 =" произошла",                             Txt_0 =" устранена"},
["6_i6"] = {["Tag"]="DI_DIAGN_6",            ["Comment"]="Автоматы питания",                               ["Source"]="КРУ-10 кВ. УСО КТП1",   ["InvFlag"]=false,   Txt_1 =" включены",                              Txt_0 =" отключены"},
["6_i7"] = {["Tag"]="DI_DIAGN_7",            ["Comment"]="Двери  шкафа",                                   ["Source"]="КРУ-10 кВ. УСО КТП2",   ["InvFlag"]=true ,  Txt_1 =" открыты",                               Txt_0 =" закрыты"},
["6_i8"] = {["Tag"]="DI_DIAGN_8",            ["Comment"]="Основной ИП =24В внутренних цепей",              ["Source"]="КРУ-10 кВ. УСО КТП1",   ["InvFlag"]=false,   Txt_1 =" исправен",                              Txt_0 =" неисправен"},
["6_i9"] = {["Tag"]="DI_DIAGN_9",            ["Comment"]="Резервный ИП =24В внутренних цепей",             ["Source"]="КРУ-10 кВ. УСО КТП1",   ["InvFlag"]=false,   Txt_1 =" исправен",                              Txt_0 =" неисправен"},
["6_i10"] = {["Tag"]="DI_DIAGN_RES06",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["6_i11"] = {["Tag"]="DI_DIAGN_RES07",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["6_i12"] = {["Tag"]="DI_DIAGN_RES8",        ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["6_i13"] = {["Tag"]="DI_DIAGN_RES09",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["6_i14"] = {["Tag"]="DI_DIAGN_RES10",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["6_i15"] = {["Tag"]="DI_DIAGN_RES11",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["6_i16"] = {["Tag"]="DI_DIAGN_RES12",       ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="КТП №8516 (пан.01)",    ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(|)"},
["7_i1"] = {["Tag"]="DI_PAN01_1Q_OFF",       ["Comment"]="Выключатель 1Q",                                 ["Source"]="КТП №8516 (пан.01)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["7_i2"] = {["Tag"]="DI_PAN01_1Q_ON",        ["Comment"]="Выключатель 1Q",                                 ["Source"]="КТП №8516 (пан.01)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["7_i3"] = {["Tag"]="DI_PAN01_1Q_FL",        ["Comment"]="Неисправность 1Q",                               ["Source"]="КТП №8516 (пан.01)",    ["InvFlag"]=false,   Txt_1 =": неисправен",                           Txt_0 =": исправен"},
["7_i4"] = {["Tag"]="DI_PAN01_1Q_AvOFF",     ["Comment"]="Аварийное отключение 1Q",                        ["Source"]="КТП №8516 (пан.01)",    ["InvFlag"]=false,   Txt_1 =": произошло",                            Txt_0 =": устранено"},
["7_i5"] = {["Tag"]="DI_PAN01_1Q_SQ_OUT",    ["Comment"]="Положение тележки выключателя 1Q",               ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
["7_i6"] = {["Tag"]="DI_PAN01_1Q_SQ_IN",     ["Comment"]="Положение тележки выключателя 1Q",               ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
["7_i7"] = {["Tag"]="DI_PAN03_4Q_OFF",       ["Comment"]="Выключатель 4Q",                                 ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["7_i8"] = {["Tag"]="DI_PAN03_4Q_ON",        ["Comment"]="Выключатель 4Q",                                 ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["7_i9"] = {["Tag"]="DI_PAN03_4Q_FL",        ["Comment"]="Неисправность 4Q",                               ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =": неисправен",                           Txt_0 =": исправен"},
["7_i10"] = {["Tag"]="DI_PAN03_4Q_AvOFF",    ["Comment"]="Аварийное отключение 4Q",                        ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =": произошло",                            Txt_0 =": устранено"},
["7_i11"] = {["Tag"]="DI_PAN03_4Q_SQ_OUT",   ["Comment"]="Положение тележки выключателя 4Q",               ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
["7_i12"] = {["Tag"]="DI_PAN03_4Q_SQ_IN",    ["Comment"]="Положение тележки выключателя 4Q",               ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
["7_i13"] = {["Tag"]="DI_PAN03_6Q_OFF",      ["Comment"]="Выключатель 6Q",                                 ["Source"]="КТП №8516 (пан.03)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["7_i14"] = {["Tag"]="DI_PAN03_6Q_ON",       ["Comment"]="Выключатель 6Q",                                 ["Source"]="КТП №8516 (пан.07)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["7_i15"] = {["Tag"]="DI_PAN07_2Q_OFF",      ["Comment"]="Выключатель 2Q",                                 ["Source"]="КТП №8516 (пан.07)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["7_i16"] = {["Tag"]="DI_PAN07_2Q_ON",       ["Comment"]="Выключатель 2Q",                                 ["Source"]="КТП №8516 (пан.07)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["8_i1"] = {["Tag"]="DI_PAN07_2Q_FL",        ["Comment"]="Неисправность 2Q",                               ["Source"]="КТП №8516 (пан.07)",    ["InvFlag"]=false,   Txt_1 =": неисправен",                           Txt_0 =": исправен"},
["8_i2"] = {["Tag"]="DI_PAN07_2Q_AvOFF",     ["Comment"]="Аварийное отключение 2Q",                        ["Source"]="КТП №8516 (пан.07)",    ["InvFlag"]=false,   Txt_1 =": произошло",                            Txt_0 =": устранено"},
["8_i3"] = {["Tag"]="DI_PAN07_2Q_SQ_OUT",    ["Comment"]="Положение тележки выключателя 2Q",               ["Source"]="КТП №8516 (пан.07)",    ["InvFlag"]=false,   Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
["8_i4"] = {["Tag"]="DI_PAN07_2Q_SQ_IN",     ["Comment"]="Положение тележки выключателя 2Q",               ["Source"]="КТП №8516 (пан.09)",    ["InvFlag"]=false,   Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
["8_i5"] = {["Tag"]="DI_PAN09_3Q_OFF",       ["Comment"]="Выключатель 3Q",                                 ["Source"]="КТП №8516 (пан.09)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["8_i6"] = {["Tag"]="DI_PAN09_3Q_ON",        ["Comment"]="Выключатель 3Q",                                 ["Source"]="КТП №8516 (пан.09)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["8_i7"] = {["Tag"]="DI_PAN09_3Q_FL",        ["Comment"]="Неисправность 3Q",                               ["Source"]="КТП №8516 (пан.09)",    ["InvFlag"]=false,   Txt_1 =": неисправен",                           Txt_0 =": исправен"},
["8_i8"] = {["Tag"]="DI_PAN09_3Q_AvOFF",     ["Comment"]="Аварийное отключение 3Q",                        ["Source"]="КТП №8516 (пан.09)",    ["InvFlag"]=false,   Txt_1 =": произошло",                            Txt_0 =": устранено"},
["8_i9"] = {["Tag"]="DI_PAN09_3Q_SQ_OUT",    ["Comment"]="Положение тележки выключателя 3Q",               ["Source"]="КТП №8516 (пан.09)",    ["InvFlag"]=false,   Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
["8_i10"] = {["Tag"]="DI_PAN09_3Q_SQ_IN",    ["Comment"]="Положение тележки выключателя 3Q",               ["Source"]="КТП №8516 (пан.13)",    ["InvFlag"]=false,   Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
["8_i11"] = {["Tag"]="DI_PAN13_5Q_OFF",      ["Comment"]="Выключатель 5Q",                                 ["Source"]="КТП №8516 (пан.13)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["8_i12"] = {["Tag"]="DI_PAN13_5Q_ON",       ["Comment"]="Выключатель 5Q",                                 ["Source"]="КТП №8516 (пан.13)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["8_i13"] = {["Tag"]="DI_PAN13_5Q_SQ_OUT",   ["Comment"]="Положение тележки выключателя 5Q",               ["Source"]="КТП №8516 (пан.13)",    ["InvFlag"]=false,   Txt_1 =": выкачена",                             Txt_0 =": вкачена"},
["8_i14"] = {["Tag"]="DI_PAN13_5Q_SQ_IN",    ["Comment"]="Положение тележки выключателя 5Q",               ["Source"]="КТП №8516 (пан.08)",    ["InvFlag"]=false,   Txt_1 =": 'Рабочее положение'",                  Txt_0 =": 'Рабочее положение'"},
["8_i15"] = {["Tag"]="DI_PAN08_3Q_AVR_OFF",  ["Comment"]="АВР СВ",                                         ["Source"]="КТП №8516 (пан.08)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["8_i16"] = {["Tag"]="DI_PAN08_3Q_AVR_ON",   ["Comment"]="АВР СВ",                                         ["Source"]="КТП №8516 (пан.08)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["9_i1"] = {["Tag"]="DI_PAN08_3Q_AVR_FL",    ["Comment"]="Отказ АВР СВ",                                   ["Source"]="КТП №8516 (пан.08)",    ["InvFlag"]=false,   Txt_1 =": произошел",                            Txt_0 =": устранено"},
["9_i2"] = {["Tag"]="DI_PAN08_3Q_AVR_WK",    ["Comment"]="Сработка АВР СВ",                                ["Source"]="КТП №8516 (пан.08)",    ["InvFlag"]=false,   Txt_1 =": произошла",                            Txt_0 =": произошла"},
["9_i3"] = {["Tag"]="DI_PAN08_3Q_AVR_RT",    ["Comment"]="Возврат АВР СВ",                                 ["Source"]="КТП №8516 (пан.08)",    ["InvFlag"]=false,   Txt_1 =": произошел",                            Txt_0 =": произошел"},
["9_i4"] = {["Tag"]="DI_PAN08_3Q_AVR_FLRT",  ["Comment"]="Отказ возврата АВР СВ",                          ["Source"]="КТП №8516 (пан.02)",    ["InvFlag"]=false,   Txt_1 =": произошел",                            Txt_0 =": произошел"},
["9_i5"] = {["Tag"]="DI_PAN02_4Q_AVR_OFF",   ["Comment"]="АВР АВ",                                         ["Source"]="КТП №8516 (пан.02)",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["9_i6"] = {["Tag"]="DI_PAN02_4Q_AVR_ON",    ["Comment"]="АВР АВ",                                         ["Source"]="КТП №8516 (пан.02)",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["9_i7"] = {["Tag"]="DI_PAN02_4Q_AVR_FL",    ["Comment"]="Отказ АВР АВ",                                   ["Source"]="КТП №8516 (пан.02)",    ["InvFlag"]=false,   Txt_1 =": произошел",                            Txt_0 =": произошел"},
["9_i8"] = {["Tag"]="DI_PAN02_4Q_AVR_WK",    ["Comment"]="Сработка АВР АВ",                                ["Source"]="КТП №8516 (пан.02)",    ["InvFlag"]=false,   Txt_1 =": произошла",                            Txt_0 =": произошла"},
["9_i9"] = {["Tag"]="DI_PAN02_4Q_AVR_RT",    ["Comment"]="Возврат АВР АВ",                                 ["Source"]="КТП №8516 (пан.02)",    ["InvFlag"]=false,   Txt_1 =": произошел",                            Txt_0 =": произошел"},
["9_i10"] = {["Tag"]="DI_PAN02_4Q_AVR_FLRT", ["Comment"]="Отказ возврата АВР АВ",                          ["Source"]="КТП №8516 (пан.13)",    ["InvFlag"]=false,   Txt_1 =": произошел",                            Txt_0 =": произошел"},
["9_i11"] = {["Tag"]="DI_PAN13_5Q_AvOFF",    ["Comment"]="Аварийное выключение 5Q",                        ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": произошло",                            Txt_0 =": произошло"},
["9_i12"] = {["Tag"]="DI_ADES_FL",           ["Comment"]="Неисправность АДЭС",                             ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["9_i13"] = {["Tag"]="DI_KTP1_FL",           ["Comment"]="Неисправность КТП",                              ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["9_i14"] = {["Tag"]="DI_X_POS_CONT",        ["Comment"]="Положение выключателя 'управление от АСУ'",      ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=true ,   Txt_1 =": дистанционное",                        Txt_0 =": местное"},
["9_i15"] = {["Tag"]="DI_TR1_T_OL",          ["Comment"]="Температурная перегрузка трансформатора 1",      ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["9_i16"] = {["Tag"]="DI_TR2_T_OL",          ["Comment"]="Температурная перегрузка трансформатора 2",      ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i1"] = {["Tag"]="DI_ADES_OL",           ["Comment"]="Перегрузка АДЭС",                                ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i2"] = {["Tag"]="DI_ADES_AVG_ON",       ["Comment"]="АВГ",                                            ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =" включен",                               Txt_0 =" включен"},
["10_i3"] = {["Tag"]="DI_ADES_AVG_OFF",      ["Comment"]="АВГ",                                            ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =" отключен",                              Txt_0 =" отключен"},
["10_i4"] = {["Tag"]="DI_ADES_DG_RD",        ["Comment"]="Готовность ДГ",                                  ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i5"] = {["Tag"]="DI_ADES_DG_WK",        ["Comment"]="Работа",                                         ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i6"] = {["Tag"]="DI_ADES_DG_OL",        ["Comment"]="Перегрузка ДГ",                                  ["Source"]="АДЭС КТП №8516. ПУ",    ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i7"] = {["Tag"]="DI_ADES_DG_FL",        ["Comment"]="Неисправность ДГ",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i8"] = {["Tag"]="DI_X_RES13",           ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i9"] = {["Tag"]="DI_X_RES14",           ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i10"] = {["Tag"]="DI_X_RES15",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i11"] = {["Tag"]="DI_X_RES16",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i12"] = {["Tag"]="DI_X_RES17",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i13"] = {["Tag"]="DI_X_RES18",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i14"] = {["Tag"]="DI_X_RES19",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i15"] = {["Tag"]="DI_X_RES20",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["10_i16"] = {["Tag"]="DI_X_RES21",          ["Comment"]="УСО КТП1. Резерв",                               ["Source"]="Щит УСО КТП1. ПЛК А1",  ["InvFlag"]=false,   Txt_1 =" (1)",                                   Txt_0 ="(0)"},
["3_i1"] = {["Tag"] = "AI_PAN01_1Q_CUR_B"     ,["Comment"] = "Ток фазы B ввода 1Q"                   , ["Source"] ="КТП №8516 (пан.01), 1Q"},
["3_i2"] = {["Tag"] = "AI_PAN01_1Q_V_AC"      ,["Comment"] = "Напряжение U AC на вводе 1Q"           , ["Source"] ="КТП №8516, 1-я секция. ТН."},
["3_i3"] = {["Tag"] = "AI_PAN01_1SEC_V_BC"    ,["Comment"] = "Напряжение U ВC на 1секции"            , ["Source"] ="КТП №8516, 1-я секция. ТН."},
["3_i4"] = {["Tag"] = "AI_PAN07_2Q_CUR_B"     ,["Comment"] = "Ток фазы B ввода 2Q"                   , ["Source"] ="КТП №8516 (пан.07), 2Q"},
["4_i1"] = {["Tag"] = "AI_PAN07_2Q_V_AC"      ,["Comment"] = "Напряжение U AC на вводе 2Q"           , ["Source"] ="КТП №8516 (пан.07), 2Q"},
["4_i2"] = {["Tag"] = "AI_PAN07_2SEC_V_BC"    ,["Comment"] = "Напряжение U ВC на 2 секции"           , ["Source"] ="КТП №8516, 2-я секция. ТН."},
["4_i3"] = {["Tag"] = "AI_X_CUR_AC"           ,["Comment"] = "Ток фазы С АС"                         , ["Source"] ="КТП №8516, 2-я секция. ТН."},
["4_i4"] = {["Tag"] = "AI_X_RES01"            ,["Comment"] = "УСО КТП1. Резерв(изм. напряжения)"     , ["Source"] ="Щит УСО КТП1. ПЛК А1"},
["5_i1"] = {["Tag"] = "AI_X_RES02"            ,["Comment"] = "УСО КТП1. Резерв"                      , ["Source"] ="Щит УСО КТП1. ПЛК А1"},
["5_i2"] = {["Tag"] = "AI_X_RES03"            ,["Comment"] = "УСО КТП1. Резерв"                      , ["Source"] ="Щит УСО КТП1. ПЛК А1"},
["5_i3"] = {["Tag"] = "AI_X_RES04"            ,["Comment"] = "УСО КТП1. Резерв"                      , ["Source"] ="Щит УСО КТП1. ПЛК А1"},
["5_i4"] = {["Tag"] = "AI_X_RES05"            ,["Comment"] = "УСО КТП1. Резерв"                      , ["Source"] ="Щит УСО КТП1. ПЛК А1"},
}

for _, data in pairs(signals) do
  if data["InvFlag"] ~= nil then
    Core[scada_signal_prefix..data["Tag"]..".InvFlag"] = data["InvFlag"]
  end
end






local status_prefix = {["_status"] = ".reliabilityFlag"}

local status_code = {
  ["0"] = "Канал не исправен",
  ["1"] = "устройство частично неисправно",
  ["2"] = "устройство полностью неисправно или не отвечает",
  ["4"] = "обрыв",
  ["8"] = "короткое замыкание",
  ["128"] = "состояние устройства (канала, слот) неизвестно",
}

local function add_signal_event(signal_name)
  local st_text = status_code[tostring(Core[scada_signal_prefix..signals[signal_name]["Tag"]..".reliabilityField"])]
  if st_text == nil then 
    st_text = status_code["2"]
  end
  local msg_text = signals[signal_name]["Comment"].." : "..st_text
  local e_type
  
  if Core[scada_signal_prefix..signals[signal_name]["Tag"]..".reliabilityFlag"] then 
    e_type = 0
  else
    e_type = 1
  end 
  if Core["@RESERVE"] ~= true then
    Core.addEvent(msg_text, 29000, e_type, signals[signal_name]["Source"])
  end  
end

local function slot_fault(slot_number)
  local msg_text
  local e_type
  Core.addLogMsg("Вызвана")
  if Core["USOKTP1_A1_FAULT.Slot"..slot_number] >= 2 then
    e_type = 1
    for plc_tag, data_table in pairs(signals) do
      local module_pref = string.match(plc_tag,"%d*")
      if module_pref == tostring(slot_number) then
        Core[scada_signal_prefix..data_table["Tag"]..".reliabilityFlag"] = false
        msg_text = data_table["Comment"]..": Слот неисправен"
        Core.addEvent(msg_text, 29000, e_type, data_table["Source"])
      end
    end
  elseif Core["USOKTP1_A1_FAULT.Slot"..slot_number] <= 1  then
    e_type = 0
    for plc_tag, data_table in pairs(signals)  do
      local module_pref = string.match(plc_tag,"%d*")
      local status = Core[scada_signal_prefix..data_table["Tag"]..".reliabilityField"]
      if module_pref == tostring(slot_number) then
        --Core[scada_signal_prefix..data_table["Tag"]..".reliabilityFlag"] = true
        msg_text = data_table["Comment"]..": Слот неисправен"
        Core.addEvent(msg_text, 29000, e_type, data_table["Source"])
      end
    end
  end
end

for plc_tag, data_table in pairs(signals) do 
  Core.onExtChange({scada_signal_prefix..data_table["Tag"]..".reliabilityFlag"}, add_signal_event, plc_tag)
end

for y = 3, 10, 1 do 
  Core.onExtChange({"USOKTP1_A1_FAULT.Slot"..y}, slot_fault, y)
end


Core.waitEvents()
--if Core[plc_signal_prefix.."FAULT.Slot"..string.match(,"%d*")] < 2 29000