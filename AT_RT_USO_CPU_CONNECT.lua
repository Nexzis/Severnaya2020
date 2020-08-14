-- скрипт проверки соединения со всеми ПЛК (из таблицы) и  состояния их ЦПУ. Исполняется на сервере																																																	/Тулупов/


local event =require("./_events_desc"); -- считаем описание классов аварийных сообщений

local ScreenID="DIAGN" -- идентификатор мнемосхемы технологического объекта
local e_type -- тип события(появление/исчезновение)
local ObjID="" --префикс тега
local SystemID="GSP_SEV_KSSEV_E_" -- идентификатор системы
local Logs=true -- вести логи
local oldConnect={}  -- буферная таблица потери связи с узлом
local oldCrash={}-- буферная таблица потери отказа ЦПУ ПЛК
local User= ""--PLCs[Signal[2]].ObjDesc
--local User= PLCs[Signal[2]].ObjDesc
local Source="Сервер АСУЭ (система)"

local Faults = { -- таблица значений отказов 
				unknouwn=32, --состояние неизвестно
				sc=8,  -- КЗ
				br=4,  -- обрыв
				crash=2, --отказ
				fault=1, -- частично неисправно или не отвечает
				no=0,  -- ошибок нет, всё в порядке
				 }

local PLCs={-- таблица описания контроллеров системы
--		 имя контроллера    ссылка(источник)				тег соединения				тег состояния				описание 			место установки
		--	["USO1_A1"]={["addr"]="USO1_A1", ["offline"]="FAULT.Connect", ["crash"]="FAULT.CPU",["ObjID"]="УСО 1 (ПЛК А1). ",["ObjDesc"]="СТЕНД ",}, --тестовый ПЛК
			["USOE_A1"]={["addr"]="USOE_A1", ind=1,["offline"]="FAULT.Connect", ["crash"]="FAULT.CPU",["ObjID"]="УСО Э (ПЛК А1). ",["ObjDesc"]="КРУ-10 кВ ",},
			["USOKTP1_A1"]={["addr"]="USOKTP1_A1", ind=2,["offline"]="FAULT.Connect" , ["crash"]="FAULT.CPU", ["ObjDesc"]="УСО КТП1 (ПЛК А1) "},
			["USOKTP2_A1"]={["addr"]="USOKTP2_A1", ind=4, ["offline"]="FAULT.Connect" , ["crash"]="FAULT.CPU", ["ObjDesc"]="УСО КТП2 (ПЛК А1) "},
			["USOKTP1_A2"]={["addr"]="USOKTP1_A2", ind=3, ["offline"]="FAULT.Connect" ,["crash"]="FAULT.CPU",  ["ObjDesc"]="УСО КТП1 (ПЛК А2) "},
			["USOKTP2_A2"]={["addr"]="USOKTP2_A2", ind=5,["offline"]="FAULT.Connect" , ["crash"]="FAULT.CPU", ["ObjDesc"]="УСО КТП2 (ПЛК А2) "},
			["USOGSU_A1"]={["addr"]="USOGSU_A1", ind=6, ["offline"]="FAULT.Connect" , ["crash"]="FAULT.CPU", ["ObjDesc"]="УСО ГЩУ (ПЛК А1) "},
			["USOP_A1"]={["addr"]="USOP_A1", ind=9, ["offline"]="FAULT.Connect" , ["crash"]="FAULT.CPU", ["ObjDesc"]="УСО П (ПЛК А1) "},
			["USOK_A1"]={["addr"]="USOK_A1", ind=8, ["offline"]="FAULT.Connect" , ["crash"]="FAULT.CPU", ["ObjDesc"]="УСО К (ПЛК А1) "},
			["SAUVOS_A1"]={["addr"]="SAUVOS_A1", ind=7,["offline"]="FAULT.Connect" ,["crash"]="FAULT.CPU",  ["ObjDesc"]="САУ ВОС (ПЛК А1) "},
}

local noValid =require("./_reliabilityField"); -- считаем описание битового поля недостоверности сигнала


local function CreateAllAlarms(Signal) --функция высыпает сообщения о недостоверности ВСЕХ входов и управляет флагом достоверности сигналов
	Core.addLogMsg(tostring(Signal[4]))
	local PLC_Name= string.sub(Signal[1], tostring(string.find(Signal[1],"_")+1)).."_" --имя ПЛК
	local USO_Name= string.sub(Signal[1],1, tostring(string.find(Signal[1],"_")-1)) --название УСО
	local ConfFolder="./PLC_config/"..	string.gsub(Signal[1],"_","/").."/" -- определим папку с конфигурацией узла
--........................................................
	local RawDI=require(ConfFolder.. "DI_map") --считываем конфигурацию дискретных входов ПЛК
	local RawAI=require(ConfFolder.. "AI_map") --считываем конфигурацию аналоговых входов ПЛК
	local AI_Signals=require(ConfFolder.. "AI_data") --считываем базу аналоговых тегов и их свойств
	local DI_Signals=require(ConfFolder.. "DI_data") --считываем базу дискретных тегов и их свойств
	local RawDO=require(ConfFolder.. "DO_map") --считываем конфигурацию дискретных выходов ПЛК
	local DO_Signals=require(ConfFolder.. "DO_data") --считываем базу дискретных выходов и их свойств
	local timestamp=os.time(); -- метка времени
	local e_type=Signal[2]
	local reliabilityField -- слово достоверности сигнала
	local error_code --код ошибки
	
	local Value --значение флага достоверности

		--if Signal[4]~=true and Signal[4]~=false --если значение переменной пришло небулевое
		--then
		--	if Signal[4]== Faults.no --если пришло отсутствие неисправности 
		--	then
		--		Value=true   --флаг достоверности установлен
		--	else
		--		Value=false    --флаг достоверности сброшен

		--	end --Signal[4]== 0
		--else 
--			Value=Signal[4]
	
	--	end --Signal[4]~=true and Signal[4]~=false
		
		--определим код ошибки в зависимости от сценария
		if Signal[5]==2 then error_code=noValid.PLC --при сценарии 2 - обрыв связи
		elseif Signal[5]==1 then error_code=noValid.CPU --при сценарии 1 отказ ЦПУ
		else error_code=noValid.unknouwn --в других случаях неизвестно
		end --if Signal[5]


	for Module, ChNum in pairs(RawDI) --пройдемся списку дискретных модулей 
			do 
						for _, Ch in pairs(ChNum) -- пройдемся по каналам
							do
									DI_Channel=PLC_Name..Module.."."..Ch -- сформируем  имя канала

									AlarmMsg=PLCs[Signal[1]].ObjDesc..DI_Signals[DI_Channel].Comment..DI_Signals[DI_Channel].Txt_1..". ЗНАЧЕНИЕ НЕДОСТОВЕРНО"..Signal[3]-- сформируем текст сообщения
 									reliabilityField=Core[SystemID..USO_Name.."_"..DI_Signals[DI_Channel].Tag..".reliabilityField"]-- считаем слово достоверности
									if Logs -- если логи включены
									then Core.addLogMsg(AlarmMsg.." ("..e_type..") ".. event.dr .. " " .. e_type.. " " ..  Signal[6].. " " .. Signal[7].. " " ..  USO_Name.. "_"..DI_Signals[DI_Channel].Tag.. " " ..  timestamp.. " " ..  ScreenID) --запишем лог
									end --if Logs 
 									Core.addEvent(AlarmMsg, event.dr , e_type,  Signal[6], Signal[7], SystemID..USO_Name.. "_"..DI_Signals[DI_Channel].Tag, timestamp, ScreenID) --выведем сообщение в строку событий
									if e_type==1 --если событие произошло
									then
										reliabilityField=bit32.bor(reliabilityField,error_code) --добавим в слово достоверности бит потери связи с ПЛК
									else 
										reliabilityField=bit32.bxor(reliabilityField,error_code) --уберем из слова достоверности бит потери связи
									end --	if e_type==1
									Core.addLogMsg("Проверка поля достоверности сигнала ".. SystemID..USO_Name.."_"..DI_Signals[DI_Channel].Tag)
									Core.addLogMsg(tostring(SystemID..USO_Name.."_"..DI_Signals[DI_Channel].Tag..".reliabilityField"))
									Core[SystemID..USO_Name.."_"..DI_Signals[DI_Channel].Tag..".reliabilityField"]=reliabilityField -- передадим в ядро  слово достоверности 
									if reliabilityField ==0  -- если значение поля отличается от 0
									then 
										Core[SystemID..USO_Name.."_"..DI_Signals[DI_Channel].Tag..".reliabilityFlag"]=true --сделаем сигнал достоверным											

									else
										Core[SystemID..USO_Name.."_"..DI_Signals[DI_Channel].Tag..".reliabilityFlag"]=false --сделаем сигнал недостоверным
									end --	if reliabilityField<>0 

							end --_, Ch
	end --for Module, ChNum 

	for Module, ChNum in pairs(RawAI) --проидемся списку аналоговых модулей 
			do 
						for _, Ch in pairs(ChNum) -- пройдемся по каналам
							do
									AI_Channel=PLC_Name..Module.."."..Ch -- сформируем  имя канала
									AlarmMsg=PLCs[Signal[1]].ObjDesc..AI_Signals[AI_Channel].Comment..". Измерение невозможно. ЗНАЧЕНИЕ НЕДОСТОВЕРНО"..Signal[3]-- сформируем текст сообщения
									reliabilityField=Core[SystemID..USO_Name.."_"..AI_Signals[AI_Channel].Tag..".reliabilityField"]-- считаем слово достоверности
 									if Logs -- если логи включены
									then Core.addLogMsg(AlarmMsg.." ("..e_type..") ".. event.dr .. " " .. e_type.. " " ..  Signal[6].." ".. Signal[7].. " " ..  USO_Name.. "_"..AI_Signals[AI_Channel].Tag.. " " ..  timestamp.. " " ..  ScreenID) --запишем лог
									end --if Logs 
 									Core.addEvent(AlarmMsg, event.dr , e_type,  Signal[6], Signal[7], SystemID..USO_Name.. "_"..AI_Signals[AI_Channel].Tag, timestamp, ScreenID) --выведем сообщение в строку событий
									if e_type==1 --если событие произошло
									then
										reliabilityField=bit32.bor(reliabilityField,error_code) --добавим в слово достоверности бит потери связи с ПЛК
									else 
										reliabilityField=bit32.bxor(reliabilityField,error_code) --уберем из слова достоверности бит потери связи
									end --	if e_type==1
									Core[SystemID..USO_Name.."_"..AI_Signals[AI_Channel].Tag..".reliabilityField"]=reliabilityField -- передадим в ядро  слово достоверности 

									if reliabilityField ==0  -- если значение поля отличается от 0
									then 
										Core[SystemID..USO_Name.."_"..AI_Signals[AI_Channel].Tag..".reliabilityFlag"]=true --сделаем сигнал достоверным											

									else
										Core[SystemID..USO_Name.."_"..AI_Signals[AI_Channel].Tag..".reliabilityFlag"]=false --сделаем сигнал недостоверным
									end --	if reliabilityField<>0 


						end --_, Ch
	end --for Module, ChNum 
						for Ch, _ in pairs(DO_Signals) --проидемся списку дискретных выходов
						do 
							-- проверим появление команд от оператора
							local DO_Channel=DO_Signals[Ch]["Tag"]-- сформируем имя тега
							reliabilityField=Core[SystemID..USO_Name.."_"..DO_Signals[Ch].Tag..".reliabilityField"]-- считаем слово достоверности
							AlarmMsg=PLCs[Signal[1]].ObjDesc..DO_Signals[Ch].Comment..". Управление невозможно. ЗНАЧЕНИЕ НЕДОСТОВЕРНО"..Signal[3]-- сформируем текст сообщения
								if Logs -- если логи включены
									then Core.addLogMsg(AlarmMsg.." ("..e_type..") ".. event.dr .. " " .. e_type.. " " ..  Signal[6].." ".. Signal[7].. " " ..  USO_Name.. "_"..DO_Signals[Ch].Tag.. " " ..  timestamp.. " " ..  ScreenID) --запишем лог
									end --if Logs 
 									Core.addEvent(AlarmMsg, event.dr , e_type,  Signal[6], Signal[7], SystemID..USO_Name.. "_"..DO_Signals[Ch].Tag, timestamp, ScreenID) --выведем сообщение в строку событий
									if e_type==1 --если событие произошло
									then
										reliabilityField=bit32.bor(reliabilityField,error_code) --добавим в слово достоверности бит потери связи с ПЛК
									else 
										reliabilityField=bit32.bxor(reliabilityField,error_code) --уберем из слова достоверности бит потери связи
									end --	if e_type==1
									Core[SystemID..USO_Name.."_"..DO_Signals[Ch].Tag..".reliabilityField"]=reliabilityField -- передадим в ядро  слово достоверности 


									if reliabilityField ==0  -- если значение поля отличается от 0
									then 
										Core[SystemID..USO_Name.."_"..DO_Signals[Ch].Tag..".reliabilityFlag"]=true --сделаем сигнал достоверным											

									else
										Core[SystemID..USO_Name.."_"..DO_Signals[Ch].Tag..".reliabilityFlag"]=false --сделаем сигнал недостоверным
									end --	if reliabilityField<>0 

						end --for Ch, _ 

	

--сделать для DO


end--local function CreateAllAlarms(PLC)

local function CheckFault(Signal) -- функция определения типа появившейся неисправности
	local action -- сценарий отказа
	local e_type -- тип события (появление/исчезновение)
--	local EventMsg -- сообщение о причине недостоверности
	local Value=Core[Signal[1]]--значение сигнала неисправности
	--Core.addLogMsg(tostring(string.gsub(Signal[1, ".CPU", ".Disabled"])).."="..tostring(Value))
--	local CollectDisabledVar=string.gsub(Signal[1], ".CPU", ".Disabled") --флаг принудительного останова опроса
--Core.setMessage(tostring(CollectDisabledVar).."="..tostring(Core[CollectDisabledVar]))
--Core.setMessage(tostring(Signal[1]).."=".. tostring(Value).." "..os.clock())

	if string.find(Signal[1],".CPU") -- определяем сценарий отказа
		then 
			EventMsg=" (отказ ЦПУ)"	 -- текст отказа
			action=1 --номер сценария
	elseif	string.find(Signal[1],".Connect")
		then 
			EventMsg=" (потеря связи с устройством)"	-- текст отказа
			action=2 --номер сценария
	else
		return
	end--	if string.find(Signal[1],"CPU")

	if action==1 -- сценарий 1 - отказ ЦПУ
		then	
			--
			if oldCrash[Signal[2]]~=nil and oldCrash[Signal[2]]~=Value --если изменился сигнал состояния ЦПУ
			then 
			--		if Value> then e_type=0 else e_type=1 end-- if Value==true --определим появление/исчезновение события
					if Value==Faults.crash -- полный отказ ЦПУ
						then
							if Logs
								then
									Core.addLogMsg(PLCs[Signal[2]].ObjDesc.." Отказ ЦПУ " .. " ".. event.a .. " 1 ".. Source .." ".. User .. " "..Signal[1].. " ".. os.time().. " ".. ScreenID) --запись в лог
							end --if Logs
							Core.addEvent(PLCs[Signal[2]].ObjDesc.." Отказ ЦПУ ", event.a , 1, Source, User, Signal[1], os.time(), ScreenID) --выведем сообщение в строку событий
							CreateAllAlarms({Signal[2], 1 , " (отказ ЦПУ)",Value,action}) -- сделаем данные недостоверными
					elseif Value==Faults.fault --неисправность в линейке ПЛК
						then
							if Logs
								then
									Core.addLogMsg(PLCs[Signal[2]].ObjDesc.." Неисправность в корзине ПЛК. " .. " ".. event.w .. " 1 "..  Source .." ".. User .. " "..Signal[1].. " ".. os.time().. " ".. ScreenID) --запись в лог
							end --if Logs
							Core.addEvent(PLCs[Signal[2]].ObjDesc.." Неисправность в корзине ПЛК. ", event.w , 1,  Source , User,Signal[1], os.time(), ScreenID) --выведем сообщение в строку событий
					elseif Value==Faults.no and oldCrash[Signal[2]]==Faults.fault  -- устранена неисправность
						then
							if Logs
								then
									Core.addLogMsg(PLCs[Signal[2]].ObjDesc.." Неисправность в корзине ПЛК устранена. " .. " ".. event.w .. " 0 "..  Source .. " ".. User .. " "..Signal[1].. " ".. os.time().. " ".. ScreenID) --запись в лог
							end --if Logs
							Core.addEvent(PLCs[Signal[2]].ObjDesc.." Неисправность в корзине ПЛК устранена. ", event.w , 0,  Source, User,Signal[1], os.time(), ScreenID) --выведем сообщение в строку событий
					elseif Value==Faults.no and oldCrash[Signal[2]]==Faults.crash  -- устранен полный отказ ЦПУ
						then
							if Logs
								then
									Core.addLogMsg(PLCs[Signal[2]].ObjDesc.." Отказ ЦПУ устранен. " .. " ".. event.a .. " 0 "..  Source .. " ".. User.. " "..Signal[1].. " ".. os.time().. " ".. ScreenID) --запись в лог
							end --if Logs
							Core.addEvent(PLCs[Signal[2]].ObjDesc.." Отказ ЦПУ устранен.", event.a , 0, Source, User,Signal[1], os.time(), ScreenID) --выведем сообщение в строку событий
							CreateAllAlarms({Signal[2], 0 , " (отказ ЦПУ)",Value,action, Source,User}) -- сделаем данные недостоверными и создадим сообщения
					else return -- если сценарий не описан - завершение функции
					end --if Value==2
			end --oldCrash[Signal[2]]~=nil 
			oldCrash[Signal[2]]=Value --запомним значение в буфере
	elseif action==2 -- сценарий 2 - потеря связи с ЦПУ
		then
			--
			if oldConnect[Signal[2]]~=nil and oldConnect[Signal[2]]~=Value --если значение в буфере существует и отличается
			then 
				if Value==true then e_type=0 else e_type=1 end-- if Value==true --определим появление/исчезновение события
				--высыпаем в строку сообщения о недостоверхости всех входов!
				CreateAllAlarms({Signal[2],e_type, " (потеря связи с ПЛК)",Value,action,Source,User}) --вывалим в строку ссобщений недостоверность
			end --oldConnect[Signal[2]]~=nil 
			oldConnect[Signal[2]]=Value --запомним значение в буфере
	else return -- в противном случае завершить функцию
	end --action==1
end -- CheckFault(Signal)


--...main()...
-- инициализация состояний
	for _, addr in pairs (PLCs) do 
-- вычленим из адреса имя ПЛК
--		local FaultTag=ObjID..addr.addr.."_"..addr.offline  -- флаг обрыва связи
--		oldConnect[addr.addr]=Core[FaultTag]
		local CrashCPUTag=ObjID..addr.addr.."_"..addr.crash	 -- флаг отказа ЦПУ	
		oldCrash[addr.addr]=Core[CrashCPUTag] --сохраним в буфер
end --_, addr in pairs (nodes)

--отслеживаем изменение состояния ЦПУ
	for _, addr in pairs (PLCs) do 
-- вычленим из адреса имя ПЛК
		local FaultTag=ObjID..addr.addr.."_"..addr.offline  -- флаг обрыва связи
--		Core.addLogMsg("1. "..FaultTag)
		Core.onExtChange({FaultTag}, CheckFault, {FaultTag, addr.addr }) --отслеживаем изменение состояния связи
		local CrashCPUTag=ObjID..addr.addr.."_"..addr.crash	 -- флаг отказа ЦПУ	
--		Core.addLogMsg("2. "..CrashCPUTag)
		Core.onExtChange({CrashCPUTag}, CheckFault, {CrashCPUTag, addr.addr}) --отслеживаем исправность ЦПУ
	end --_, addr in pairs (nodes)

Core.waitEvents( )