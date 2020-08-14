-- Временные переменные для формирования аварий
local DRFlag 
local Log=true 
local old_DRFlag 
local oldsignal = {} 
local old_analog_signal_status = {} 

-- Для алармов имя пользователя и название зоны(экрана)
local user=""
local ScreenID_KOT="KOS" 

local ObjID = {"RIDUS."}
local sig_source="АСУ Э ВТЗП " 
local time_source = "" 
old_DRFlag = {["RAW_RIDUS_ST_UP.STATUS_DEVICE"] = Core["RAW_RIDUS_ST_UP.STATUS_DEVICE"]}
 
local TagList={ 
  "QR1_AVAR",
  "QF1_OTKL",
  "QF1_AVAR"
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
  QR1_AVAR = event.w,
  QF1_OTKL = event.w,
  QF1_AVAR = event.w
} 

local msg= { 
  QR1_AVAR = "Авария QR1",
  QF1_OTKL = "ОТКЛ QF1",
  QF1_AVAR = "Авария QF1"

} 
 
--***********************************************************************************************************************************************************
--Функция проверки достоверности получаемых по модбас пакетов и формирования сигналов о недостоверности
function Check_Data_Reliability (sendDRFlag)
  local time_source = "ВТЗП"                                 --переменная time_sourse инициализация
  local DRFlag = Core[sendDRFlag[1]]                           --статус выполнения обращений к устройству если не равен 0, то устройство не исправно
  local DT = os.time()                                            --текущее время операционки
  if old_DRFlag.sendDRFlag[1] == nil or old_DRFlag.sendDRFlag[1]~=DRFlag then                 --если переменная статуса получает nil(отсутсвие значения) то
    local i = 1 
    local Tag 
    while TagList[i] ~= nil do                                  --проход по массиву  TagList
      if TagList[i] ~= nil then Tag = TagList[i] else break end   --присвоение переменной Tag значения массива TagList
      
      if   msg[Tag] == nil then break end
      
      if DRFlag > 1 then   --заплатка для нерабочего модбас, должно быть DRFlag > 0     --если есть сбой предачи по сети модбас то
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag], event.dr, 1, sig_source..time_source, user, ObjID..Tag, DT, ScreenID) --создаём событие о появлении недостоверности всех сигнала
        if Log then  Core.addLogMsg(os.date().." ".."(Появл) НЕДОСТОВЕРНО: " .. msg[Tag])end                                     --добавления сообщения в лог о появлении этого сигнала
      end
      
      if DRFlag <= 1 then  --заплатка для нерабочего модбас, должно быть DRFlag == 0                                                                                                                        
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag] , event.dr , 0, sig_source..time_source, user, ObjID..Tag, DT, ScreenID)   --создаём событие о исчесновении недостоверности всех сигналов
        if Log then  Core.addLogMsg(os.date().." ".."(Исчезн) НЕДОСТОВЕРНО: " .. msg[Tag]) end                                --добавления сообщения в лог о исчезновении этого сигнала
      end
      
      i = i+1                                                                                                                   --Увеличиваем i на единицу
    end
    
    old_DRFlag.sendDRFlag[1] = DRFlag                                                                                          --вписываем зачение старого флага новому, зачем? а х.з
  end
end 

function Add_Event (Tag, signal, screen_id, objid)
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
    Core.addEvent(msg[Tag], event_class[Tag], e_type, sig_source..time_source, user, objid..Tag, DT, screen_id) 
  end 
end 

local signals = {
  ["QR1_AVAR"]= {["Comment"] = sig_source..msg.QR1_AVAR, ["eval"]= function(Name) local Tag="QR1_AVAR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end }, 
  ["QF1_OTKL"]= {["Comment"] = sig_source..msg.QF1_OTKL, ["eval"]= function(Name) local Tag="QF1_OTKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end }, 
  ["QF1_AVAR"]= {["Comment"] = sig_source..msg.QF1_AVAR, ["eval"]= function(Name) local Tag="QF1_AVAR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end }, 
  
}

for drf_signal, _ in pairs(old_DRFlag) do
  Core.onExtChange({drf_signal}, Check_Data_Reliability, {drf_signal})
end

for i = 1, #ObjID, 1 do
  for signals_Suffix, signals_descriptor in pairs(signals) do 
      Core.onExtChange({ObjID[i]..signals_Suffix}, signals_descriptor.eval, {ObjID[i]}) 
  end
end
Core.waitEvents()