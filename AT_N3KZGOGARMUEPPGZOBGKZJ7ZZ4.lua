-- Программа для обработки сигналов снятых с драйвера устройства, их преобразования для дальнейшей работы в интерфейсе, генерации событий и аварий.
-- Данный код служит для преобразования сигналов от устройства Хоббит, находящегося в котельной КС Северная
require "./lua_lib/acs_data_lib"
require "./lua_lib/ieee754"
-- Ключом этой таблицаы является префикс необработанного сигнала, а значением префикс обработанного. Таблица нужна для автоматизации обработки сигналов и
-- исключения повторения одинакового кода
local objects = {
  "VZLET_A2."
}

local signals = {
  ["RAW_WORK_TIME"] = {["Comment"]="Время наработки", ["eval"] = function(Name) 
                                                                   Core[Name[1].."HMI_WORK_TIME"] = Core[Name[1].."RAW_WORK_TIME"] / 3600

                                                                 end },
  
  ["RAW_V_FRACTION"] = {["Comment"]="Суммарный накопленый объём", ["eval"] = function(Name) 
                                                                              Core[Name[1].."HMI_V"] = tonumber(tostring(Core[Name[1].."RAW_V_INTEGER"]).."."..tostring(Core[Name[1].."RAW_V_FRACTION"]))           
                                                                             end },

  ["RAW_POS_V_FRACTION"] = {["Comment"]="Суммарный накопленый объём", ["eval"] = function(Name) 
                                                                              Core[Name[1].."HMI_POS_V"] = tonumber(tostring(Core[Name[1].."RAW_POS_V_INTEGER"]).."."..tostring(Core[Name[1].."RAW_POS_V_FRACTION"]))           
                                                                             end },
  ["RAW_NEG_V_FRACTION"] = {["Comment"]="Суммарный накопленый объём", ["eval"] = function(Name) 
                                                                              Core[Name[1].."HMI_NEG_V"] = tonumber(tostring(Core[Name[1].."RAW_NEG_V_INTEGER"]).."."..tostring(Core[Name[1].."RAW_NEG_V_FRACTION"]))           
                                                                             end },
}
                                                                                       
for h = 1, #objects, 1 do
  for signals_Suffix, signals_Descriptor in pairs(signals) do
    if signals_Suffix ~= "RAW_WORK_TIME" then
      Core.onExtChange({objects[h]..signals_Suffix},signals_Descriptor.eval,{objects[h]})
    end	
  end
end

Core.onTimer(1, 120, signals["RAW_WORK_TIME"].eval, {objects[1]})
Core.waitEvents( )