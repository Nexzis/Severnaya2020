-- Программа для обработки сигналов снятых с драйвера устройства, их преобразования для дальнейшей работы в интерфейсе, генерации событий и аварий.
-- Данный код служит для преобразования сигналов от устройства Хоббит, находящегося в котельной КС Северная
require "./lua_lib/acs_data_lib"
require "./lua_lib/ieee754"
-- Ключом этой таблицаы является префикс необработанного сигнала, а значением префикс обработанного. Таблица нужна для автоматизации обработки сигналов и
-- исключения повторения одинакового кода
local objects = {
  ["RAW_HOBBIT1_"]="Hobbit1_params.",
  ["RAW_HOBBIT2_"]="Hobbit2_params."
}

local signals = {
  ["CH1_STATE_WORD"] = {["Comment"]="Слово-состояния канала №1 устройства", ["eval"] = function(Name) 
                                                                                         local hobbit_state_bits = byte_to_bool(Core[Name[1].."CH1_STATE_WORD"], 7)
                                                                                         Core[Name[2].."CH1_ACT"] = hobbit_state_bits[8]
                                                                                         Core[Name[2].."CH1_FLT"] = hobbit_state_bits[7]
                                                                                         Core[Name[2].."CH1_RED"] = hobbit_state_bits[5]
                                                                                         Core[Name[2].."CH1_NEG"] = hobbit_state_bits[4]
                                                                                         Core[Name[2].."CH1_ZN1"] = hobbit_state_bits[3]
                                                                                         Core[Name[2].."CH1_ZN2"] = hobbit_state_bits[2]
                                                                                         Core[Name[2].."CH1_ZN3"] = hobbit_state_bits[1]  
                                                                                       end },
  
  ["CH2_STATE_WORD"] = {["Comment"]="Слово-состояния канала №2 устройства", ["eval"] = function(Name) 
                                                                                         local hobbit_state_bits = byte_to_bool(Core[Name[1].."CH2_STATE_WORD"], 7)
                                                                                         Core[Name[2].."CH2_ACT"] = hobbit_state_bits[8]
                                                                                         Core[Name[2].."CH2_FLT"] = hobbit_state_bits[7]
                                                                                         Core[Name[2].."CH2_RED"] = hobbit_state_bits[5]
                                                                                         Core[Name[2].."CH2_NEG"] = hobbit_state_bits[4]
                                                                                         Core[Name[2].."CH2_ZN1"] = hobbit_state_bits[3]
                                                                                         Core[Name[2].."CH2_ZN2"] = hobbit_state_bits[2]
                                                                                         Core[Name[2].."CH2_ZN3"] = hobbit_state_bits[1]  
                                                                                       end },
                                                                                       
  ["CH3_STATE_WORD"] = {["Comment"]="Слово-состояния канала №3 устройства", ["eval"] = function(Name) 
                                                                                         local hobbit_state_bits = byte_to_bool(Core[Name[1].."CH3_STATE_WORD"], 7)
                                                                                         Core[Name[2].."CH3_ACT"] = hobbit_state_bits[8]
                                                                                         Core[Name[2].."CH3_FLT"] = hobbit_state_bits[7]
                                                                                         Core[Name[2].."CH3_RED"] = hobbit_state_bits[5]
                                                                                         Core[Name[2].."CH3_NEG"] = hobbit_state_bits[4]
                                                                                         Core[Name[2].."CH3_ZN1"] = hobbit_state_bits[3]
                                                                                         Core[Name[2].."CH3_ZN2"] = hobbit_state_bits[2]
                                                                                         Core[Name[2].."CH3_ZN3"] = hobbit_state_bits[1]  
                                                                                       end },

  ["CH4_STATE_WORD"] = {["Comment"]="Слово-состояния канала №4 устройства", ["eval"] = function(Name) 
                                                                                         local hobbit_state_bits = byte_to_bool(Core[Name[1].."CH4_STATE_WORD"], 7)
                                                                                         Core[Name[2].."CH4_ACT"] = hobbit_state_bits[8]
                                                                                         Core[Name[2].."CH4_FLT"] = hobbit_state_bits[7]
                                                                                         Core[Name[2].."CH4_RED"] = hobbit_state_bits[5]
                                                                                         Core[Name[2].."CH4_NEG"] = hobbit_state_bits[4]
                                                                                         Core[Name[2].."CH4_ZN1"] = hobbit_state_bits[3]
                                                                                         Core[Name[2].."CH4_ZN2"] = hobbit_state_bits[2]
                                                                                         Core[Name[2].."CH4_ZN3"] = hobbit_state_bits[1]  
                                                                                       end },

  ["CH1_CONCENTRATE"] = {["Comment"]="Концентрация канал 1", ["eval"] = function(Name) Core[Name[2].."CH1_CON"] = ieee754_from_hex(Core[Name[1].."CH1_CONCENTRATE"]) end }, 
  ["CH2_CONCENTRATE"] = {["Comment"]="Концентрация канал 2", ["eval"] = function(Name) Core[Name[2].."CH2_CON"] = ieee754_from_hex(Core[Name[1].."CH2_CONCENTRATE"]) end }, 
  ["CH3_CONCENTRATE"] = {["Comment"]="Концентрация канал 3", ["eval"] = function(Name) Core[Name[2].."CH3_CON"] = ieee754_from_hex(Core[Name[1].."CH3_CONCENTRATE"]) end }, 
  ["CH4_CONCENTRATE"] = {["Comment"]="Концентрация канал 4", ["eval"] = function(Name) Core[Name[2].."CH4_CON"] = ieee754_from_hex(Core[Name[1].."CH4_CONCENTRATE"]) end } 
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