-- Временные переменные для формирования аварий
local DRFlag 
local Log=true 
local oldsignal = {} 
local old_analog_signal_status = {} 

-- Для алармов имя пользователя и название зоны(экрана)
local user=""
local ScreenID_KOT="KOS" 

local ObjID = {"KOS1.", "KOS2."}
local objname = {["KOS1."] = "КОС1", ["KOS2."] = "КОС2"}
local sig_source="АСУ Э" 
local time_source = "" 
local old_DRFlag = {["RAW_KOS1_ST_UP.STATUS_DEVICE"] = 0,
                    ["RAW_KOS2_ST_UP.STATUS_DEVICE"] = 0}
 
local TagList={ 
  "UST_OBEZ_VIKL",
  "UST_OBEZ_VKL",
  "UST_OBEZ_VIKL_TR",
  "UST_OBEZ_VKL_TR",
  "UST_OBEZ_AVAR",
  "NASOS_KOAGUL_VKL_AVTO",
  "NASOS_KOAGUL_VKL_RUCH",
  "NASOS_KOAGUL_VIKL",
  "NASOS_KOAGUL_AVAR",
  "KOMPRESSOR_VIKL",
  "KOMPRESSOR_VIKL_TR",
  "KOMPRESSOR_VIKL_AV",
  "KOMPRESSOR_VKL",
  "KOMPRESSOR_VKL_TR",
  "NASOS_DOZ_FLOK_VIKL",
  "NASOS_DOZ_FLOK_VKL_AVTO",
  "NASOS_DOZ_FLOK_VKL_RUCH",
  "NASOS_DOZ_FLOK_AVAR",
  "NASOS_VTOR_OSAD_VIKL",
  "NASOS_VTOR_OSAD_VKL_AVTO",
  "NASOS_VTOR_OSAD_VKL_RUCH",
  "NASOS_VTOR_OSAD_AVAR",
  "NASOS_FLOK_VKL",
  "NASOS_FLOK_VIKL",
  "NASOS_FLOK_AVAR",
  "TEMPER_VKL_KLAPANA",
  "RAW_VISOK_UROV_OSADKA",
  "RAW_PODACHA_STOKA",
  "RAW_UROV_FLOK",
  "RAW_ELECTROPITANIE",
  "RAW_MESH_FLOK",
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
  UST_OBEZ_VIKL = event.s,
  UST_OBEZ_VKL = event.s,
  UST_OBEZ_VIKL_TR = event.s,
  UST_OBEZ_VKL_TR = event.s,
  UST_OBEZ_AVAR = event.w,
  NASOS_KOAGUL_VKL_AVTO = event.s,
  NASOS_KOAGUL_VKL_RUCH = event.s,
  NASOS_KOAGUL_VIKL = event.s,
  NASOS_KOAGUL_AVAR = event.w,
  KOMPRESSOR_VIKL = event.s,
  KOMPRESSOR_VIKL_TR = event.s,
  KOMPRESSOR_VIKL_AV = event.s,
  KOMPRESSOR_VKL = event.s,
  KOMPRESSOR_VKL_TR = event.s,
  NASOS_DOZ_FLOK_VIKL = event.s,
  NASOS_DOZ_FLOK_VKL_AVTO = event.s,
  NASOS_DOZ_FLOK_VKL_RUCH = event.s,
  NASOS_DOZ_FLOK_AVAR = event.w,
  NASOS_VTOR_OSAD_VIKL = event.s,
  NASOS_VTOR_OSAD_VKL_AVTO = event.s,
  NASOS_VTOR_OSAD_VKL_RUCH = event.s,
  NASOS_VTOR_OSAD_AVAR = event.w,
  NASOS_FLOK_VKL = event.s,
  NASOS_FLOK_VIKL = event.s,
  NASOS_FLOK_AVAR = event.w,
  RAW_VISOK_UROV_OSADKA = event.s,
  RAW_PODACHA_STOKA = event.s,
  RAW_UROV_FLOK = event.s,
  RAW_ELECTROPITANIE = event.s,
  RAW_MESH_FLOK = event.s
} 

local msg= { 
  UST_OBEZ_VIKL = "Установка обеззараживания отключена",
  UST_OBEZ_VKL = "Установка обеззараживания включена",
  UST_OBEZ_VIKL_TR = "Установка обеззараживания отключена/тр",
  UST_OBEZ_VKL_TR = "Установка обеззараживания включена/тр",
  UST_OBEZ_AVAR = "Установка обеззараживания отключена",
  NASOS_KOAGUL_VKL_AVTO = "Насос коагулянта включена/авто",
  NASOS_KOAGUL_VKL_RUCH = "Насос коагулянта включена/руч",
  NASOS_KOAGUL_VIKL = "Насос коагулянта отключен",
  NASOS_KOAGUL_AVAR = "Насос коагулянта авария",
  KOMPRESSOR_VIKL = "Компрессор отключен",
  KOMPRESSOR_VIKL_TR = "Компрессор отключен/тр",
  KOMPRESSOR_VIKL_AV = "Компрессор отключен/ав",
  KOMPRESSOR_VKL = "Компрессор включен",
  KOMPRESSOR_VKL_TR = "Компрессор включен/тр",
  NASOS_DOZ_FLOK_VIKL = "Насос-дозатор флокулянта отключен",
  NASOS_DOZ_FLOK_VKL_AVTO = "Насос-дозатор флокулянта включен/авт",
  NASOS_DOZ_FLOK_VKL_RUCH = "Насос-дозатор флокулянта включен/руч",
  NASOS_DOZ_FLOK_AVAR = "Насос-дозатор флокулянта авария",
  NASOS_VTOR_OSAD_VIKL = "Насос вторичного осадка отключен",
  NASOS_VTOR_OSAD_VKL_AVTO = "Насос вторичного осадка включен/авт",
  NASOS_VTOR_OSAD_VKL_RUCH = "Насос вторичного осадка включен/руч",
  NASOS_VTOR_OSAD_AVAR = "Насос вторичного осадка авария",
  NASOS_FLOK_VKL = "Насос флокулянта включен",
  NASOS_FLOK_VIKL = "Насос флокулянта отключен ",
  NASOS_FLOK_AVAR = "Насос флокулянта авария",
  RAW_VISOK_UROV_OSADKA = "Высокий уровень осадка",
  RAW_PODACHA_STOKA = "Подача стока ", 
  RAW_UROV_FLOK = "Уровень флокулянта низкий",
  RAW_ELECTROPITANIE = "Электропитание авария",
  RAW_MESH_FLOK = "Мешалка флокулянта авария"
} 
 
--***********************************************************************************************************************************************************
--Функция проверки достоверности получаемых по модбас пакетов и формирования сигналов о недостоверности
function Check_Data_Reliability (sendDRFlag)
  local time_source = "(Сервер)"                                 --переменная time_sourse инициализация
  local DRFlag = Core[sendDRFlag[1]]                           --статус выполнения обращений к устройству если не равен 0, то устройство не исправно
  local DT = os.time()                                            --текущее время операционки
  if old_DRFlag[sendDRFlag[1]] == nil or old_DRFlag[sendDRFlag[1]] ~= DRFlag then                 --если переменная статуса получает nil(отсутсвие значения) то
    local i = 1 
    local Tag 
    while TagList[i] ~= nil do                                  --проход по массиву  TagList
      if TagList[i] ~= nil then Tag = TagList[i] else break end   --присвоение переменной Tag значения массива TagList
      
      if   msg[Tag] == nil then break end
      
      if DRFlag == 2 then   --заплатка для нерабочего модбас, должно быть DRFlag > 0     --если есть сбой предачи по сети модбас то
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag], event.dr, 1, sig_source..time_source, user, sendDRFlag[1], DT, ScreenID) --создаём событие о появлении недостоверности всех сигнала
        if Log then  Core.addLogMsg(os.date().." ".."(Появл) НЕДОСТОВЕРНО: " .. msg[Tag])end                                     --добавления сообщения в лог о появлении этого сигнала
      end
      
      if DRFlag ~= 2 and DRFlag ~= 128 then  --заплатка для нерабочего модбас, должно быть DRFlag == 0                                                                                                                        
        Core.addEvent("НЕДОСТОВЕРНО: " .. msg[Tag] , event.dr , 0, sig_source..time_source, user, sendDRFlag[1], DT, ScreenID)   --создаём событие о исчесновении недостоверности всех сигналов
        if Log then  Core.addLogMsg(os.date().." ".."(Исчезн) НЕДОСТОВЕРНО: " .. msg[Tag]) end                                --добавления сообщения в лог о исчезновении этого сигнала
      end
      
      i = i+1                                                                                                                   --Увеличиваем i на единицу
    end
    
    old_DRFlag[sendDRFlag[1]] = DRFlag                                                                                          --вписываем зачение старого флага новому, зачем? а х.з
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
    Core.addEvent(msg[Tag], event_class[Tag], e_type, sig_source.." "..objname[objid], user, objid..Tag, DT, screen_id) 
  end 
end 

local blocks

local signals = {
  ["UST_OBEZ_VIKL"]= {["Comment"] = sig_source..msg.UST_OBEZ_VIKL, ["eval"]= function(Name) local Tag="UST_OBEZ_VIKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end }, 
  ["UST_OBEZ_VKL"]= {["Comment"] = sig_source..msg.UST_OBEZ_VKL, ["eval"]= function(Name) local Tag="UST_OBEZ_VKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["UST_OBEZ_VIKL_TR"]= {["Comment"] = sig_source..msg.UST_OBEZ_VIKL_TR, ["eval"]= function(Name) local Tag="UST_OBEZ_VIKL_TR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["UST_OBEZ_VKL_TR"]= {["Comment"] = sig_source..msg.UST_OBEZ_VKL_TR, ["eval"]= function(Name) local Tag="UST_OBEZ_VKL_TR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["UST_OBEZ_AVAR"]= {["Comment"] = sig_source..msg.UST_OBEZ_AVAR, ["eval"]= function(Name) local Tag="UST_OBEZ_AVAR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_KOAGUL_VKL_AVTO"]= {["Comment"] = sig_source..msg.NASOS_KOAGUL_VKL_AVTO, ["eval"]= function(Name) local Tag="NASOS_KOAGUL_VKL_AVTO" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_KOAGUL_VKL_RUCH"]= {["Comment"] = sig_source..msg.NASOS_KOAGUL_VKL_RUCH, ["eval"]= function(Name) local Tag="NASOS_KOAGUL_VKL_RUCH" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_KOAGUL_VIKL"]= {["Comment"] = sig_source..msg.NASOS_KOAGUL_VIKL, ["eval"]= function(Name) local Tag="NASOS_KOAGUL_VIKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_KOAGUL_AVAR"]= {["Comment"] = sig_source..msg.NASOS_KOAGUL_AVAR, ["eval"]= function(Name) local Tag="NASOS_KOAGUL_AVAR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["KOMPRESSOR_VIKL"]= {["Comment"] = sig_source..msg.KOMPRESSOR_VIKL, ["eval"]= function(Name) local Tag="KOMPRESSOR_VIKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["KOMPRESSOR_VIKL_TR"]= {["Comment"] = sig_source..msg.KOMPRESSOR_VIKL_TR, ["eval"]= function(Name) local Tag="KOMPRESSOR_VIKL_TR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["KOMPRESSOR_VIKL_AV"]= {["Comment"] = sig_source..msg.KOMPRESSOR_VIKL_AV, ["eval"]= function(Name) local Tag="KOMPRESSOR_VIKL_AV" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["KOMPRESSOR_VKL"]= {["Comment"] = sig_source..msg.KOMPRESSOR_VKL, ["eval"]= function(Name) local Tag="KOMPRESSOR_VKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["KOMPRESSOR_VKL_TR"]= {["Comment"] = sig_source..msg.KOMPRESSOR_VKL_TR, ["eval"]= function(Name) local Tag="KOMPRESSOR_VKL_TR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_DOZ_FLOK_VIKL"]= {["Comment"] = sig_source..msg.NASOS_DOZ_FLOK_VIKL, ["eval"]= function(Name) local Tag="NASOS_DOZ_FLOK_VIKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_DOZ_FLOK_VKL_AVTO"]= {["Comment"] = sig_source..msg.NASOS_DOZ_FLOK_VKL_AVTO, ["eval"]= function(Name) local Tag="NASOS_DOZ_FLOK_VKL_AVTO" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_DOZ_FLOK_VKL_RUCH"]= {["Comment"] = sig_source..msg.NASOS_DOZ_FLOK_VKL_RUCH, ["eval"]= function(Name) local Tag="NASOS_DOZ_FLOK_VKL_RUCH" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_DOZ_FLOK_AVAR"]= {["Comment"] = sig_source..msg.NASOS_DOZ_FLOK_AVAR, ["eval"]= function(Name) local Tag="NASOS_DOZ_FLOK_AVAR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_VTOR_OSAD_VIKL"]= {["Comment"] = sig_source..msg.NASOS_VTOR_OSAD_VIKL, ["eval"]= function(Name) local Tag="NASOS_VTOR_OSAD_VIKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_VTOR_OSAD_VKL_AVTO"]= {["Comment"] = sig_source..msg.NASOS_VTOR_OSAD_VKL_AVTO, ["eval"]= function(Name) local Tag="NASOS_VTOR_OSAD_VKL_AVTO" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_VTOR_OSAD_VKL_RUCH"]= {["Comment"] = sig_source..msg.NASOS_VTOR_OSAD_VKL_RUCH, ["eval"]= function(Name) local Tag="NASOS_VTOR_OSAD_VKL_RUCH" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_VTOR_OSAD_AVAR"]= {["Comment"] = sig_source..msg.NASOS_VTOR_OSAD_AVAR, ["eval"]= function(Name) local Tag="NASOS_VTOR_OSAD_AVAR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_FLOK_VKL"]= {["Comment"] = sig_source..msg.NASOS_FLOK_VKL, ["eval"]= function(Name) local Tag="NASOS_FLOK_VKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_FLOK_VIKL"]= {["Comment"] = sig_source..msg.NASOS_FLOK_VIKL, ["eval"]= function(Name) local Tag="NASOS_FLOK_VIKL" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["NASOS_FLOK_AVAR"]= {["Comment"] = sig_source..msg.NASOS_FLOK_AVAR, ["eval"]= function(Name) local Tag="NASOS_FLOK_AVAR" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["RAW_VISOK_UROV_OSADKA"]= {["Comment"] = sig_source..msg.RAW_VISOK_UROV_OSADKA, ["eval"]= function(Name) local Tag="RAW_VISOK_UROV_OSADKA" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["RAW_PODACHA_STOKA"]= {["Comment"] = sig_source..msg.RAW_PODACHA_STOKA, ["eval"]= function(Name) local Tag="RAW_PODACHA_STOKA" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["RAW_UROV_FLOK"]= {["Comment"] = sig_source..msg.RAW_UROV_FLOK, ["eval"]= function(Name) local Tag="RAW_UROV_FLOK" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["RAW_ELECTROPITANIE"]= {["Comment"] = sig_source..msg.RAW_ELECTROPITANIE, ["eval"]= function(Name) local Tag="RAW_ELECTROPITANIE" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
  ["RAW_MESH_FLOK"]= {["Comment"] = sig_source..msg.RAW_MESH_FLOK, ["eval"]= function(Name) local Tag="RAW_MESH_FLOK" local signal= Core[Name[1]..Tag] Add_Event (Tag, signal, ScreenID_KOT, Name[1]) oldsignal[Tag] = signal end },
}

for signal,_ in pairs(old_DRFlag) do
  -- Core.addLogMsg(signal)
  Core.onExtChange({signal}, Check_Data_Reliability, {signal})
end

for i = 1, #ObjID, 1 do
  for signals_Suffix, signals_descriptor in pairs(signals) do 
      Core.onExtChange({ObjID[i]..signals_Suffix}, signals_descriptor.eval, {ObjID[i]}) 
  end
end
Core.waitEvents()