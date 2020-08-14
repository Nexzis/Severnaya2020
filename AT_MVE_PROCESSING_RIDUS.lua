-- Программа для обработки сигналов снятых с драйвера устройства, их преобразования для дальнейшей работы в интерфейсе, генерации событий и аварий.
-- Данный код служит для преобразования сигналов от устройства Elim аккумуляторная Северная
require "./lua_lib/acs_data_lib"
require "./lua_lib/ieee754"

local objects = {
  ["RIDUS.RAW_"] = "RIDUS.",
}

-- Ключом этой таблицы являются имена сигналов, значениями: описание и функция eval, необходимая для обработки того или иного сигнала, разными способами, в
-- зависимости от содержания сигнала с устройства(см. карту адресов устройства)
local signals = {	
    ["Ua"] = {["Comment"]="Напряжение Ua  ", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["Ub"] = {["Comment"]="Напряжение Ub  ", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["Uc"] = {["Comment"]="Напряжение Uc  ", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["Ia"] = {["Comment"]="Ток Ia", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.001 end },
    ["Ib"] = {["Comment"]="Ток Ib", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.001 end },
    ["Ic"] = {["Comment"]="Ток Ic", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.001 end },
    ["U_ZVU"] = {["Comment"]="Напряжение ЗВУ ", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["U_AB"] = {["Comment"]="Напряжение Аккумуляторной батареи", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["I_ZVU"] = {["Comment"]="Ток ЗВУ 0.001 ", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.001 end },
    ["TEMP"] = {["Comment"]="Температура Аккумулятора", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["STATUS_Q"] = {["Comment"]="Сигнал статусов автоматов ", ["eval"] = function(Name) 
                                                                           ridus_state_bits = byte_to_bool(Core[Name[1]..Name[3]], 16)
                                                                           Core[Name[2].."QR1_AVAR"] = ridus_state_bits[1]
                                                                           Core[Name[2].."QF1_OTKL"] = ridus_state_bits[3]
                                                                           Core[Name[2].."QF1_AVAR"] = ridus_state_bits[4]
                                                                         end },
}
-- Цикл для инициализации значений
-- В данном цикле происходит:
-- 1.Ключ таблицы "objects" записывается в переменную raw_objectName, значение этого ключа в objectName
-- 2.Значения таблицы "signals" записываются в signals_Descriptor
-- 3.Происходит вызов функции eval для каждого из сигналов, что инициализирует все сигналы которые содержит таблица
for raw_objectName, objectName in pairs(objects) do
  for signals_Suffix, signals_Descriptor in pairs(signals) do
    signals_Descriptor.eval({raw_objectName,objectName,signals_Suffix})
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
    Core.onExtChange({raw_objectName..signals_Suffix},signals_Descriptor.eval,{raw_objectName,objectName,signals_Suffix})  
  end
end

Core.waitEvents( )