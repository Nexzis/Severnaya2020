-- Временные переменные для формирования аварий                   
local DRFlag 
local Log=true 
local old_DRFlag 
local oldsignal = {} 
local old_analog_signal_status = {} 

-- Для алармов имя пользователя и название зоны(экрана)
local user=""
local ScreenID_KOT="KOT" 

local ObjID = "Hobbit2_params."
local sig_source = "Хоббит 2" 
local time_source = "" 
DRFlag = Core["HOBBIT2_DS_DP"]
old_DRFlag = DRFlag 

local TagList={ 
  "CH1_FLT",
  "CH1_NEG",
  "CH1_ZN1",
  "CH1_ZN2",
  "CH1_ZN3",
  "CH2_FLT",
  "CH2_NEG",
  "CH2_ZN1",
  "CH2_ZN2",
  "CH2_ZN3",
  "CH3_FLT",
  "CH3_NEG",
  "CH3_ZN1",
  "CH3_ZN2",
  "CH3_ZN3",
  "CH4_FLT",
  "CH4_NEG",
  "CH4_ZN1",
  "CH4_ZN2",
  "CH4_ZN3"
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
  CH1_ACT = event.s,
  CH1_FLT = event.w,
  CH1_RED = event.s,
  CH1_NEG = event.w,
  CH1_ZN1 = event.w,
  CH1_ZN2 = event.w,
  CH1_ZN3 = event.w,
  CH2_ACT = event.s,
  CH2_FLT = event.w,
  CH2_RED = event.s,
  CH2_NEG = event.w,
  CH2_ZN1 = event.w,
  CH2_ZN2 = event.w,
  CH2_ZN3 = event.w,
  CH3_ACT = event.s,
  CH3_FLT = event.w,
  CH3_RED = event.s,
  CH3_NEG = event.w,
  CH3_ZN1 = event.w,
  CH3_ZN2 = event.w,
  CH3_ZN3 = event.w,
  CH4_ACT = event.s,
  CH4_FLT = event.w,
  CH4_RED = event.s,
  CH4_NEG = event.w,
  CH4_ZN1 = event.w,
  CH4_ZN2 = event.w,
  CH4_ZN3 = event.w
} 

local msg= { 
  CH1_ACT = "Канал 1 активен",
  CH1_FLT = "Канал 1 в ошибке",
  CH1_RED = "Канал 1 данные готовы",
  CH1_NEG = "Выход в отрицательную зону канал 1",
  CH1_ZN1 = "Нарушение по первому порогу канал 1",
  CH1_ZN2 = "Нарушение по второму порогу канал 1",
  CH1_ZN3 = "Нарушение по третьему порогу канал 1",
  CH2_ACT = "Канал 2 активен",
  CH2_FLT = "Канал 2 в ошибке",
  CH2_RED = "Канал 2 данные готовы",
  CH2_NEG = "Выход в отрицательную зону канал 2",
  CH2_ZN1 = "Нарушение по первому порогу канал 2",
  CH2_ZN2 = "Нарушение по второму порогу канал 2",
  CH2_ZN3 = "Нарушение по третьему порогу канал 2",
  CH3_ACT = "Канал 3 активен",
  CH3_FLT = "Канал 3 в ошибке",
  CH3_RED = "Канал 3 данные готовы",
  CH3_NEG = "Выход в отрицательную зону канал 3",
  CH3_ZN1 = "Нарушение по первому порогу канал 3",
  CH3_ZN2 = "Нарушение по второму порогу канал 3",
  CH3_ZN3 = "Нарушение по третьему порогу канал 3",
  CH4_ACT = "Канал 4 активен",
  CH4_FLT = "Канал 4 в ошибке",
  CH4_RED = "Канал 4 данные готовы",
  CH4_NEG = "Выход в отрицательную зону канал 4",
  CH4_ZN1 = "Нарушение по первому порогу канал 4",
  CH4_ZN2 = "Нарушение по второму порогу канал 4",
  CH4_ZN3 = "Нарушение по третьему порогу канал 4"
} 
 
--***********************************************************************************************************************************************************
--Функция проверки достоверности получаемых по модбас пакетов и формирования сигналов о недостоверности
function Check_Data_Reliability ()
  local time_source = " (Сервер)"                                 --переменная time_sourse инициализация
  local DRFlag = Core["HOBBIT2_DS_DP"]                            --статус выполнения обращений к устройству если не равен 0, то устройство не исправно
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
      
      if DRFlag <= 1 then  --заплатка для нерабочего модбас, должно быть DRFlag == 0                                                                                                                        
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag] , event.dr , 0, sig_source..time_source, user, ObjID..Tag, DT, ScreenID)   --создаём событие о исчесновении недостоверности всех сигналов
        if Log then  Core.addLogMsg(os.date().." ".."(Исчезн) НЕДОСТОВЕРНО: " .. msg[Tag]) end                                --добавления сообщения в лог о исчезновении этого сигнала
      end
      
      i = i+7                                                                                                                   --Увеличиваем i на единицу
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
--  ["CH1_ACT"]= {["Comment"] = sig_source..msg.CH1_ACT, ["eval"] = function(Name) local Tag="CH1_ACT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end }, 
  ["CH1_FLT"]= {["Comment"] = sig_source..msg.CH1_FLT, ["eval"] = function(Name) local Tag="CH1_FLT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["CH1_RED"]= {["Comment"] = sig_source..msg.CH1_RED, ["eval"] = function(Name) local Tag="CH1_RED" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH1_NEG"]= {["Comment"] = sig_source..msg.CH1_NEG, ["eval"] = function(Name) local Tag="CH1_NEG" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH1_ZN1"]= {["Comment"] = sig_source..msg.CH1_ZN1, ["eval"] = function(Name) local Tag="CH1_ZN1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH1_ZN2"]= {["Comment"] = sig_source..msg.CH1_ZN2, ["eval"] = function(Name) local Tag="CH1_ZN2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH1_ZN3"]= {["Comment"] = sig_source..msg.CH1_ZN3, ["eval"] = function(Name) local Tag="CH1_ZN3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["CH2_ACT"]= {["Comment"] = sig_source..msg.CH2_ACT, ["eval"] = function(Name) local Tag="CH2_ACT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH2_FLT"]= {["Comment"] = sig_source..msg.CH2_FLT, ["eval"] = function(Name) local Tag="CH2_FLT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["CH2_RED"]= {["Comment"] = sig_source..msg.CH2_RED, ["eval"] = function(Name) local Tag="CH2_RED" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH2_NEG"]= {["Comment"] = sig_source..msg.CH2_NEG, ["eval"] = function(Name) local Tag="CH2_NEG" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH2_ZN1"]= {["Comment"] = sig_source..msg.CH2_ZN1, ["eval"] = function(Name) local Tag="CH2_ZN1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH2_ZN2"]= {["Comment"] = sig_source..msg.CH2_ZN2, ["eval"] = function(Name) local Tag="CH2_ZN2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH2_ZN3"]= {["Comment"] = sig_source..msg.CH2_ZN3, ["eval"] = function(Name) local Tag="CH2_ZN3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["CH3_ACT"]= {["Comment"] = sig_source..msg.CH3_ACT, ["eval"] = function(Name) local Tag="CH3_ACT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH3_FLT"]= {["Comment"] = sig_source..msg.CH3_FLT, ["eval"] = function(Name) local Tag="CH3_FLT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["CH3_RED"]= {["Comment"] = sig_source..msg.CH3_RED, ["eval"] = function(Name) local Tag="CH3_RED" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH3_NEG"]= {["Comment"] = sig_source..msg.CH3_NEG, ["eval"] = function(Name) local Tag="CH3_NEG" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH3_ZN1"]= {["Comment"] = sig_source..msg.CH3_ZN1, ["eval"] = function(Name) local Tag="CH3_ZN1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH3_ZN2"]= {["Comment"] = sig_source..msg.CH3_ZN2, ["eval"] = function(Name) local Tag="CH3_ZN2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH3_ZN3"]= {["Comment"] = sig_source..msg.CH3_ZN3, ["eval"] = function(Name) local Tag="CH3_ZN3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["CH4_ACT"]= {["Comment"] = sig_source..msg.CH4_ACT, ["eval"] = function(Name) local Tag="CH4_ACT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH4_FLT"]= {["Comment"] = sig_source..msg.CH4_FLT, ["eval"] = function(Name) local Tag="CH4_FLT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["CH4_RED"]= {["Comment"] = sig_source..msg.CH4_RED, ["eval"] = function(Name) local Tag="CH4_RED" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH4_NEG"]= {["Comment"] = sig_source..msg.CH4_NEG, ["eval"] = function(Name) local Tag="CH4_NEG" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH4_ZN1"]= {["Comment"] = sig_source..msg.CH4_ZN1, ["eval"] = function(Name) local Tag="CH4_ZN1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH4_ZN2"]= {["Comment"] = sig_source..msg.CH4_ZN2, ["eval"] = function(Name) local Tag="CH4_ZN2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["CH4_ZN3"]= {["Comment"] = sig_source..msg.CH4_ZN3, ["eval"] = function(Name) local Tag="CH4_ZN3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end }
}

Core.onExtChange({"HOBBIT2_DS_DP"}, Check_Data_Reliability)
    
for signals_Suffix, signals_descriptor in pairs(signals) do  
  Core.onExtChange({ObjID..signals_Suffix}, signals_descriptor.eval, {ObjID})  
end

Core.waitEvents()