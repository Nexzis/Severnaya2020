-- Программа для обработки сигналов снятых с драйвера устройства, их преобразования для дальнейшей работы в интерфейсе, генерации событий и аварий.
-- Данный код служит для преобразования сигналов от устройства WILO SK-712/w, находящегося на ВОС КС Северная
require "./lua_lib/acs_data_lib"
-- Ключом этой таблицаы является префикс необработанного сигнала, а значением префикс обработанного. Таблица нужна для автоматизации обработки сигналов и
-- исключения повторения одинакового кода
local objects = {
  ["ADES."]="ADES."
}

-- Ключом этой таблицы являются имена сигналов, значениями: описание и функция eval, необходимая для обработки того или иного сигнала, разными способами, в
-- зависимости от содержания сигнала с устройства(см. карту адресов устройства)
local signals = {	
    ["STATUS_WORD_50"] = {["Comment"]="Статус, бит 0 - общая ошибка, бит 1 - выключатель собственных нужд, бит 4 - Генераторный выключатель вкл, бит 6 - двигатель в работе, бит 4-старт", 
                            ["eval"] = function(Name)
                                         local ready_bits = byte_to_bool(Core[Name[1].."STATUS_WORD_50"], 9)
                                         Core[Name[2].."OVERLOAD"] = ready_bits[8]
				                       end },
    ["STATUS_WORD_1016"] = {["Comment"]="вЫХОДНЫЕ РЕЛЕ КОНТРОЛЛЕРА, бит 0 - готовность, бит 1 - авария, бит 2 - Аварийный останов, бит 3 - нормальный останов, бит 4-старт", 
                            ["eval"] = function(Name)
                                         local ready_bits = byte_to_bool(Core[Name[1].."STATUS_WORD_1016"], 5)
                                         Core[Name[2].."RELAY_21_READY"] = ready_bits[1]
                                         Core[Name[2].."RELAY_22_ALARM"] = ready_bits[2]
                                         Core[Name[2].."RELAY_23_ALARM_STOP"] = ready_bits[3]
                                         Core[Name[2].."RELAY_24_NORM_STOP"] = ready_bits[4]
										 Core[Name[2].."RELAY_26_START"] = ready_bits[5]
				                       end },
                                                                                                          
    ["STATUS_WORD_1018"] = {["Comment"]="Статус, бит 0 - общая ошибка, бит 1 - выключатель собственных нужд, бит 4 - Генераторный выключатель вкл, бит 6 - двигатель в работе, бит 4-старт", 
                            ["eval"] = function(Name)
                                         local ready_bits = byte_to_bool(Core[Name[1].."STATUS_WORD_1018"], 8)
                                         Core[Name[2].."MAINS_FAILURE"] = ready_bits[1]
                                         Core[Name[2].."MB_POS_ON"] = ready_bits[2]
                                         Core[Name[2].."GB_POS_ON"] = ready_bits[5]
                                         Core[Name[2].."ENGINE_RUNNING"] = ready_bits[7]
				                       end },
    
    ["STATUS_WORD_1019"] = {["Comment"]="Статус, бит 0 - общая ошибка, бит 1 - выключатель собственных нужд, бит 4 - Генераторный выключатель вкл, бит 6 - двигатель в работе, бит 4-старт", 
                            ["eval"] = function(Name)
                                         local ready_bits = byte_to_bool(Core[Name[1].."STATUS_WORD_1019"], 5)
                                         Core[Name[2].."OFF"] = ready_bits[1]
                                         Core[Name[2].."MANUAL"] = ready_bits[2]
                                         Core[Name[2].."AUTO"] = ready_bits[4]
                                         Core[Name[2].."TEST"] = ready_bits[5]
				                       end },

    ["GENERATOR_FREQ"] = {["Comment"]="Частота генератора", ["eval"] = function(Name) Core[Name[2].."GENERATOR_FREQ"] = Core[Name[1].."GENERATOR_FREQ"] * 0.1 end },
    ["MAINS_FREQ"] = {["Comment"]="Частота генератора", ["eval"] = function(Name) Core[Name[2].."MAINS_FREQ"] = Core[Name[1].."MAINS_FREQ"] * 0.1 end },
    
    
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