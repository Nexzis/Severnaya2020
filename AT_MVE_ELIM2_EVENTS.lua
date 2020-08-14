-- Временные переменные для формирования аварий
local DRFlag 
local Log=true 
local old_DRFlag 
local oldsignal = {} 
local old_analog_signal_status = {} 

-- Для алармов имя пользователя и название зоны(экрана)
local user=""
local ScreenID="GSU" 

local ObjID = "UPS_ELIM2."
local sig_source="АСУ Э Аккумуляторная Элим 2" 
local time_source = "" 
DRFlag = Core["RAW_ELIM2_UP_ST.STATUS_DEVICE"]
old_DRFlag = DRFlag
 
local TagList={ 
  "OGR_I",
  "OGR_U",
  "STANBY",
  "OVERHEAT",
  "OVERLOAD_I",
  "OVERLOAD_U"
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

local event_class = {
  OGR_I = event.w,
  OGR_U = event.w,
  STANBY = event.w,
  OVERHEAT = event.w,
  OVERLOAD_I = event.w,
  OVERLOAD_U = event.w,
} 

local msg= { 
  OGR_I = "Режим ограничения по току", 
  OGR_U = "Режим ограничения по напряж",
  STANBY = "Ждущий режим",
  OVERHEAT = "Перегрев",
  OVERLOAD_I = "Перегруз по U",
  OVERLOAD_U = "Перегруз по I" 
} 
 
--***********************************************************************************************************************************************************
--Функция проверки достоверности получаемых по модбас пакетов и формирования сигналов о недостоверности
function Check_Data_Reliability ()
  local time_source = "(Сервер)"                                 --переменная time_sourse инициализация
  local DRFlag = Core["RAW_ELIM2_UP_ST.STATUS_DEVICE"]                            --статус выполнения обращений к устройству если не равен 0, то устройство не исправно
  local DT = os.time()                                            --текущее время операционки
  if old_DRFlag == nil or old_DRFlag~=DRFlag then                 --если переменная статуса получает nil(отсутсвие значения) то
    local i = 1 
    local Tag 
    while TagList[i] ~= nil do                                  --проход по массиву  TagList
      if TagList[i] ~= nil then Tag = TagList[i] else break end   --присвоение переменной Tag значения массива TagList
      
      if   msg[Tag] == nil then break end
      
      if DRFlag == 2 or DRFlag == 128  then   --заплатка для модбас, должно быть DRFlag > 0     --если есть сбой предачи по сети модбас то
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag], event.dr, 1, sig_source..time_source, user, ObjID..Tag, DT, ScreenID) --создаём событие о появлении недостоверности всех сигнала
        if Log then  Core.addLogMsg(os.date().." ".."(Появл) НЕДОСТОВЕРНО: " .. msg[Tag])end                                     --добавления сообщения в лог о появлении этого сигнала
      end
      
      if DRFlag ~= 2 and DRFlag ~= 128 then  --заплатка для нерабочего модбас, должно быть DRFlag == 0                                                                                                                        
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag] , event.dr , 0, sig_source..time_source, user, ObjID..Tag, DT, ScreenID)   --создаём событие о исчесновении недостоверности всех сигналов
        if Log then  Core.addLogMsg(os.date().." ".."(Исчезн) НЕДОСТОВЕРНО: " .. msg[Tag]) end                                --добавления сообщения в лог о исчезновении этого сигнала
      end
      
      i = i+1                                                                                                                   --Увеличиваем i на единицу
    end
    
    old_DRFlag = DRFlag                                                                                                       --вписываем зачение старого флага новому, зачем? а х.з
  end
end 

function Add_Event (Tag, signal, ScreenID)
  local DT = os.time() 
  local e_type
  
  if signal then 
    e_type = 1
    if Log then Core.addLogMsg(os.date().." ".."(Появл.) " .. msg[Tag] .. " - " ..ScreenID)  end
  else
    e_type = 0
    if Log then Core.addLogMsg(os.date().." ".."(Исчезн.) " .. msg[Tag].. " - " ..ScreenID) end
  end   

  if oldsignal[Tag] == nil or oldsignal[Tag] ~= signal then 
    Core.addEvent(msg[Tag], event_class[Tag], e_type, sig_source..time_source, user, ObjID..Tag, DT, ScreenID) 
  end 
end 

local blocks

local signals = {
  ["OGR_I"]= {["Comment"] = sig_source..msg.OGR_I, ["eval"]= function(Name) local Tag="OGR_I" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end }, 
  ["OGR_U"]= {["Comment"] = sig_source..msg.OGR_U, ["eval"]= function(Name) local Tag="OGR_U" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["STANBY"]= {["Comment"] = sig_source..msg.STANBY, ["eval"]= function(Name) local Tag="STANBY" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["OVERHEAT"]= {["Comment"] = sig_source..msg.OVERHEAT, ["eval"]= function(Name) local Tag="OVERHEAT" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["OVERLOAD_I"]= {["Comment"] = sig_source..msg.OVERLOAD_I, ["eval"]= function(Name) local Tag="OVERLOAD_I" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["OVERLOAD_U"]= {["Comment"] = sig_source..msg.OVERLOAD_U, ["eval"]= function(Name) local Tag="OVERLOAD_U" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end }
}

Core.onExtChange({"RAW_ELIM2_UP_ST.STATUS_DEVICE"}, Check_Data_Reliability)
    
for signals_Suffix, signals_descriptor in pairs(signals) do  
  Core.onExtChange({ObjID..signals_Suffix}, signals_descriptor.eval, {ObjID})  
end

Core.waitEvents()