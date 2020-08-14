-- Программа для обработки сигналов снятых с драйвера устройства, их преобразования для дальнейшей работы в интерфейсе, генерации событий и аварий.
-- Данный код служит для преобразования сигналов от устройства Elim аккумуляторная Северная
require "./lua_lib/acs_data_lib"
-- Ключом этой таблицаы является префикс необработанного сигнала, а значением префикс обработанного. Таблица нужна для автоматизации обработки сигналов и
-- исключения повторения одинакового кода
local objects = {
  ["RAW_ELIM1_"]="UPS_ELIM1.",
  ["RAW_ELIM2_"]="UPS_ELIM2."
}

-- Ключом этой таблицы являются имена сигналов, значениями: описание и функция eval, необходимая для обработки того или иного сигнала, разными способами, в
-- зависимости от содержания сигнала с устройства(см. карту адресов устройства)
local signals = {	
    ["ADDR"] = {["Comment"]="Адрес устройства", ["eval"] = function(Name) Core[Name[2].."ADDR"] = Core[Name[1].."ADDR"] end },
    ["ADD_I"] = {["Comment"]="Аддитивная поправка канала измерения тока(умол.0.0)", ["eval"] = function(Name) Core[Name[2].."ADD_I"] = Core[Name[1].."ADD_I"] end },
    ["ADD_U"] = {["Comment"]="Аддитивная поправка канала измерения напряжения(умол.0.0)", ["eval"] = function(Name) Core[Name[2].."ADD_I"] = Core[Name[1].."ADD_U"] end },
    ["HH_I"] = {["Comment"]="Верхний предел тока для настраиваемого типа 0..9999А", ["eval"] = function(Name) Core[Name[2].."HH_I"] = Core[Name[1].."HH_I"] end },
    ["HH_U"] = {["Comment"]="Верхний предел напряжения для настраиваемого типа 0..9999В", ["eval"] = function(Name) Core[Name[2].."HH_U"] = Core[Name[1].."HH_U"] end },
    ["PORT_SP"] = {["Comment"]="Скорость обмена по модбас 1-5 : 1-9600, 2-19200, 3-38400, 4-57600, 5-115200", ["eval"] = function(Name) Core[Name[2].."PORT_SP"] = Core[Name[1].."PORT_SP"] end },
    --переставить строку вниз, плсчитать
    ["MLT_I"] = {["Comment"]="Мультипликативная поправка по току", ["eval"] = function(Name) 
                                                                                if Core[Name[1].."MLT_I"] ~= 0 then 
                                                                                  Core[Name[2].."MLT_I"] = Core[Name[1].."MLT_I"] 
                                                                                else
                                                                                  Core[Name[2].."MLT_I"] = 1
                                                                                end 
                                                                              end},
    ["MLT_U"] = {["Comment"]="Мультипликативная поправка по напряжению", ["eval"] = function(Name) 
                                                                                      if Core[Name[1].."MLT_U"] ~= 0 then 
                                                                                        Core[Name[2].."MLT_U"] = Core[Name[1].."MLT_U"] 
                                                                                      else
                                                                                        Core[Name[2].."MLT_U"] = 1
                                                                                      end 
                                                                                    end},
    ["UST_U_I"] = {["Comment"]="Уставка по току и напряжению", ["eval"] = function(Name) Core[Name[2].."UST_U_I"] = Core[Name[1].."UST_U_I"] end },
    ["EVENT"] = {["Comment"]="Регистр событий элим", ["eval"] = function(Name)
                                                                  local elim_events_bits = byte_to_bool(Core[Name[1].."EVENT"], 7)
                                                                  Core[Name[2].."OGR_I"] = elim_events_bits[1]
                                                                  Core[Name[2].."OGR_U"] = elim_events_bits[2]
                                                                  Core[Name[2].."STANBY"] = elim_events_bits[3]
                                                                  Core[Name[2].."OVERHEAT"] = elim_events_bits[6]
                                                                  Core[Name[2].."OVERLOAD_I"] = elim_events_bits[7]
                                                                  Core[Name[2].."OVERLOAD_U"] = elim_events_bits[8]                                                                        
                                                                end },
                                                                                                                                                 
    ["U"] = {["Comment"]="Напряжение в еденицах 0-65535", ["eval"] = function(Name)
                                                                       os.sleep(1) 
																	   if Core[Name[2].."UST_U_I"] >= 10 then
																	     Core[Name[2].."U"] = Core[Name[1].."ADD_U"] + ((Core[Name[1].."U"] * (Core[Name[1].."HH_U"]/10))/1023) * Core[Name[1].."MLT_U"]
                                                                       elseif Core[Name[2].."UST_U_I"] == 0 then
																	     Core[Name[2].."U"] = Core[Name[2].."ADD_U"] + ((Core[Name[1].."U"] * 27.5)/1023) * Core[Name[2].."MLT_U"]
																	   end 
																	 end},
																	 
    ["I"] = {["Comment"]="ТОК в еденицах 0-65535", ["eval"] = function(Name)
                                                                os.sleep(1) 
															    if Core[Name[2].."UST_U_I"] >= 10 then
															      Core[Name[2].."I"] = Core[Name[1].."ADD_I"] + ((Core[Name[1].."I"] * (Core[Name[1].."HH_I"]/10))/1023) * Core[Name[1].."MLT_I"]
                                                                elseif Core[Name[2].."UST_U_I"] == 0 then
															      Core[Name[2].."I"] = Core[Name[2].."ADD_I"] + ((Core[Name[1].."I"] * 30.0) / 1023) * Core[Name[2].."MLT_I"]
															    end 
															  end},
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