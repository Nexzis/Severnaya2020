-- Программа для обработки сигналов снятых с драйвера устройства, их преобразования для дальнейшей работы в интерфейсе, генерации событий и аварий.
-- Данный код служит для преобразования сигналов от устройства Elim аккумуляторная Северная
require "./lua_lib/acs_data_lib"
require "./lua_lib/ieee754"

local objects = {
  ["KOS1.RAW_"] = "KOS1.",
  ["KOS2.RAW_"] = "KOS2."
}

-- Ключом этой таблицы являются имена сигналов, значениями: описание и функция eval, необходимая для обработки того или иного сигнала, разными способами, в
-- зависимости от содержания сигнала с устройства(см. карту адресов устройства)
local signals = {	
    ["USTANOVKA_OBEZ_ST"] = {["Comment"]="Статус установки обеззараживания", ["eval"] = function(Name)
                                                                                          Core[Name[2].."UST_OBEZ_VKL"] = false
                                                                                          Core[Name[2].."UST_OBEZ_VIKL_TR"] = false
                                                                                          Core[Name[2].."UST_OBEZ_VKL_TR"] = false
                                                                                          Core[Name[2].."UST_OBEZ_AVAR"] = false
                                                                                          Core[Name[2].."UST_OBEZ_VIKL"] = false

                                                                                          if Core[Name[1]..Name[3]] == 0 then Core[Name[2].."UST_OBEZ_VIKL"] = true
                                                                                          elseif Core[Name[1]..Name[3]] == 1 then Core[Name[2].."UST_OBEZ_VKL"] = true
                                                                                          elseif Core[Name[1]..Name[3]] == 2 then Core[Name[2].."UST_OBEZ_VIKL_TR"] = true
                                                                                          elseif Core[Name[1]..Name[3]] == 3 then Core[Name[2].."UST_OBEZ_VKL_TR"] = true
                                                                                          elseif Core[Name[1]..Name[3]] == 4 then Core[Name[2].."UST_OBEZ_AVAR"] = true
                                                                                          end
                                                                                        end },
    ["RASH_CHAS"] = {["Comment"]="Расход в час", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["RASH_SUTK"] = {["Comment"]="Расход в сутки", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["RASH_MESC"] = {["Comment"]="Расход в месяц", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["RASH_TEKU"] = {["Comment"]="Расход текущий", ["eval"] = function(Name) if Core[Name[1]..Name[3]] >= 0 then
                                                                               Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 
                                                                             else
                                                                               Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * -0.1
                                                                             end 
                                                                           end },
    ["RASH_MAXC"] = {["Comment"]="Расход максимальный в час", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["RASH_OBCH"] = {["Comment"]="Расход общий", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] * 0.1 end },
    ["TEMPERATURA"] = {["Comment"]="Температура воды", ["eval"] = function(Name) Core[Name[2]..Name[3]] = Core[Name[1]..Name[3]] end },
    ["NASOS_KOAGUL_ST"] = {["Comment"]="Насос коагулянта", ["eval"] = function(Name)
                                                                        Core[Name[2].."NASOS_KOAGUL_VIKL"] = false
                                                                        Core[Name[2].."NASOS_KOAGUL_VKL_AVTO"] = false
                                                                        Core[Name[2].."NASOS_KOAGUL_VKL_RUCH"] = false
                                                                        Core[Name[2].."NASOS_KOAGUL_AVAR"] = false

                                                                        if Core[Name[1]..Name[3]] == 0 then Core[Name[2].."NASOS_KOAGUL_VIKL"] = true
                                                                        elseif Core[Name[1]..Name[3]] == 1 then Core[Name[2].."NASOS_KOAGUL_VKL_AVTO"] = true
                                                                        elseif Core[Name[1]..Name[3]] == 2 then Core[Name[2].."NASOS_KOAGUL_VKL_RUCH"] = true
                                                                        elseif Core[Name[1]..Name[3]] == 3 then Core[Name[2].."NASOS_KOAGUL_AVAR"] = true
                                                                        end
                                                                      end },
    ["KOMPRESSOR_ST"] = {["Comment"]="Компрессор", ["eval"] = function(Name)
                                                                Core[Name[2].."KOMPRESSOR_VIKL_TR"] = false
                                                                Core[Name[2].."KOMPRESSOR_VIKL_AV"] = false
                                                                Core[Name[2].."KOMPRESSOR_VKL"] = false
                                                                Core[Name[2].."KOMPRESSOR_VKL_TR"] = false
                                                                Core[Name[2].."KOMPRESSOR_VIKL"] = false
                                                                
                                                                if Core[Name[1]..Name[3]] == 0 then Core[Name[2].."KOMPRESSOR_VIKL"] = true
                                                                elseif Core[Name[1]..Name[3]] == 1 then Core[Name[2].."KOMPRESSOR_VIKL_TR"] = true
                                                                elseif Core[Name[1]..Name[3]] == 2 then Core[Name[2].."KOMPRESSOR_VIKL_AV"] = true
                                                                elseif Core[Name[1]..Name[3]] == 3 then Core[Name[2].."KOMPRESSOR_VKL"] = true
                                                                elseif Core[Name[1]..Name[3]] == 4 then Core[Name[2].."KOMPRESSOR_VKL_TR"] = true
                                                                end
                                                              end },
    ["NASOS_DOZ_FLOK_ST"] = {["Comment"]="Насос дозатор флокулянта", ["eval"] = function(Name)
                                                                                  Core[Name[2].."NASOS_DOZ_FLOK_VKL_AVTO"] = false
                                                                                  Core[Name[2].."NASOS_DOZ_FLOK_VKL_RUCH"] = false
                                                                                  Core[Name[2].."NASOS_DOZ_FLOK_AVAR"] = false
                                                                                  Core[Name[2].."NASOS_DOZ_FLOK_VIKL"] = false
    
                                                                                  if Core[Name[1]..Name[3]] == 0 then Core[Name[2].."NASOS_DOZ_FLOK_VIKL"] = true
                                                                                  elseif Core[Name[1]..Name[3]] == 1 then Core[Name[2].."NASOS_DOZ_FLOK_VKL_AVTO"] = true
                                                                                  elseif Core[Name[1]..Name[3]] == 2 then Core[Name[2].."NASOS_DOZ_FLOK_VKL_RUCH"] = true
                                                                                  elseif Core[Name[1]..Name[3]] == 3 then Core[Name[2].."NASOS_DOZ_FLOK_AVAR"] = true
                                                                                  end
                                                                                end },                                                              
    ["NASOS_VTOR_OSAD_ST"] = {["Comment"]="Напряжение в еденицах 0-65535", ["eval"] = function(Name)
                                                                                        Core[Name[2].."NASOS_VTOR_OSAD_VKL_AVTO"] = false
                                                                                        Core[Name[2].."NASOS_VTOR_OSAD_VKL_RUCH"] = false
                                                                                        Core[Name[2].."NASOS_VTOR_OSAD_AVAR"] = false
                                                                                        Core[Name[2].."NASOS_VTOR_OSAD_VIKL"] = false
    
    
                                                                                        if Core[Name[1]..Name[3]] == 0 then Core[Name[2].."NASOS_VTOR_OSAD_VIKL"] = true
                                                                                        elseif Core[Name[1]..Name[3]] == 1 then Core[Name[2].."NASOS_VTOR_OSAD_VKL_AVTO"] = true
                                                                                        elseif Core[Name[1]..Name[3]] == 2 then Core[Name[2].."NASOS_VTOR_OSAD_VKL_RUCH"] = true
                                                                                        elseif Core[Name[1]..Name[3]] == 3 then Core[Name[2].."NASOS_VTOR_OSAD_AVAR"] = true
                                                                                        end
                                                                                      end },
    ["TEMPER_VKL_KLAPANA"] = {["Comment"]="ТОК в еденицах 0-65535", ["eval"] = function(Name) Core[Name[2]..Name[3]] = ieee754_from_hex(Core[Name[1]..Name[3]]) end }     
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