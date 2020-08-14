-- Временные переменные для формирования аварий                   
local DRFlag 
local Log=true 
local old_DRFlag 
local oldsignal = {} 
local old_analog_signal_status = {} 

-- Для алармов имя пользователя и название зоны(экрана)
local user=""
local ScreenID_KOT="KOT" 

local ObjID = "RAW_BOILERROOM_"
local sig_source = "Котельная " 
local time_source = "" 
DRFlag = Core["RAW_BOILER_UP_ST.STATUS_DEVICE"]
old_DRFlag = DRFlag 
local TagList={ 
  "BOILER1_ALARM",
  "BOILER2_ALARM",
  "BOILER3_ALARM",
  "BOILER4_ALARM",
  "PRESSURE1_LOW",
  "PRESSURE1_HIGH",
  "PRESSURE2_LOW",
  "INLET_PRESSURE_LOW",
  "MAKE_UP_PRESSURE_LOW",
  "REZ_PUMP_ON",
  "PUMP1_ON",
  "PUMP2_ON",
  "PUMP3_ON",
--  "UPP_1",
  "UPP_2",
--  "UPP_3"
}
 
local AP_alarms = {}
local old_AP_alarms = {}

local event = {
  a=10000,
  w=10100,
  s=101,
  c=100,
  dr=29000
}

local event_class= {
  BOILER1_ALARM = event.a,
  BOILER2_ALARM = event.a,
  BOILER3_ALARM = event.a,
  BOILER4_ALARM = event.a,
  PRESSURE1_LOW = event.a,
  PRESSURE1_HIGH = event.a,
  PRESSURE2_LOW = event.a,
  INLET_PRESSURE_LOW = event.a,
  MAKE_UP_PRESSURE_LOW = event.a,
  REZ_PUMP_ON = event.s,
  PUMP1_ON = event.s,
  PUMP2_ON = event.s,
  PUMP3_ON = event.s,
--  UPP_1 = event.s,
  UPP_2 = event.s,
--  UPP_3 = event.s,
} 

local msg= { 
  BOILER1_ALARM = "Авария котла 1",
  BOILER2_ALARM = "Авария котла 2",
  BOILER3_ALARM = "Авария котла 3",
  BOILER4_ALARM = "Авария котла 4",
  PRESSURE1_LOW = "Давление P1 низкое",
  PRESSURE1_HIGH = "Давление P1 высокое",
  PRESSURE2_LOW = "Давление P2 низкое",
  INLET_PRESSURE_LOW = "Давление на входе котельную низкое",
  MAKE_UP_PRESSURE_LOW = "Давление подпиточной воды низкое",
  REZ_PUMP_ON = "Резервный насос включен",
  PUMP1_ON = "Сетевой насос 1 включен",
  PUMP2_ON = "Сетевой насос 2 включен",
  PUMP3_ON = "Сетевой насос 3 включен",
--  UPP_1 = "Сетевой насос 1 включен",
  UPP_2 = "Сетевой насос 2 включен",
--  UPP_3 = "Сетевой насос 3 включен"  
} 
 
--***********************************************************************************************************************************************************
--Функция проверки достоверности получаемых по модбас пакетов и формирования сигналов о недостоверности
function Check_Data_Reliability ()
  local time_source = " (Сервер)"                                 --переменная time_sourse инициализация
  local DRFlag = Core["RAW_BOILER_UP_ST.STATUS_DEVICE"]                            --статус выполнения обращений к устройству если не равен 0, то устройство не исправно
  local DT = os.time()                                            --текущее время операционки
  if old_DRFlag == nil or old_DRFlag ~= DRFlag then                 --если переменная статуса получает nil(отсутсвие значения) то
    local i = 1 
    local Tag 
    while TagList[i] ~= nil do                                  --проход по массиву  TagList
      if TagList[i] ~= nil then Tag = TagList[i] else break end   --присвоение переменной Tag значения массива TagList
      
      if   msg[Tag]==nil then break end
      
      if DRFlag == 2 then   --заплатка для нерабочего модбас, должно быть DRFlag > 0     --если есть сбой предачи по сети модбас то
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag], event.dr, 1, sig_source..time_source, user, ObjID..Tag, DT, ScreenID) --создаём событие о появлении недостоверности всех сигнала
        if Log then  Core.addLogMsg(os.date().." ".."(Появл) НЕДОСТОВЕРНО: " .. msg[Tag])end                                     --добавления сообщения в лог о появлении этого сигнала
      end
      
      if DRFlag ~= 2 and DRFlag ~= 128 then  --заплатка для нерабочего модбас, должно быть DRFlag == 0                                                                                                                        
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag] , event.dr , 0, sig_source..time_source, user, ObjID..Tag, DT, ScreenID)   --создаём событие о исчесновении недостоверности всех сигналов
        if Log then  Core.addLogMsg(os.date().." ".."(Исчезн) НЕДОСТОВЕРНО: " .. msg[Tag]) end                                --добавления сообщения в лог о исчезновении этого сигнала
      end
      
      i = i+1                                                                                                                 --Увеличиваем i на единицу
    end
    
    old_DRFlag = DRFlag                                                                                                       --вписываем зачение старого флага новому, зачем? а х.з
  end
end 

function Add_Event (Tag, signal, screen_id)
  local DT = os.time() 
  local e_type
  
  if signal then 
    e_type = 1
    if Log then Core.addLogMsg(os.date().." ".."(Появл.) " .. msg[Tag] .. " - " ..screen_id)  end
  else
    e_type = 0
    if Log then Core.addLogMsg(os.date().." ".."(Исчезн.) " .. msg[Tag].. " - " ..screen_id) end
  end   

  if oldsignal[Tag] == nil or oldsignal[Tag] ~= signal then 
    Core.addEvent(msg[Tag], event_class[Tag], e_type, sig_source..time_source, user, ObjID..Tag, DT, screen_id) 
  end 
end 

local blocks

local signals = {
  ["BOILER1_ALARM"]= {["Comment"] = sig_source..msg.BOILER1_ALARM, ["eval"] = function(Name) local Tag="BOILER1_ALARM" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end }, 
  ["BOILER2_ALARM"]= {["Comment"] = sig_source..msg.BOILER2_ALARM, ["eval"] = function(Name) local Tag="BOILER2_ALARM" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["BOILER3_ALARM"]= {["Comment"] = sig_source..msg.BOILER3_ALARM, ["eval"] = function(Name) local Tag="BOILER3_ALARM" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["BOILER4_ALARM"]= {["Comment"] = sig_source..msg.BOILER4_ALARM, ["eval"] = function(Name) local Tag="BOILER4_ALARM" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PRESSURE1_LOW"]= {["Comment"] = sig_source..msg.PRESSURE1_LOW, ["eval"] = function(Name) local Tag="PRESSURE1_LOW" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PRESSURE1_HIGH"]= {["Comment"] = sig_source..msg.PRESSURE1_HIGH, ["eval"] = function(Name) local Tag="PRESSURE1_HIGH" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PRESSURE2_LOW"]= {["Comment"] = sig_source..msg.PRESSURE2_LOW, ["eval"] = function(Name) local Tag="PRESSURE2_LOW" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["INLET_PRESSURE_LOW"]= {["Comment"] = sig_source..msg.INLET_PRESSURE_LOW, ["eval"] = function(Name) local Tag="INLET_PRESSURE_LOW" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["MAKE_UP_PRESSURE_LOW"]= {["Comment"] = sig_source..msg.MAKE_UP_PRESSURE_LOW, ["eval"] = function(Name) local Tag="MAKE_UP_PRESSURE_LOW" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["REZ_PUMP_ON"]= {["Comment"] = sig_source..msg.REZ_PUMP_ON, ["eval"] = function(Name) local Tag="REZ_PUMP_ON" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP1_ON"]= {["Comment"] = sig_source..msg.PUMP1_ON, ["eval"] = function(Name) local Tag="PUMP1_ON" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP2_ON"]= {["Comment"] = sig_source..msg.PUMP2_ON, ["eval"] = function(Name) local Tag="PUMP2_ON" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP3_ON"]= {["Comment"] = sig_source..msg.PUMP3_ON, ["eval"] = function(Name) local Tag="PUMP3_ON" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["UPP_1"]= {["Comment"] = sig_source..msg.UPP_1, ["eval"] = function(Name) local Tag="UPP_1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["UPP_2"]= {["Comment"] = sig_source..msg.UPP_2, ["eval"] = function(Name) local Tag="UPP_2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["UPP_3"]= {["Comment"] = sig_source..msg.UPP_3, ["eval"] = function(Name) local Tag="UPP_3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
}

Core.onExtChange({"RAW_BOILER_UP_ST.STATUS_DEVICE"}, Check_Data_Reliability)
    
for signals_Suffix, signals_descriptor in pairs(signals) do  
  Core.onExtChange({ObjID..signals_Suffix}, signals_descriptor.eval, {ObjID})  
end

Core.waitEvents()