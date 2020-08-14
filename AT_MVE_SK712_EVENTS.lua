-- Временные переменные для формирования аварий
local DRFlag 
local Log=true 
local old_DRFlag 
local oldsignal = {} 
local old_analog_signal_status = {} 

-- Для алармов имя пользователя и название зоны(экрана)
local user=""
local ScreenID_KOT="VOS" 

local ObjID = "VOS_SK712_CONTROL_PUMPS."
local sig_source = "САУ ВОС" 
local time_source = "" 
DRFlag = Core["RAW_SK712_1_UP_ST.STATUS_DEVICE"]
old_DRFlag = DRFlag 

local TagList={ 
  "E_0_0",
  "E_0_1",
  "E_0_2",
  "E_0_3",
  "E_0_4",
  "E_0_5",
  "E_0_6",
  "E_0_7",
  "E_1_0",
  "E_1_1",
  "E_1_2",
  "E_1_3",
  "E_1_4",
  "E_1_5",
  "E_1_6",
  "E_1_7",
  "E_2_0",
  "E_2_1",
  "E_2_2",
  "E_2_3",
  "E_2_4",
  "E_2_5",
  "E_2_6",
  "E_2_7",
  "E_3_0",
  "E_3_1",
  "E_3_2",
  "E_3_3",
  "E_3_4",
  "E_3_5",
  "E_3_6",
  "E_3_7",
  "E_7_0",
  "E_7_1",
  "E_7_2",
  "E_7_3",
  "E_7_4",
  "E_7_5",
  "E_7_6",
  "E_7_7",
  "PUMP1_WORK",
  "PUMP2_WORK",
  "PUMP3_WORK",
  "PUMP1_READY_AUTO",
  "PUMP2_READY_AUTO",
  "PUMP3_READY_AUTO",
  "PUMP1_READY",
  "PUMP2_READY",
  "PUMP3_READY",
  "PUMP1_FAULT",
  "PUMP2_FAULT",
  "PUMP3_FAULT"
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
  E_0_0 = event.w,
  E_0_1 = event.w,
  E_0_2 = event.w,
  E_0_3 = event.w,
  E_0_4 = event.w,
  E_0_5 = event.w,
  E_0_6 = event.w,
  E_0_7 = event.w,
  E_1_0 = event.w,
  E_1_1 = event.w,
  E_1_2 = event.w,
  E_1_3 = event.w,
  E_1_4 = event.w,
  E_1_5 = event.w,
  E_1_6 = event.w,
  E_1_7 = event.w,
  E_2_0 = event.w,
  E_2_1 = event.w,
  E_2_2 = event.w,
  E_2_3 = event.w,
  E_2_4 = event.w,
  E_2_5 = event.w,
  E_2_6 = event.w,
  E_2_7 = event.w,
  E_3_0 = event.w,
  E_3_1 = event.w,
  E_3_2 = event.w,
  E_3_3 = event.w,
  E_3_4 = event.w,
  E_3_5 = event.w,
  E_3_6 = event.w,
  E_3_7 = event.w,
  E_7_0 = event.w,
  E_7_1 = event.w,
  E_7_2 = event.w,
  E_7_3 = event.w,
  E_7_4 = event.w,
  E_7_5 = event.w,
  E_7_6 = event.w,
  E_7_7 = event.w,
  PUMP1_WORK = event.s,
  PUMP2_WORK = event.s,
  PUMP3_WORK = event.s,
  PUMP1_READY_AUTO = event.s,
  PUMP2_READY_AUTO = event.s,
  PUMP3_READY_AUTO = event.s,
  PUMP1_READY = event.s,
  PUMP2_READY = event.s,
  PUMP3_READY = event.s,
  PUMP1_FAULT = event.s,
  PUMP2_FAULT = event.s,
  PUMP3_FAULT = event.s
} 

local msg= { 
  E_0_0 = "Дистанционное отключение" ,
  E_0_1 = "Обрыв датчика" ,
  E_0_2 = "Защита от сухого хода" ,
  E_0_3 = "Предупреждение о возможной неисправности вет систем" ,
  E_0_4 = "Ошибка системы E_0_4" ,
  E_0_5 = "Ошибка системы E_0_5" ,
  E_0_6 = "Ошибка системы E_0_6" ,
  E_0_7 = "Ошибка системы E_0_7" ,
  E_1_0 = "ПЧ насоса 1 не доступен для управления контроллером системы" ,
  E_1_1 = "Защита насоса 1 по сигналу РТС(перегрев)" ,
  E_1_2 = "Перегрев ПЧ насоса 1" ,
  E_1_3 = "Перегрузка ПЧ насоса 1" ,
  E_1_4 = "Прочие неисправности насоса 1" ,
  E_1_5 = "Неудовлетворительное качество питающей сети насоса 1" ,
  E_1_6 = "Ошибка насоса 1 E_1_6" ,
  E_1_7 = "Работа насоса 1 в аварийном режиме ручного пуска" ,
  E_2_0 = "ПЧ насоса 2 не доступен для управления контроллером системы" ,
  E_2_1 = "Защита насоса 2 по сигналу РТС(перегрев)" ,
  E_2_2 = "Перегрев ПЧ насоса 2" ,
  E_2_3 = "Перегрузка ПЧ насоса 2" ,
  E_2_4 = "Прочие неисправности насоса 2" ,
  E_2_5 = "Неудовлетворительное качество питающей сети насоса 2" ,
  E_2_6 = "Ошибка насоса 1 E_2_6" ,
  E_2_7 = "Работа насоса 2 в аварийном режиме ручного пуска" ,
  E_3_0 = "ПЧ насоса 3 не доступен для управления контроллером системы" ,
  E_3_1 = "Защита насоса 3 по сигналу РТС(перегрев)" ,
  E_3_2 = "Перегрев ПЧ насоса 3" ,
  E_3_3 = "Перегрузка ПЧ насоса 3" ,
  E_3_4 = "Прочие неисправности насоса 3" ,
  E_3_5 = "Неудовлетворительное качество питающей сети насоса 3" ,
  E_3_6 = "Ошибка насоса 3 E_3_6" ,
  E_3_7 = "Работа насоса 3 в аварийном режиме ручного пуска" ,
  E_7_0 = "ошибка E_7_0",
  E_7_1 = "ошибка E_7_1",
  E_7_2 = "ошибка E_7_2",
  E_7_3 = "ошибка E_7_3",
  E_7_4 = "ошибка E_7_4",
  E_7_5 = "ошибка E_7_5",
  E_7_6 = "ошибка E_7_6",
  E_7_7 = "ошибка E_7_7",
  PUMP1_WORK = "В работе насос 1",
  PUMP2_WORK = "В работе насос 2",
  PUMP3_WORK = "В работе насос 3",
  PUMP1_READY_AUTO = "Готов к работе в режиме автомат, насос 1",
  PUMP2_READY_AUTO = "Готов к работе в режиме автомат, насос 2",
  PUMP3_READY_AUTO = "Готов к работе в режиме автомат, насос 3",
  PUMP1_READY = "Готовность насоса 1",
  PUMP2_READY = "Готовность насоса 2",
  PUMP3_READY = "Готовность насоса 3",
  PUMP1_FAULT = "Обобщённая неисправность 1",
  PUMP2_FAULT = "Обобщённая неисправность 2",
  PUMP3_FAULT = "Обобщённая неисправность 3"
} 

--***********************************************************************************************************************************************************
--Функция проверки достоверности получаемых по модбас пакетов и формирования сигналов о недостоверности
function Check_Data_Reliability ()
  local time_source = " (Сервер)"                                 --переменная time_sourse инициализация
  local DRFlag = Core["RAW_SK712_1_UP_ST.STATUS_DEVICE"]                            --статус выполнения обращений к устройству если не равен 0, то устройство не исправно
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
      
      i = i+1                                                                                                                   --Увеличиваем i на единицу
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
--  ["E_0_0"]= {["Comment"] = sig_source..msg.E_0_0, ["eval"] = function(Name) local Tag="E_0_0" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end }, 
--  ["E_0_1"]= {["Comment"] = sig_source..msg.E_0_1, ["eval"] = function(Name) local Tag="E_0_1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["E_0_2"]= {["Comment"] = sig_source..msg.E_0_2, ["eval"] = function(Name) local Tag="E_0_2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["E_0_3"]= {["Comment"] = sig_source..msg.E_0_3, ["eval"] = function(Name) local Tag="E_0_3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["E_0_4"]= {["Comment"] = sig_source..msg.E_0_4, ["eval"] = function(Name) local Tag="E_0_4" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["E_0_5"]= {["Comment"] = sig_source..msg.E_0_5, ["eval"] = function(Name) local Tag="E_0_5" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["E_0_6"]= {["Comment"] = sig_source..msg.E_0_6, ["eval"] = function(Name) local Tag="E_0_6" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
--  ["E_0_7"]= {["Comment"] = sig_source..msg.E_0_7, ["eval"] = function(Name) local Tag="E_0_7" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_0"]= {["Comment"] = sig_source..msg.E_1_0, ["eval"] = function(Name) local Tag="E_1_0" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_1"]= {["Comment"] = sig_source..msg.E_1_1, ["eval"] = function(Name) local Tag="E_1_1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_2"]= {["Comment"] = sig_source..msg.E_1_2, ["eval"] = function(Name) local Tag="E_1_2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_3"]= {["Comment"] = sig_source..msg.E_1_3, ["eval"] = function(Name) local Tag="E_1_3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_4"]= {["Comment"] = sig_source..msg.E_1_4, ["eval"] = function(Name) local Tag="E_1_4" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_5"]= {["Comment"] = sig_source..msg.E_1_5, ["eval"] = function(Name) local Tag="E_1_5" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_6"]= {["Comment"] = sig_source..msg.E_1_6, ["eval"] = function(Name) local Tag="E_1_6" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_1_7"]= {["Comment"] = sig_source..msg.E_1_7, ["eval"] = function(Name) local Tag="E_1_7" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_0"]= {["Comment"] = sig_source..msg.E_2_0, ["eval"] = function(Name) local Tag="E_2_0" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_1"]= {["Comment"] = sig_source..msg.E_2_1, ["eval"] = function(Name) local Tag="E_2_1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_2"]= {["Comment"] = sig_source..msg.E_2_2, ["eval"] = function(Name) local Tag="E_2_2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_3"]= {["Comment"] = sig_source..msg.E_2_3, ["eval"] = function(Name) local Tag="E_2_3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_4"]= {["Comment"] = sig_source..msg.E_2_4, ["eval"] = function(Name) local Tag="E_2_4" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_5"]= {["Comment"] = sig_source..msg.E_2_5, ["eval"] = function(Name) local Tag="E_2_5" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_6"]= {["Comment"] = sig_source..msg.E_2_6, ["eval"] = function(Name) local Tag="E_2_6" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_2_7"]= {["Comment"] = sig_source..msg.E_2_7, ["eval"] = function(Name) local Tag="E_2_7" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_0"]= {["Comment"] = sig_source..msg.E_3_0, ["eval"] = function(Name) local Tag="E_3_0" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_1"]= {["Comment"] = sig_source..msg.E_3_1, ["eval"] = function(Name) local Tag="E_3_1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_2"]= {["Comment"] = sig_source..msg.E_3_2, ["eval"] = function(Name) local Tag="E_3_2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_3"]= {["Comment"] = sig_source..msg.E_3_3, ["eval"] = function(Name) local Tag="E_3_3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_4"]= {["Comment"] = sig_source..msg.E_3_4, ["eval"] = function(Name) local Tag="E_3_4" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_5"]= {["Comment"] = sig_source..msg.E_3_5, ["eval"] = function(Name) local Tag="E_3_5" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_6"]= {["Comment"] = sig_source..msg.E_3_6, ["eval"] = function(Name) local Tag="E_3_6" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_3_7"]= {["Comment"] = sig_source..msg.E_3_7, ["eval"] = function(Name) local Tag="E_3_7" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_0"]= {["Comment"] = sig_source..msg.E_7_0, ["eval"] = function(Name) local Tag="E_7_0" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_1"]= {["Comment"] = sig_source..msg.E_7_1, ["eval"] = function(Name) local Tag="E_7_1" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_2"]= {["Comment"] = sig_source..msg.E_7_2, ["eval"] = function(Name) local Tag="E_7_2" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_3"]= {["Comment"] = sig_source..msg.E_7_3, ["eval"] = function(Name) local Tag="E_7_3" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_4"]= {["Comment"] = sig_source..msg.E_7_4, ["eval"] = function(Name) local Tag="E_7_4" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_5"]= {["Comment"] = sig_source..msg.E_7_5, ["eval"] = function(Name) local Tag="E_7_5" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_6"]= {["Comment"] = sig_source..msg.E_7_6, ["eval"] = function(Name) local Tag="E_7_6" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["E_7_7"]= {["Comment"] = sig_source..msg.E_7_7, ["eval"] = function(Name) local Tag="E_7_7" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP1_WORK"]= {["Comment"] = sig_source..msg.PUMP1_WORK, ["eval"] = function(Name) local Tag="PUMP1_WORK" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP2_WORK"]= {["Comment"] = sig_source..msg.PUMP2_WORK, ["eval"] = function(Name) local Tag="PUMP2_WORK" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP3_WORK"]= {["Comment"] = sig_source..msg.PUMP3_WORK, ["eval"] = function(Name) local Tag="PUMP3_WORK" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP1_READY_AUTO"]= {["Comment"] = sig_source..msg.PUMP1_READY_AUTO, ["eval"] = function(Name) local Tag="PUMP1_READY_AUTO" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP2_READY_AUTO"]= {["Comment"] = sig_source..msg.PUMP2_READY_AUTO, ["eval"] = function(Name) local Tag="PUMP2_READY_AUTO" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP3_READY_AUTO"]= {["Comment"] = sig_source..msg.PUMP3_READY_AUTO, ["eval"] = function(Name) local Tag="PUMP3_READY_AUTO" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP1_READY"]= {["Comment"] = sig_source..msg.PUMP1_READY, ["eval"] = function(Name) local Tag="PUMP1_READY" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP2_READY"]= {["Comment"] = sig_source..msg.PUMP2_READY, ["eval"] = function(Name) local Tag="PUMP2_READY" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP3_READY"]= {["Comment"] = sig_source..msg.PUMP3_READY, ["eval"] = function(Name) local Tag="PUMP3_READY" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP1_FAULT"]= {["Comment"] = sig_source..msg.PUMP1_FAULT, ["eval"] = function(Name) local Tag="PUMP1_FAULT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP2_FAULT"]= {["Comment"] = sig_source..msg.PUMP2_FAULT, ["eval"] = function(Name) local Tag="PUMP2_FAULT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end },
  ["PUMP3_FAULT"]= {["Comment"] = sig_source..msg.PUMP3_FAULT, ["eval"] = function(Name) local Tag="PUMP3_FAULT" local signal = Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT) oldsignal[Tag] = signal end }
}

Core.onExtChange({"RAW_SK712_1_UP_ST.STATUS_DEVICE"}, Check_Data_Reliability)

for signals_Suffix, signals_descriptor in pairs(signals) do  
  Core.onExtChange({ObjID..signals_Suffix}, signals_descriptor.eval, {ObjID})  
end

Core.waitEvents()