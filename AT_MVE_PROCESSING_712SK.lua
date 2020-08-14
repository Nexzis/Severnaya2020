-- Программа для обработки сигналов снятых с драйвера устройства, их преобразования для дальнейшей работы в интерфейсе, генерации событий и аварий.
-- Данный код служит для преобразования сигналов от устройства WILO SK-712/w, находящегося на ВОС КС Северная
require "./lua_lib/acs_data_lib"
-- Ключом этой таблицаы является префикс необработанного сигнала, а значением префикс обработанного. Таблица нужна для автоматизации обработки сигналов и
-- исключения повторения одинакового кода
local objects = {
  ["RAW_1SK712_"]="VOS_SK712_CONTROL_PUMPS."
}

-- Ключом этой таблицы являются имена сигналов, значениями: описание и функция eval, необходимая для обработки того или иного сигнала, разными способами, в
-- зависимости от содержания сигнала с устройства(см. карту адресов устройства)
local signals = {	
    ["FRQ_RDYK"] = {["Comment"]="Готовность насосов бит 0-2, Частота в ручном режиме бит 8-15", ["eval"] = function(Name)
                                                                                                             local ready_bits = byte_to_bool(Core[Name[1].."FRQ_RDYK"], 2)
                                                                                                             Core[Name[2].."PUMP1_READY"] = ready_bits[1]
                                                                                                             Core[Name[2].."PUMP2_READY"] = ready_bits[2]
                                                                                                             Core[Name[2].."PUMP3_READY"] = ready_bits[3]
                                                                                                             
                                                                                                             freq_byte = word_to_byte(Core[Name[1].."FRQ_RDYK"], 1)
                                                                                                             Core[Name[2].."FRQ_MAN_MODE"] = freq_byte
                                                                                                           end },
                                                                                                          
    ["RUN_PERR"] = {["Comment"]="Обобщённая неисправность насосов бит 0-2, работа насосов бит 8-13", ["eval"] = function(Name)
                                                                                                                  local fault_run_pumps_bits = byte_to_bool(Core[Name[1].."RUN_PERR"], 12)
                                                                                                                  Core[Name[2].."PUMP1_WORK"] = fault_run_pumps_bits[9]
                                                                                                                  Core[Name[2].."PUMP2_WORK"] = fault_run_pumps_bits[10]
                                                                                                                  Core[Name[2].."PUMP3_WORK"] = fault_run_pumps_bits[11]
                                                                                                                  
                                                                                                                  Core[Name[2].."PUMP1_FAULT"] = fault_run_pumps_bits[1]
                                                                                                                  Core[Name[2].."PUMP2_FAULT"] = fault_run_pumps_bits[2]
                                                                                                                  Core[Name[2].."PUMP3_FAULT"] = fault_run_pumps_bits[3]                                                                        
                                                                                                                end },
    
    ["RDY_CONN"] = {["Comment"]="Контроллер насоса отвечает на запросы, состояние насосов бит 8-13", ["eval"] = function(Name)
                                                                                                                  local conn_rda_pumps_bits = byte_to_bool(Core[Name[1].."RDY_CONN"], 12)
                                                                                                                  Core[Name[2].."PUMP1_ANSW_REQ"] = conn_rda_pumps_bits[1]
                                                                                                                  Core[Name[2].."PUMP2_ANSW_REQ"] = conn_rda_pumps_bits[2]
                                                                                                                  Core[Name[2].."PUMP3_ANSW_REQ"] = conn_rda_pumps_bits[3]
                                                                                                                  
                                                                                                                  Core[Name[2].."PUMP1_READY_AUTO"] = conn_rda_pumps_bits[9]
                                                                                                                  Core[Name[2].."PUMP2_READY_AUTO"] = conn_rda_pumps_bits[10]
                                                                                                                  Core[Name[2].."PUMP3_READY_AUTO"] = conn_rda_pumps_bits[11]                                                                        
                                                                                                                end },
    
    ["STAT_INPS"] = {["Comment"]="Состояние диск. входов бит 0-5, слово сосотояние системы бит 11-15", ["eval"] = function(Name)
                                                                                                               local di_stat_bits = byte_to_bool(Core[Name[1].."STAT_INPS"], 15)
                                                                                                               Core[Name[2].."DI_IN0"] = di_stat_bits[1]
                                                                                                               Core[Name[2].."DI_IN1"] = di_stat_bits[2]
                                                                                                               Core[Name[2].."DI_IN2"] = di_stat_bits[3]
                                                                                                               Core[Name[2].."DI_IN3"] = di_stat_bits[4]
                                                                                                               Core[Name[2].."DI_IN4"] = di_stat_bits[5]
                                                                                                               Core[Name[2].."DI_IN5"] = di_stat_bits[6]
                                                                                                               
                                                                                                               Core[Name[2].."SYSTEM_WORK"] = di_stat_bits[12]                                                                                                              
                                                                                                               Core[Name[2].."SYSTEM_FAULT"] = di_stat_bits[14]                                                                        
                                                                                                               Core[Name[2].."SYSTEM_READY_AUTO"] = di_stat_bits[15]                                                                        
                                                                                                               Core[Name[2].."SYSTEM_IN_MANUAL"] = di_stat_bits[16]                                                                        
                                                                                                             end },
                                                                                                             
                                                                                                             
    ["PRESS"] = {["Comment"]="Давление/уровень 1ед 0.01 бар", ["eval"] = function(Name) Core[Name[2].."PRESS"] = Core[Name[1].."PRESS"] * 0.01 end },
    
    ["ER0X"] = {["Comment"]="Слово состояния ошибок системы", ["eval"] = function(Name) 
                                                                           local er0x_bits = byte_to_bool(Core[Name[1].."ER0X"], 7)
                                                                           Core[Name[2].."E_0_0"] = er0x_bits[1]
                                                                           Core[Name[2].."E_0_1"] = er0x_bits[2]
                                                                           Core[Name[2].."E_0_2"] = er0x_bits[3]
                                                                           Core[Name[2].."E_0_3"] = er0x_bits[4]
                                                                           Core[Name[2].."E_0_4"] = er0x_bits[5]
                                                                           Core[Name[2].."E_0_5"] = er0x_bits[6]
                                                                           Core[Name[2].."E_0_6"] = er0x_bits[7]
                                                                           Core[Name[2].."E_0_7"] = er0x_bits[8]
                                                                         end },
                                                                      
    ["ER1X"] = {["Comment"]="Слово состояния ошибок насоса 1", ["eval"] = function(Name) 
                                                                            local er1x_bits = byte_to_bool(Core[Name[1].."ER1X"], 7)
                                                                            Core[Name[2].."E_1_0"] = er1x_bits[1]
                                                                            Core[Name[2].."E_1_1"] = er1x_bits[2]
                                                                            Core[Name[2].."E_1_2"] = er1x_bits[3]
                                                                            Core[Name[2].."E_1_3"] = er1x_bits[4]
                                                                            Core[Name[2].."E_1_4"] = er1x_bits[5]
                                                                            Core[Name[2].."E_1_5"] = er1x_bits[6]
                                                                            Core[Name[2].."E_1_6"] = er1x_bits[7]
                                                                            Core[Name[2].."E_1_7"] = er1x_bits[8]
                                                                          end },
                                                                      
    ["ER2X"] = {["Comment"]="Слово состояния ошибок насоса 2", ["eval"] = function(Name) 
                                                                            local er2x_bits = byte_to_bool(Core[Name[1].."ER2X"], 7)
                                                                            Core[Name[2].."E_2_0"] = er2x_bits[1]
                                                                            Core[Name[2].."E_2_1"] = er2x_bits[2]
                                                                            Core[Name[2].."E_2_2"] = er2x_bits[3]
                                                                            Core[Name[2].."E_2_3"] = er2x_bits[4]
                                                                            Core[Name[2].."E_2_4"] = er2x_bits[5]
                                                                            Core[Name[2].."E_2_5"] = er2x_bits[6]
                                                                            Core[Name[2].."E_2_6"] = er2x_bits[7]
                                                                            Core[Name[2].."E_2_7"] = er2x_bits[8]
                                                                          end },
    
    ["ER3X"] = {["Comment"]="Слово состояния ошибок насоса 3", ["eval"] = function(Name) 
                                                                            local er3x_bits = byte_to_bool(Core[Name[1].."ER3X"], 7)
                                                                            Core[Name[2].."E_3_0"] = er3x_bits[1]
                                                                            Core[Name[2].."E_3_1"] = er3x_bits[2]
                                                                            Core[Name[2].."E_3_2"] = er3x_bits[3]
                                                                            Core[Name[2].."E_3_3"] = er3x_bits[4]
                                                                            Core[Name[2].."E_3_4"] = er3x_bits[5]
                                                                            Core[Name[2].."E_3_5"] = er3x_bits[6]
                                                                            Core[Name[2].."E_3_6"] = er3x_bits[7]
                                                                            Core[Name[2].."E_3_7"] = er3x_bits[8]
                                                                          end },
                                                                      
    ["ER7X"] = {["Comment"]="Слово состояния ошибок поплавков", ["eval"] = function(Name) 
                                                                             local er7x_bits = byte_to_bool(Core[Name[1].."ER7X"], 7)
                                                                             Core[Name[2].."E_7_0"] = er7x_bits[1]
                                                                             Core[Name[2].."E_7_1"] = er7x_bits[2]
                                                                             Core[Name[2].."E_7_2"] = er7x_bits[3]
                                                                             Core[Name[2].."E_7_3"] = er7x_bits[4]
                                                                             Core[Name[2].."E_7_4"] = er7x_bits[5]
                                                                             Core[Name[2].."E_7_5"] = er7x_bits[6]
                                                                             Core[Name[2].."E_7_6"] = er7x_bits[7]
                                                                             Core[Name[2].."E_7_7"] = er7x_bits[8]
                                                                           end },
                                                                      
    ["P1_STAT"] = {["Comment"]="Слово состояния насоса 1", ["eval"] = function(Name) 
                                                                        local p1_status_bits = byte_to_bool(Core[Name[1].."P1_STAT"], 15)
                                                                        Core[Name[2].."P1_MANUAL_MODE"] = p1_status_bits[10]
                                                                        Core[Name[2].."P1_FREQ_CONTROL"] = p1_status_bits[11]
                                                                        Core[Name[2].."P1_WORK"] = p1_status_bits[12]
                                                                        Core[Name[2].."P1_AUTO_MODE"] = p1_status_bits[13]
                                                                        Core[Name[2].."P1_COMUNITY_FAULT"] = p1_status_bits[14]
                                                                        Core[Name[2].."P1_READY_FOR_AUTO_CONTROL"] = p1_status_bits[15]
                                                                        Core[Name[2].."P1_POWERED_AND_MEETS"] = p1_status_bits[16]
                                                                      end },
                                                                      
    ["P1_FREQ"] = {["Comment"]="Частота насоса 1", ["eval"]= function(Name) Core[Name[2].."P1_FREQ"] = Core[Name[1].."P1_FREQ"] * (1/256) end },
    ["P1_J1"] = {["Comment"]="Ток в фазе  L 1 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P1_J1"] = Core[Name[1].."P1_J1"] * 0,1 end },
    ["P1_J2"] = {["Comment"]="Ток в фазе  L 2 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P1_J2"] = Core[Name[1].."P1_J2"] * 0,1 end },
    ["P1_J3"] = {["Comment"]="Ток в фазе  L 3 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P1_J3"] = Core[Name[1].."P1_J3"] * 0,1 end },
    ["P1_JN"] = {["Comment"]="Макс. по трем фазам ток насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P1_JN"] = Core[Name[1].."P1_JN"] * 0,1 end },
    ["P1_Uab"] = {["Comment"]="Напряжение между  L 1 - L 2 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P1_Uab"] = Core[Name[1].."P1_Uab"] * 0,1 end },
    ["P1_Ubc"] = {["Comment"]="Напряжение между  L 2 - L 3 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P1_Ubc"] = Core[Name[1].."P1_Ubc"] * 0,1 end },
    ["P1_Uac"] = {["Comment"]="Напряжение между  L 1 - L 3 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P1_Uac"] = Core[Name[1].."P1_Uac"] * 0,1 end },
    ["P1_Ucn"] = {["Comment"]="Напряжение между  L 3 - L N насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P1_Ucn"] = Core[Name[1].."P1_Ucn"] * 0,1 end },
    ["P1_DI"] = {["Comment"]="Состояние входа датчика протечки насоса No1 [0] = К.З. [~100] =  проводимость не зафиксирована", ["eval"] = function(Name) Core[Name[2].."P1_DI"] = Core[Name[1].."P1_DI"] end },
    ["P1_CNT"] = {["Comment"]="Счетчик пусков насоса No1(1 ед. = 10 раз)", ["eval"] = function(Name) Core[Name[2].."P1_CNT"] = Core[Name[1].."P1_CNT"] end },
    ["P1_HRS"] = {["Comment"]="Счетчик моточасов насоса No1(1 ед. = 10 часов)", ["eval"] = function(Name) Core[Name[2].."P1_HRS"] = Core[Name[1].."P1_HRS"] end },

    ["P2_STAT"] = {["Comment"]="Слово состояния насоса 1", ["eval"] = function(Name) 
                                                                        local p2_status_bits = byte_to_bool(Core[Name[1].."P2_STAT"], 15)
                                                                        Core[Name[2].."P2_MANUAL_MODE"] = p2_status_bits[10]
                                                                        Core[Name[2].."P2_FREQ_CONTROL"] = p2_status_bits[11]
                                                                        Core[Name[2].."P2_WORK"] = p2_status_bits[12]
                                                                        Core[Name[2].."P2_AUTO_MODE"] = p2_status_bits[13]
                                                                        Core[Name[2].."P2_COMUNITY_FAULT"] = p2_status_bits[14]
                                                                        Core[Name[2].."P2_READY_FOR_AUTO_CONTROL"] = p2_status_bits[15]
                                                                        Core[Name[2].."P2_POWERED_AND_MEETS"] = p2_status_bits[16]
                                                                      end },
                                                                      
    ["P2_FREQ"] = {["Comment"]="Частота насоса 1", ["eval"]= function(Name) Core[Name[2].."P2_FREQ"] = Core[Name[1].."P2_FREQ"] * (1/256) end },
    ["P2_J1"] = {["Comment"]="Ток в фазе  L 1 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P2_J1"] = Core[Name[1].."P2_J1"] * 0,1 end },
    ["P2_J2"] = {["Comment"]="Ток в фазе  L 2 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P2_J2"] = Core[Name[1].."P2_J2"] * 0,1 end },
    ["P2_J3"] = {["Comment"]="Ток в фазе  L 3 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P2_J3"] = Core[Name[1].."P2_J3"] * 0,1 end },
    ["P2_JN"] = {["Comment"]="Макс. по трем фазам ток насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P2_JN"] = Core[Name[1].."P2_JN"] * 0,1 end },
    ["P2_Uab"] = {["Comment"]="Напряжение между  L 1 - L 2 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P2_Uab"] = Core[Name[1].."P2_Uab"] * 0,1 end },
    ["P2_Ubc"] = {["Comment"]="Напряжение между  L 2 - L 3 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P2_Ubc"] = Core[Name[1].."P2_Ubc"] * 0,1 end },
    ["P2_Uac"] = {["Comment"]="Напряжение между  L 1 - L 3 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P2_Uac"] = Core[Name[1].."P2_Uac"] * 0,1 end },
    ["P2_Ucn"] = {["Comment"]="Напряжение между  L 3 - L N насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P2_Ucn"] = Core[Name[1].."P2_Ucn"] * 0,1 end },
    ["P2_DI"] = {["Comment"]="Состояние входа датчика протечки насоса No1 [0] = К.З. [~100] =  проводимость не зафиксирована", ["eval"] = function(Name) Core[Name[2].."P2_DI"] = Core[Name[1].."P2_DI"] end },
    ["P2_CNT"] = {["Comment"]="Счетчик пусков насоса No1(1 ед. = 10 раз)", ["eval"] = function(Name) Core[Name[2].."P2_CNT"] = Core[Name[1].."P2_CNT"] end },
    ["P2_HRS"] = {["Comment"]="Счетчик моточасов насоса No1(1 ед. = 10 часов)", ["eval"] = function(Name) Core[Name[2].."P2_HRS"] = Core[Name[1].."P2_HRS"] end },

    ["P3_STAT"] = {["Comment"]="Слово состояния насоса 1", ["eval"] = function(Name) 
                                                                        local p3_status_bits = byte_to_bool(Core[Name[1].."P3_STAT"], 15)
                                                                        Core[Name[2].."P3_MANUAL_MODE"] = p3_status_bits[10]
                                                                        Core[Name[2].."P3_FREQ_CONTROL"] = p3_status_bits[11]
                                                                        Core[Name[2].."P3_WORK"] = p3_status_bits[12]
                                                                        Core[Name[2].."P3_AUTO_MODE"] = p3_status_bits[13]
                                                                        Core[Name[2].."P3_COMUNITY_FAULT"] = p3_status_bits[14]
                                                                        Core[Name[2].."P3_READY_FOR_AUTO_CONTROL"] = p3_status_bits[15]
                                                                        Core[Name[2].."P3_POWERED_AND_MEETS"] = p3_status_bits[16]
                                                                      end },
                                                                      
    ["P3_FREQ"] = {["Comment"]="Частота насоса 1", ["eval"]= function(Name) Core[Name[2].."P3_FREQ"] = Core[Name[1].."P3_FREQ"] * (1/256) end },
    ["P3_J1"] = {["Comment"]="Ток в фазе  L 1 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P3_J1"] = Core[Name[1].."P3_J1"] * 0,1 end },
    ["P3_J2"] = {["Comment"]="Ток в фазе  L 2 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P3_J2"] = Core[Name[1].."P3_J2"] * 0,1 end },
    ["P3_J3"] = {["Comment"]="Ток в фазе  L 3 насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P3_J3"] = Core[Name[1].."P3_J3"] * 0,1 end },
    ["P3_JN"] = {["Comment"]="Макс. по трем фазам ток насоса No1 (1ед. = 0 , 1 ампер)", ["eval"] = function(Name) Core[Name[2].."P3_JN"] = Core[Name[1].."P3_JN"] * 0,1 end },
    ["P3_Uab"] = {["Comment"]="Напряжение между  L 1 - L 2 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P3_Uab"] = Core[Name[1].."P3_Uab"] * 0,1 end },
    ["P3_Ubc"] = {["Comment"]="Напряжение между  L 2 - L 3 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P3_Ubc"] = Core[Name[1].."P3_Ubc"] * 0,1 end },
    ["P3_Uac"] = {["Comment"]="Напряжение между  L 1 - L 3 насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P3_Uac"] = Core[Name[1].."P3_Uac"] * 0,1 end },
    ["P3_Ucn"] = {["Comment"]="Напряжение между  L 3 - L N насоса No1 (1ед. = 0 , 1 вольт)", ["eval"] = function(Name) Core[Name[2].."P3_Ucn"] = Core[Name[1].."P3_Ucn"] * 0,1 end },
    ["P3_DI"] = {["Comment"]="Состояние входа датчика протечки насоса No1 [0] = К.З. [~100] =  проводимость не зафиксирована", ["eval"] = function(Name) Core[Name[2].."P3_DI"] = Core[Name[1].."P3_DI"] end },
    ["P3_CNT"] = {["Comment"]="Счетчик пусков насоса No1(1 ед. = 10 раз)", ["eval"] = function(Name) Core[Name[2].."P3_CNT"] = Core[Name[1].."P3_CNT"] end },
    ["P3_HRS"] = {["Comment"]="Счетчик моточасов насоса No1(1 ед. = 10 часов)", ["eval"] = function(Name) Core[Name[2].."P3_HRS"] = Core[Name[1].."P3_HRS"] end }
}



-- Цикл для инициализации значений
-- В данном цикле происходит:
-- 1.Ключ таблицы "objects" записывается в переменную raw_objectName, значение этого ключа в objectName
-- 2.Значения таблицы "signals" записываются в signals_Descriptor
-- 3.Происходит вызов функции eval для каждого из сигналов, что инициализирует все сигналы которые содержит таблица
for raw_objectName, objectName in pairs(objects) do
  for _, signals_Descriptor in pairs(signals) do
    signals_Descriptor.eval({raw_objectName,objectName})
  end
end

-- Цикл для вызова функции eval при изменении значения полученных с устройства сигналов
-- В данном цикле происходит:
-- 1.Ключ таблицы "objects" записывается в переменную raw_objectName, значение этого ключа в objectName
-- 2.Значения таблицы "signals" записываются в signals_Descriptor, а ключи в signals_Suffix
-- 3.По измению любого из значений принятых с устройства происходит вызов функции eval для этого сигнала, с аргументами raw_objectName,objectName,
-- то есть префиксом необработанного и обработанного сигнала
for raw_objectName, objectName in pairs(objects) do
	for signals_Suffix, signals_Descriptor in pairs(signals) do
		Core.onExtChange({raw_objectName..signals_Suffix},signals_Descriptor.eval,{raw_objectName,objectName})	
	end
end

Core.waitEvents( )