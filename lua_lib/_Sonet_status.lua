--библиотека функций диагностики аппаратной части ПЛК Сонет. Версия от 11-04-19
--11-04-19 закомментил c 276 по 300 строку, - задвоение сообщений
--         Sonet_Fixture.add_DR_msg(ModuleStat) строка 129 загрубил  с g_faults.no до g_faults.fault
--05-12-18 исправлен алгоритм определения достоверности двухбитовых сигналов 

 Sonet_Fixture={}
--

 
 function Sonet_Fixture.Init_DI_Module(Slot) --функция инициализации состочния модуля и определния достоверности сигналов на старте в зависимости от состояния дискретного входного модуля
--local reliabilityField=0	--поле достоверности сигнала
		for Module, ChNum in pairs(g_RawDI) --DI
			do 

				local Module_Fault=Core[g_USO_ID..g_PLC_Name..g_PLC_state.. ".Slot"..Slot] --получим из ядра состояние модуля
				local PLC_disabled=Core[g_USO_ID..g_PLC_Name..g_PLC_state.. ".Disabled"] --получим из ядра состояние модуля --13-12-18
				for _, Ch in pairs(ChNum) 
				do
					local DI_Channel=g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
					--local Tag=Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".Value"]
					
						if 	Module_Fault > g_Faults.no  --если модуль неисправен 
					--	if 	Module_Fault > g_Faults.fault  --если модуль не мертвый
							then	
								reliabilityField=Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityField"]-- получим из ядра значение поля достоверности сигнала
								--reliabilityField=bit32.bor(reliabilityField,g_noValid.Mod) -- добавим неисправность модуля
								Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityField"]=reliabilityField -- отправим обратно в ядро
					
						
						end--if 	Module_Fault > g_Faults.no 
							local ChannelStatus=Core[g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status"] -- получим состояние текущего канала
							if 	ChannelStatus > g_Faults.no  --если в канале ошибка
								then	
									reliabilityField=Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityField"]-- получим из ядра значение поля достоверности сигнала
									reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch) -- добавим неисправность канала
									Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityField"]=reliabilityField -- отправим обратно в ядро
							end--if 	ChannelStatus > g_Faults.no 
						if PLC_disabled==true --если опрос ПЛК отключен --13-12-18
						then
							 
									Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".repairFlag"]=true -- отключим опрос сигнала
						
						end--if PLC_disabled==true
					
	
				end --_, Ch
		end --for Module, ChNum 	
end -- function Sonet_Fixture.Init_DI_Module(Module)

 
 function Sonet_Fixture.Init_AI_Module(Slot) --функция инициализации состочния модуля и определния достоверности сигналов на старте в зависимости от состояния аналогового входного модуля

		for Module, ChNum in pairs(g_RawAI) --AI
			do 
				local Module_Fault=Core[g_USO_ID..g_PLC_Name..g_PLC_state.. ".Slot"..Slot] --получим из ядра состояние модуля
				local PLC_disabled=Core[g_USO_ID..g_PLC_Name..g_PLC_state.. ".Disabled"] --получим из ядра состояние модуля --13-12-18
				for _, Ch in pairs(ChNum) 
				do
					os.sleep(0.3)
					local AI_Channel=g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
					--local Tag=Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value"]
						if 	Module_Fault > g_Faults.fault  --если модуль исправен или частично неисправен - сигнал достоверен
							then	
								local reliabilityField=Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"]-- получим из ядра значение поля достоверности сигнала
								reliabilityField=bit32.bor(reliabilityField,g_noValid.Mod) -- добавим неисправность модуля
								Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"]=reliabilityField -- отправим обратно в ядро
					
						end--if 	Module_Fault > g_Faults.no 
						
						os.sleep(0.3)
						local ChannelStatus=Core[g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status"] -- получим состояние текущего канала
						if 	ChannelStatus > g_Faults.no  --если есть ошибка в канале - сигнал недостоверен
							then	
								reliabilityField=Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"]-- получим из ядра значение поля достоверности сигнала
								reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch) -- добавим неисправность канала
								Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"]=reliabilityField -- отправим обратно в ядро
						end--if 	ChannelStatus  > g_Faults.no 		
						if PLC_disabled==true --если опрос ПЛК отключен --13-12-18
						then
							 
									Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".repairFlag"]=true -- отключим опрос сигнала
						
						end--if PLC_disabled==true
				end --_, Ch
		end --for Module, ChNum 	
end -- local function Init_AI_Module(Module)

	function Sonet_Fixture.Init_DO_Module(Slot) --функция инициализации состочния модуля и определния достоверности сигналов на старте в зависимости от состояния дискретного входного модуля

	for Module, ChNum in pairs(g_RawDO) --DO
	do
				local Module_Fault=Core[g_USO_ID..g_PLC_Name..g_PLC_state.. ".Slot"..Slot] --получим из ядра состояние модуля
				local PLC_disabled=Core[g_USO_ID..g_PLC_Name..g_PLC_state.. ".Disabled"] --получим из ядра состояние модуля --13-12-18
			for _, Ch in pairs(ChNum) --DO
			do
				local DO_Channel=g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
				os.sleep(0.3)
				if 	Module_Fault > g_Faults.fault  --если модуль исправен или частично неисправен - сигнал достоверен
				then	
						
								local reliabilityField=Core[g_ObjID..g_DO_Signals[DO_Channel].Tag..".reliabilityField"]-- получим из ядра значение поля достоверности сигнала
								reliabilityField=bit32.bor(reliabilityField,g_noValid.Mod) -- добавим неисправность модуля
								Core[g_ObjID..g_DO_Signals[DO_Channel].Tag..".reliabilityField"]=reliabilityField -- отправим обратно в ядро								
				end--if 	Module_Fault > g_Faults.no 	
				os.sleep(0.3)
				local ChannelStatus=Core[g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status"] -- получим состояние текущего канала
				
				if 	ChannelStatus > g_Faults.no  --если ошибок в модуле нет и сигнал достоверен
				then	
								reliabilityField=Core[g_ObjID..g_DO_Signals[DO_Channel].Tag..".reliabilityField"]-- получим из ядра значение поля достоверности сигнала
								reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch) -- добавим неисправность канала
								Core[g_ObjID..g_DO_Signals[DO_Channel].Tag..".reliabilityField"]=reliabilityField -- отправим обратно в ядро
				end--if 	ChannelStatus  > g_Faults.no 							
				if PLC_disabled==true --если опрос ПЛК отключен --13-12-18
						then
							 
									Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".repairFlag"]=true -- отключим опрос сигнала
						
						end--if PLC_disabled==true
			end --_, Ch in pairs(ChNum)
	end



		--end --for Module, ChNum 	
end -- local function Init_DO_Module(Module)

 function Sonet_Fixture.add_DR_msg(ModuleStat) -- добавление событий о недостоверности сигнала со входа ПЛК
--	local DR_Value=Core[ModuleStat[2]] -- достоверно/недостоверно
	local timestamp=os.time(); -- метка времени
    local AlarmMsg -- собщение в строку
	local e_type -- появление/исчезновение
--	local connect=Core[g_ObjDesc..g_PLC_Name.."FAULT.CPU"]
	if Core[ModuleStat[2]]>g_Faults.fault --если неисправность хуже частичной
	then 
		e_type=1
	--	DR_Value=false
	 else
		 e_type=0
	--	DR_Value=true
	 end -- если достоверно,
	local reliabilityField -- поле недостоверности сигнала
	--выводим сообщение о состоянии модуля
	AlarmMsg=g_PLC_Desc.." Неисправен модуль "..string.gsub(g_PLC_Name,"_",".")..ModuleStat[1]
	if g_Logs then
		Core.addLogMsg(AlarmMsg.." ("..e_type..") ".. g_event.w.." ".. e_type.." ".. g_PLC_Desc.." ".. g_User.." ".. ModuleStat[2].." ".. timestamp.." ".. g_USO_ID) --в логи
	end --g_Logs
	Core.addEvent(AlarmMsg, g_event.w, e_type,g_PLC_Desc, g_User, ModuleStat[2], timestamp, g_USO_ID)--в строку событий
	--выводим сообщения о недостоверности сигналов

	for Module, ChNum in pairs(g_RawDI) --проидемся списку дискретных модулей 
			do 
				if Module==ModuleStat[1] -- если номер модуля соответствует неисправному - выведем сообщения для всех каналов
				then 
							for _, Ch in pairs(ChNum) -- пройдемся по каналам
							do
									DI_Channel=g_PLC_Name..ModuleStat[1].."."..Ch -- сформируем полное имя канала
									AlarmMsg=g_ObjDesc..g_DI_Signals[DI_Channel].Comment..g_DI_Signals[DI_Channel].Txt_1..". ЗНАЧЕНИЕ НЕДОСТОВЕРНО"-- сформируем текст сообщения								
 									reliabilityField=Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityField"]-- считаем слово достоверности
									if e_type==1 --если событие произошло
									then
										reliabilityField=bit32.bor(reliabilityField,g_noValid.Mod) --добавим в слово достоверности бит неисправности модуля ПЛК
									else 
										reliabilityField=bit32.bxor(reliabilityField,g_noValid.Mod) --уберем из слова достоверности бит неисправности модуля
									end --	if e_type==1
									Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityField"]=reliabilityField -- передадим в ядро  слово достоверности 
									if g_Logs -- если логи включены
										then Core.addLogMsg(AlarmMsg.. " " ..  tostring(reliabilityField).." "..g_User)
									end --if g_Logs 
 									Core.addEvent(AlarmMsg, g_event.dr, e_type,g_PLC_Desc, g_User, g_ObjID..g_DI_Signals[DI_Channel].Tag, timestamp, g_USO_ID)

							end --_, Ch
				end --if
	end --Module, ChNum in pairs(g_RawDI

	for Module, ChNum in pairs(g_RawAI) --проидемся списку аналоговых модулей 
			do 
				if Module==ModuleStat[1] -- если номер модуля соответствует неисправному - выведем сообщения для всех каналов
				then 
							for _, Ch in pairs(ChNum) -- пройдемся по каналам
							do
									AI_Channel=g_PLC_Name..ModuleStat[1].."."..Ch -- сформируем полное имя канала
									AlarmMsg=g_ObjDesc..g_AI_Signals[AI_Channel].Comment..". ЗНАЧЕНИЕ НЕДОСТОВЕРНО"-- сформируем текст сообщения
																	
									reliabilityField=Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"]-- считаем слово достоверности
					
									if e_type==1 --если событие произошло
									then
										reliabilityField=bit32.bor(reliabilityField,g_noValid.Mod) --добавим в слово достоверности бит неисправности модуля ПЛК
									else 
										reliabilityField=bit32.bxor(reliabilityField,g_noValid.Mod) --уберем из слова достоверности бит неисправности модуля
									end --	if e_type==1
									Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"]=reliabilityField -- передадим в ядро  слово достоверности 
									if g_Logs -- если логи включены
									then Core.addLogMsg(AlarmMsg.. " " ..  tostring(reliabilityField).." "..g_User)
 									end --if g_Logs
									Core.addEvent(AlarmMsg, g_event.dr, e_type,g_PLC_Desc, g_User, g_ObjID..g_AI_Signals[AI_Channel].Tag, timestamp, g_USO_ID)

							end --_, Ch
				end --if
	end -- Module, ChNum in pairs(g_RawAI)

	for Module, ChNum in pairs(g_RawDO) --проидемся списку дискретных выходных модулей 
			do 
				if Module==ModuleStat[1] -- если номер модуля соответствует неисправному - выведем сообщения для всех каналов
				then 
					for _, Ch in pairs(ChNum) -- пройдемся по каналам
							do
								
									DO_Channel=g_PLC_Name..ModuleStat[1].."."..Ch -- сформируем полное имя канала
									AlarmMsg=g_ObjDesc..g_DO_Signals[DO_Channel].Comment..". ЗНАЧЕНИЕ НЕДОСТОВЕРНО"-- сформируем текст сообщения
																	
									reliabilityField=Core[g_ObjID..g_DO_Signals[DO_Channel].Tag..".reliabilityField"]-- считаем слово достоверности
					
									if e_type==1 --если событие произошло
									then
										reliabilityField=bit32.bor(reliabilityField,g_noValid.Mod) --добавим в слово достоверности бит неисправности модуля ПЛК
									else 
										reliabilityField=bit32.bxor(reliabilityField,g_noValid.Mod) --уберем из слова достоверности бит неисправности модуля
									end --	if e_type==1
									Core[g_ObjID..g_DO_Signals[DO_Channel].Tag..".reliabilityField"]=reliabilityField -- передадим в ядро  слово достоверности 
									if g_Logs -- если логи включены
									then Core.addLogMsg(AlarmMsg.. " " ..  tostring(reliabilityField).." "..g_User)
 									end --if g_Logs
									Core.addEvent(AlarmMsg, g_event.dr, e_type,g_USO_ID..string.gsub(g_PLC_Name,"_",""), g_User, g_ObjID..g_DO_Signals[DO_Channel].Tag, timestamp, g_USO_ID)
								
					end --_, Ch
					
				end --if
	end -- Module, ChNum in pairs(g_RawDO)


end --Sonet_Fixture.add_DR_msg(ModuleStat)

 function Sonet_Fixture.CheckChannelStatus(Signal)
		local Module=string.gsub(g_PLC_Name,"_",".")..Signal[1] -- имя модуля
		local Channel
		local Ch
		if Signal[4]=="DO" -- в зависимости от типа сигнала 
		 then 
				Channel=string.gsub(Signal[2],"o","") -- номер канала
				Ch=Signal[5] --ссылка на таблицу тегов
		else
				Channel=string.gsub(Signal[2],"i","") -- номер канала
				Ch=g_PLC_Name..Signal[1].."."..Signal[2] --ссылка на таблицу тегов
		end --if Signal[4]=="DO"
		local Tag=Signal[3] -- имя тега статуса канала
		local Value=Core[Tag] -- значение тега статуса канала
		Core.addLogMsg("Tag "..Tag.." Value="..tostring(Value))
		local timestamp=os.time() -- время события
		local reliabilityField -- поле достоверности привязанного ко входу сигнала	
		local reliabilityField_tag -- имя поля достоверности привязанного ко входу сигнала	
	--	local reliabilityValue -- связянная переменная, чью достоверность блюдём
		local AlarmMsg= g_PLC_Desc.." Модуль "  .. Module..". Неисправность канала ".. Channel

		local reliabilityMsg -- сообщение о достоверности привязанного ко входу сигнала	
		if not g_ChannelFaults[Tag] then g_ChannelFaults[Tag]=-1 end --если значение стека пусто - запишем -1
		if Signal[4]=="DI" -- в зависимости от типа сигнала формируем имя тега достоверности
			then
				reliabilityField_tag=g_ObjID..g_DI_Signals[Ch].Tag..".reliabilityField"
--				reliabilityMsg=g_ObjDesc..g_DI_Signals[Ch].Comment.. " ".. g_DI_Signals[Ch].Txt_1.. " ЗНАЧЕНИЕ НЕДОСТОВЕРНО"
				reliabilityMsg=g_ObjDesc..g_DI_Signals[Ch].Comment.. " ".. g_DI_Signals[Ch].Txt_1
				--reliabilityValue=g_ObjID..g_DI_Signals[Ch].Tag
				STable=g_DI_Signals
		elseif Signal[4]=="AI"
			 then
				reliabilityField_tag=g_ObjID..g_AI_Signals[Ch].Tag..".reliabilityField"
				reliabilityMsg=g_ObjDesc..g_AI_Signals[Ch].Comment
--				reliabilityMsg=g_ObjDesc..g_AI_Signals[Ch].Comment.. " ЗНАЧЕНИЕ НЕДОСТОВЕРНО"
--				reliabilityValue=g_ObjID..g_AI_Signals[Ch].Tag
				STable=g_AI_Signals
		elseif Signal[4]=="DO"
			 then
				reliabilityField_tag=g_ObjID..g_DO_Signals[Ch].Tag..".reliabilityField"
--				reliabilityMsg=g_ObjDesc..g_DO_Signals[Ch].Comment.. " ЗНАЧЕНИЕ НЕДОСТОВЕРНО"
				reliabilityMsg=g_ObjDesc..g_DO_Signals[Ch].Comment
			--	reliabilityValue=g_ObjID..g_DO_Signals[Ch].Tag
				STable=g_DO_Signals
	
		else return -- если не описан - прервемся
		end -- Signal[5]=="DI" -- в зависимости от типа сигнала формируем имя тега достоверности
		reliabilityField=Core[reliabilityField_tag]--получим значение поля достоверности
 		Core.addLogMsg("Cur "..tostring(Value).." old "..g_ChannelFaults[Tag])
		--if  g_ChannelFaults[Tag]~=Value -- если код отказа канала не сопадает со значением в стеке
		
		--then
			if Value==g_Faults.no  and g_ChannelFaults[Tag]>g_Faults.no  --and --если неисправностей нет
				then	
					--Core.addLogMsg("xor "..	"1")			
					--Core[reliabilityFlag]=true
					reliabilityField=bit32.bxor(reliabilityField,g_noValid.Ch) -- уберем из поля недостоверность канала
					if g_Logs
					then
						Core.addLogMsg(reliabilityMsg.." значение НЕДОСТОВЕРНО".. g_event.dr .." 0 ".. g_PLC_Desc.." ".. g_User.." ".. reliabilityField_tag .." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs

					Core.addEvent(reliabilityMsg.." значение НЕДОСТОВЕРНО", g_event.dr, 0, g_PLC_Desc, g_User,reliabilityField_tag , timestamp, g_USO_ID) --создадим запись в строке сообщений
					Core[reliabilityField_tag]=reliabilityField -- передадим в ядро поле достоверности
			elseif (Value>g_Faults.no ) and g_ChannelFaults[Tag]<g_Faults.fault then
				--	Core[reliabilityFlag]=false 
					--Core.addLogMsg("xor "..	"2")			
					reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch)-- сделаем привязанный ко входу сигнал недостоверным по каналу
					if g_Logs
					then
						Core.addLogMsg(reliabilityMsg.." значение НЕДОСТОВЕРНО".. g_event.dr .." 1 "..g_PLC_Desc.." ".. g_User.." ".. reliabilityField_tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs

					Core.addEvent(reliabilityMsg.." значение НЕДОСТОВЕРНО", g_event.dr, 1,g_PLC_Desc, g_User, reliabilityField_tag, timestamp, g_USO_ID) --создадим запись в строке сообщений
					Core[reliabilityField_tag]=reliabilityField -- передадим в ядро поле достоверности		USO_ID..string.gsub(g_PLC_Name,"_",""), g_User, Tag, timestamp, g_USO_ID	
--ЗНАЧЕНИЕ НЕДОСТОВЕРНО.
			end --if Value==g_Faults.no 
		--end--if  g_ChannelFaults[Tag]~=Value -- если код отказа канала не сопадает со значением в стеке

--Core.addLogMsg(tostring(g_ChannelFaults[Tag]))
		if  g_ChannelFaults[Tag]~=Value -- если код отказа канала не сопадает со значением в стеке
		
		then
			--if g_ChannelFaults[Tag]>0 then
		--			Core.addEvent(AlarmMsg.. " устранена.", g_event.w, 0, g_PLC_Desc, g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений
		--	end--		if g_ChannelFaults[Tag]
			
			
			
			if Value==g_Faults.no --если повреждения нет
				then
					if g_ChannelFaults[Tag]==g_Faults.fault	then
						 MsgSuff=". Частично неисправен "
					elseif g_ChannelFaults[Tag]==g_Faults.crash	then						 
						 MsgSuff=" . Полностью неистравен или не отвечает"
					elseif g_ChannelFaults[Tag]==g_Faults.br	then						 
						 MsgSuff=" . Обрыв"			
					elseif g_ChannelFaults[Tag]==g_Faults.sc	then						 
						 MsgSuff=" . Короткое замыкание"
					elseif g_ChannelFaults[Tag]==g_Faults.unknouwn	then						 
						 MsgSuff=" . Состояние неизвестно"	
					else
						 MsgSuff=" . Множественные неисправности"
					end--
					
					if g_Logs
					then
						Core.addLogMsg(AlarmMsg.. MsgSuff.." ".. g_event.w .." 0 "..g_PLC_Desc.." ".. g_User.." ".. Tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs
			--		reliabilityField=bit32.bxor(reliabilityField,g_noValid.Ch) --добавим в слово достоверности бит неисправности модуля ПЛК
					Core.addEvent(AlarmMsg.. MsgSuff, g_event.w, 0, g_PLC_Desc, g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений
					--AlarmMsg=AlarmMsg.. " устранена."
			elseif Value==g_Faults.fault  --частично неисправно 
				then
					if g_Logs
					then
						Core.addLogMsg(AlarmMsg.. " . Частично неисправен ".. g_event.w .." 1 "..g_PLC_Desc.." ".. g_User.." ".. Tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs
		--			reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch)
					--Core.addEvent(AlarmMsg.. " . Частично неисправен.", g_event.w, 1,g_USO_ID..string.gsub(g_PLC_Name,"_",""), g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений

			elseif Value==g_Faults.crash  --полностью неисправно или не отвечает
				then
					if g_Logs
					then
						Core.addLogMsg(AlarmMsg.. " . Полностью неистравен или не отвечает ".. g_event.w .." 1 "..g_USO_ID..string.gsub(g_PLC_Name,"_","").." ".. g_User.." ".. Tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs
	--				reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch)
					Core.addEvent(AlarmMsg.. " . Полностью неистравен или не отвечает", g_event.a, 1,g_USO_ID..string.gsub(g_PLC_Name,"_",""), g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений
			elseif Value==g_Faults.br  --обрыв
				then
					if g_Logs
					then
						Core.addLogMsg(AlarmMsg.. " . Обрыв ".. g_event.w .." 1 "..g_PLC_Desc.." ".. g_User.." ".. Tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs
--					reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch)
					Core.addEvent(AlarmMsg.. " . Обрыв", g_event.a, 1,g_PLC_Desc, g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений
			 elseif Value==g_Faults.sc  --КЗ
				then
					if g_Logs
					then
						Core.addLogMsg(AlarmMsg.. " . Короткое замыкание. ".. g_event.a .." 1 "..g_PLC_Desc.." ".. g_User.." ".. Tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs
					--reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch)
					Core.addEvent(AlarmMsg.. " . Короткое замыкание", g_event.w, 1,g_PLC_Desc, g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений
			 elseif Value==g_Faults.unknouwn  --состояние неизвестно
				then
					if g_Logs
					then
						Core.addLogMsg(AlarmMsg.. " . Состояние неизвестно. ".. g_event.w .." 1 "..g_PLC_Desc.." ".. g_User.." ".. Tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs
					--reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch)
					Core.addEvent(AlarmMsg.. " . Состояние неизвестно", g_event.w, 1,g_PLC_Desc, g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений
			else 
					if g_Logs
					then
						Core.addLogMsg(AlarmMsg.. " . Множественные неисправности. ".. g_event.w .." 1 "..g_PLC_Desc.." ".. g_User.." ".. Tag.." ".. timestamp.." ".. g_USO_ID) --запишем в логи
					end --if g_Logs
				--	reliabilityField=bit32.bor(reliabilityField,g_noValid.Ch)
					Core.addEvent(AlarmMsg.. " . Множественные неисправности", g_event.w, 1,g_PLC_Desc, g_User, Tag, timestamp, g_USO_ID) --создадим запись в строке сообщений

			 end --Value==g_Faults.no

			

		end -- g_ChannelFaults[Tag]~=Value
	if  g_ChannelFaults[Tag]>g_Faults.no and Value>g_Faults.no then --если не проходило через норму
		return
	else
		g_ChannelFaults[Tag]=Value --сохраним код отказа в стеке
	end--if  g_ChannelFaults[Tag]>g_Faults.no and Value>g_Faults.no then 
end --function Sonet_Fixture.CheckChannelStatus (Signal)


  function Sonet_Fixture.SetRepaireMode(Signal)-- функция включения\отключения ремонтного режима
	local InputName=Signal[1]
--	local DI_Channel=g_ObjID..Signal[1]
--	local AI_Channel=Signal[1]
	local Signal_type= Signal[3]
	local e_type -- появление - исчезновение события 
	local repaireFlagValue=Core[Signal[2]]
	local repaireField --
	local STable --выбор таблицы в зависимости от типа сигнала
	if Signal_type=="DI" -- если изменилось свойство входного дискрета
	then
		STable=g_DI_Signals[InputName] -- смотрим таблицу дискретов
	else
		if  Signal_type=="AI"-- если изменилось свойство входного аналога
		then
			STable=g_AI_Signals[InputName]	-- смотрим таблицу аналогов
		else	
			return -- завершим работу функции если задано что-то иное
		end --	Signal_type=="AI"
	end --	Signal_type=="DI"
		
	if repaireFlagValue~=STable["repaireFlag"]--!!!!!!!!!!!!!!1 --если значение флага в системе и в таблице не совпадают
	then
		STable["repaireFlag"]=repaireFlagValue
		repaireField=Core[g_ObjID..STable["Tag"]..".reliabilityField"]-- получим из ядра битовое поле признака достоверности сигнала
				if STable["repaireFlag"]==true 
					then
						e_type=1 --событие появилось
						--STable["reliabilityFlag"]=false-- сделаем параметр недостоверным
						repaireField=bit32.bor(repaireField,g_noValid.Rep)-- добавим признак ремонта
					else
						e_type=0 --событие исчезло
						repaireField=bit32.bxor(repaireField,g_noValid.Rep)
						-- STable["reliabilityFlag"]=true-- сделаем параметр достоверным

				 end --if g_DI_Signals[InputName]["repaireFlag"]==true 
				--Core[g_ObjID..STable["Tag"]..".reliabilityFlag"]=STable["reliabilityFlag"] --сохранаяем свойство сигнала
				Core[g_ObjID..STable["Tag"]..".reliabilityField"]=repaireField -- передадим  в ядро битовое поле признака достоверности сигнала
				if Signal_type=="DI" 
				then
						Core.addEvent("Значение параметра '".. g_ObjDesc.." " ..STable["Comment"]..STable["Txt_1"] .."' (тэг '"..g_ObjID..STable["Tag"].. "') недостоверно. Оборудование выведено в ремонт", g_event.dr, e_type, g_Source, g_User, STable.Tag, timestamp, g_USO_ID )
							if g_Logs -- если логи включены
								then Core.addLogMsg("Значение параметра '".. g_ObjDesc.." " ..STable["Comment"]..STable["Txt_1"] .."' (тэг '"..g_ObjID..STable["Tag"].. "') недостоверно. Оборудование выведено в ремонт_"..e_type.." "..g_Source.." "..g_User)	
							end --if g_Logs -- если логи включены
					--	if repaireFlagValue == false then Process_DI_Data({DI_Channel})end --если признак ремонта исчез - вызов функции отслеживания значения сигнала
				else
						Core.addEvent("Значение параметра '".. g_ObjDesc.." " ..STable["Comment"] .."' (тэг '"..g_ObjID..STable["Tag"].. "') недостоверно. Оборудование выведено в ремонт".." ("..e_type..")", g_event.dr, e_type, g_Source, g_User, STable.Tag,timestamp, g_USO_ID )
							if g_Logs -- если логи включены
								then	Core.addLogMsg("Значение параметра '".. g_ObjDesc.." " ..STable["Comment"] .."' (тэг '"..g_ObjID..STable["Tag"].. "') недостоверно. Оборудование выведено в ремонт_"..e_type.." "..g_Source.." "..g_User)	
							end --if g_Logs -- если логи включены
					--	if repaireFlagValue == false then Process_AI_Data({AI_Channel})end --если признак ремонта исчез - вызов функции отслеживания значения сигнала
				end		
	end --if repaireFlagValue~=STable["repaireFlag"]

end --local function Sonet_Fixture.SetRepaireMode

-- функция проверки двубитовых сигналов на достоверность - исправлено 05-12-18
  function Sonet_Fixture.Check_Related_DI_Data (DI_Channel)
  --Core.addLogMsg("DI_Channel="..tostring(DI_Channel[1]))
	local InputName=string.gsub(DI_Channel[1], g_USO_ID, "")
	--Core.addLogMsg("InputName="..tostring(InputName))
				if g_DI_Signals[InputName]==nil then -- если сигнал в таблице не описан
						Core.addLogMsg(" Опрос "..InputName..". Для данного DI входа отсутствует описание в таблице g_DI_Signals (Check_Related_DI_Data)") -- отправим сообщение об ошибке в логи
						return -- завершить работу функции Check_Related_DI_Data 
				else
						if not g_DI_Signals[InputName]["related_DI"] or string.len (g_DI_Signals[InputName]["related_DI"]) <2  --если связанный тег не определен или его длина меньше 2
						then return
						else
			 			    local Tag=g_ObjID..g_DI_Signals[InputName]["Tag"]..".Value" --имя выходного тега присвоим
							--Core.LogMsg("Tag="..tostring(Tag))
	 					   
							local RelatedDI=g_DI_Signals[InputName]["related_DI"]-- название связанного входа ПЛК
						--	Core.addLogMsg("RelatedDI="..tostring(RelatedDI))
							if RelatedDI==nil or string.len(RelatedDI)<2 then
								--RelatedDI=Tag 
								return
							end
						    local RelatedTag=g_ObjID..g_DI_Signals[RelatedDI]["Tag"]..".Value" -- имя cвязанной переменной
								--Core.addLogMsg("RelatedTag="..tostring(RelatedTag))
  						    
							local Tag_reliabilityField=Core[g_ObjID..g_DI_Signals[InputName]["Tag"]..".reliabilityField"] --получим поле достоверности сигнала
							--local c=16
							--local b= byte_to_bool(c, 16)
							--Core.addLogMsg(tostring(b[1]))
							local RelatedTag_reliabilityField=Core[g_ObjID..g_DI_Signals[RelatedDI]["Tag"]..".reliabilityField"]--получим поле достоверности связанного сигнала
								-- local TagValue=Core[Tag]--значение выходного тега
								-- local RelatedTagValue=Core[RelatedTag]--значение связанного тега 
								 local TagValue=Core[DI_Channel[1]]--значение выходного тега - 05-12-18 читаем не тег, а вход
								 os.sleep(0.5) --ПАУЗА	
								 local RelatedTagValue=Core[g_USO_ID..RelatedDI]--значение связанного тега 

								Core.addLogMsg("Фунция определения достоверности 2-бит сигнала "..tostring(Tag).."="..tostring(TagValue).." "..tostring(RelatedTag).."="..tostring(RelatedTagValue))
								
								
							 if (TagValue==true and RelatedTagValue==true) or (TagValue==false and RelatedTagValue==false) --если значения совпадают -  изм. 05-12-18
							 then
								Core.addLogMsg("Значения входов совпадают")

								local bits=byte_to_bool(Tag_reliabilityField, 16)  -- функция из библиотеки "acs_data_lib" --раскладывает байты на массив бит, 16 - WORD
								if bits[5]==false -- этот признак (2^4) ранее не добавлялся - нам нужен 5-й бит массива(считается не с 0)
								 then
										Tag_reliabilityField=bit32.bor(Tag_reliabilityField,g_noValid.Rel) --добавим признак недостоверности по связанному тегу
								end --if bits[5]==false 
								 bits=byte_to_bool(RelatedTag_reliabilityField, 16)  -- функция из библиотеки "acs_data_lib" --раскладывает байты на массив бит, 16 - WORD
								if bits[5]==false -- этот признак (2^4) ранее не добавлялся - нам нужен 5-й бит массива(считается не с 0)
								 then
										RelatedTag_reliabilityField=bit32.bor(RelatedTag_reliabilityField,g_noValid.Rel) --добавим признак недостоверности по связанному тегу
								end --if bits[5]==false 

								--Tag_reliabilityField=bit32.bor(Tag_reliabilityField,g_noValid.Rel) --добавим признак недостоверности по связанному тегу
								--RelatedTag_reliabilityField=bit32.bor(RelatedTag_reliabilityField,g_noValid.Rel)--добавим признак недостоверности по связанному тегу
							 else 
								Core.addLogMsg("Значения входов НЕ совпадают")
								local bits=byte_to_bool(Tag_reliabilityField, 16)  -- функция из библиотеки "acs_data_lib" --раскладывает байты на массив бит, 16 - WORD
								if bits[5]==true -- 
								 then
										Tag_reliabilityField=bit32.bxor(Tag_reliabilityField,g_noValid.Rel) --добавим признак недостоверности по связанному тегу
								end --if bits[5]==true
								 bits=byte_to_bool(RelatedTag_reliabilityField, 16)  -- функция из библиотеки "acs_data_lib" --раскладывает байты на массив бит, 16 - WORD
								if bits[5]==true -- 
								 then
										RelatedTag_reliabilityField=bit32.bxor(RelatedTag_reliabilityField,g_noValid.Rel) --добавим признак недостоверности по связанному тегу
								end --if bits[5]==true 


								--Tag_reliabilityField=bit32.bxor(Tag_reliabilityField,g_noValid.Rel) --добавим признак недостоверности по связанному тегу
								--RelatedTag_reliabilityField=bit32.bxor(RelatedTag_reliabilityField,g_noValid.Rel)--добавим признак недостоверности по связанному тегу
							 end --	if TagValue==RelatedTagValue
	
 							 Core[g_ObjID..g_DI_Signals[InputName]["Tag"]..".reliabilityField"]=Tag_reliabilityField --отправим в ядро поле достоверности сигнала
							 Core[g_ObjID..g_DI_Signals[RelatedDI]["Tag"]..".reliabilityField"]=RelatedTag_reliabilityField--отправим в ядро поле достоверности связанного сигнала
						end --if not g_DI_Signals[InputName]["related_DI"] or..
 				end --g_DI_Signals[InputName]["Tag"]


end --local function Sonet_Fixture.Check_Related_DI_Data (DI_Channel)



-- функция инициализации двубитовых сигналов на достоверность
function Sonet_Fixture.Init_Related_DI_Data (DI_Channel)
  -- отличия от функции отслеживания: 
--1. здесь смотрим на входы ПЛК, а не на теги! 
--2. Обрабатываем поле достоверности только для текущего входа, не парой - иначе всё вернётся в первоначальное состояние

	local InputName=string.gsub(DI_Channel[1], g_USO_ID, "")
				if g_DI_Signals[InputName]==nil then -- если сигнал в таблице не описан
						Core.addLogMsg("Опрос "..InputName..". Для данного DI входа отсутствует описание в таблице g_DI_Signals (Init_Related_DI_Data)") -- отправим сообщение об ошибке в логи
						return -- завершить работу функции Check_Related_DI_Data 
				else
						if not g_DI_Signals[InputName]["related_DI"] or string.len (g_DI_Signals[InputName]["related_DI"]) <2  --если связанный тег не определен или его длина меньше 2
						then return
						else
						    local Tag=g_USO_ID..InputName --имя входа присвоим
	 					    local TagValue=Core[Tag]--значение входа
							local RelatedDI=g_DI_Signals[InputName]["related_DI"]-- название связанного входа ПЛК
						    local RelatedTag=g_USO_ID..RelatedDI -- имя связанного входа
   						    local RelatedTagValue=Core[RelatedTag]--значение связанного входа
							local Tag_reliabilityField=Core[g_ObjID..g_DI_Signals[InputName]["Tag"]..".reliabilityField"] --получим поле достоверности сигнала
							 if TagValue==RelatedTagValue --если значения совпадают
							 then
								--доб. 17-12-18	
								local bits=byte_to_bool(Tag_reliabilityField, 16)  -- функция из библиотеки "acs_data_lib" --раскладывает байты на массив бит, 16 - WORD
								if bits[5]==false -- этот признак (2^4) ранее не добавлялся - нам нужен 5-й бит массива(считается не с 0)
								 then
										Tag_reliabilityField=bit32.bor(Tag_reliabilityField,g_noValid.Rel) --добавим признак недостоверности по связанному тегу
								end --if bits[5]==false 
							 end --	if TagValue==RelatedTagValue
	 							 Core[g_ObjID..g_DI_Signals[InputName]["Tag"]..".reliabilityField"]=Tag_reliabilityField --отправим в ядро поле достоверности сигнала
						end --if not g_DI_Signals[InputName]["related_DI"] or..					
 				end --g_DI_Signals[InputName]["Tag"]


end --local function Sonet_Fixture.Init_Related_DI_Data (DI_Channel)

return Sonet_Fixture