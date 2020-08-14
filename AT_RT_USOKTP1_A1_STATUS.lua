-- скрипт установления достоверности сигнала в зависимости от состояния модуля и канала ПЛК А1 УСО КТП1 вер. от 12-09-18
--Блок глобальных изменяемых для каждого узла переменных
 g_Logs=true 
 g_ScreenID="KTP8516" 
 g_USO_ID="USOKTP1_" -- идентификатор технологического объекта
 g_PLC_Name="A1_" -- название контроллера в УСО
 g_ObjDesc= "УСО КТП 8516. "--описание источника сигналов
 g_PLC_Desc="УСО КТП 8516. ПЛК A1" 
 g_Logs=true --вести логи событий
--Блок глобальных изменяемых для каждого узла переменных. КОНЕЦ 
-- ///////////////////////main()////////////////////
-- подгрузим неизменяемые  в рамках проекта глобальные переменные и и основные циклы опроса входов


 g_Sonet_Status_lib=require("./lua_lib/_Sonet_status"); -- загрузим библиотеку функций определения достоверности данных

--require "./lua_lib/acs_data_lib"

-- ///////////////////////main()////////////////////

-- //Загрузка конфигурации из файлов
--........................................................
 g_SystemID =require("./../PRJ_config/_systemID"); -- считаем идентификатор системы
 g_PLC_state=require("./../PRJ_config/_plc_state"); -- имя тега статуса ПЛК
 g_RawDI=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DI_map") --считываем конфигурацию дискретных входов ПЛК
 g_RawAI=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "AI_map") --считываем конфигурацию аналоговых входов ПЛК
 g_RawDO=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DO_map") --считываем конфигурацию дискретных выходов ПЛК
 g_DI_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DI_data") --считываем базу дискретных тегов и их свойств
 g_AI_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "AI_data") --считываем базу аналоговых тегов и их свойств
 g_DO_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DO_data") --считываем базу дискретных выходов и их свойств
--........................................................
 require "./lua_lib/acs_data_lib" --поделючим библиотеку работы с данными
 g_noValid=require("./lua_lib/_reliabilityField"); -- считаем описание битового поля недостоверности сигнала
 g_event =require("./lua_lib/_events_desc"); 
 g_Faults =require("./lua_lib/_fault_codes"); -- считаем коды ошибок
 g_ObjID=g_SystemID..g_USO_ID -- идентификатор технологического объекта
 g_User=g_USO_ID..string.gsub(g_PLC_Name,"_"," ").. "(система)" -- содержимое поля "Пользователь" в строке событий - формируется автоматически
 g_ChannelFaults={} -- стек отказов каналов модулей
--local e_type 



--.....................................................main().......................................

--	!!!!		-- инициализация состояния модулей  
			for Slot, _ in pairs(g_RawDI)-- дискретных входных
			do 
				g_Sonet_Status_lib.Init_DI_Module(Slot)
			end -- Slot, ChNum in pairs(g_RawDI)

			for Module, ChNum in pairs(g_RawDI)
			do 
				-- проверим достоверность парных входов
				for _, Ch in pairs(ChNum) 
				do
					local DI_Channel=g_USO_ID..g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
					--os.sleep(0.2)
					g_Sonet_Status_lib.Init_Related_DI_Data ({DI_Channel}) -- вызовем инициализацию
				end --_, Ch
			end --for Module, ChNum 


			for Slot, _ in pairs(g_RawAI)-- аналоговых входных
			do 
				g_Sonet_Status_lib.Init_AI_Module(Slot)		
			end -- Slot, ChNum in pairs(g_RawAI)
	

			for Slot, _ in pairs(g_RawDO)-- дискретных выходных
			do 
				g_Sonet_Status_lib.Init_DO_Module(Slot)	
			end -- Slot, ChNum in pairs(g_RawDO)

--!!!!		-- отслеживаем исправность модулей  
			for Module, _ in pairs(g_RawDI)-- дискретных
			do 
				local Module_Fault=g_USO_ID..g_PLC_Name.."FAULT".. ".Slot"..Module -- сформируем полное переменной
				Core.onExtChange({Module_Fault}, g_Sonet_Status_lib.add_DR_msg,{Module,Module_Fault})
						
			end --fModule, ChNum in pairs(g_RawDI)-- дискретных
			for Module, _ in pairs(g_RawAI)-- аналоговых
			do 
				local Module_Fault=g_USO_ID..g_PLC_Name.."FAULT".. ".Slot"..Module -- сформируем полное переменной
				Core.onExtChange({Module_Fault}, g_Sonet_Status_lib.add_DR_msg,{Module,Module_Fault})
			end --Module, ChNum in pairs(g_RawAI)-- аналоговых

			--проверяем  исправность каналов модулей
			-- дискретных входов
			for Module, ChNum in pairs(g_RawDI)
			do 			
				for _, Ch in pairs(ChNum) 
				do
					local ChannelStatusTag=g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status" -- сформируем название тега статуса канала
					Core.onExtChange({ChannelStatusTag}, g_Sonet_Status_lib.CheckChannelStatus,{Module, Ch, ChannelStatusTag,"DI"}) --отслеживаем его состояние
				end --_, Ch in pairs(ChNum) 
			end--Module, ChNum in pairs(g_RawDI)
			--аналоговых входов
			for Module, ChNum in pairs(g_RawAI)
			do 			
				for _, Ch in pairs(ChNum) 
				do
					local ChannelStatusTag=g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status" -- сформируем название тега статуса канала
					Core.onExtChange({ChannelStatusTag}, g_Sonet_Status_lib.CheckChannelStatus,{Module, Ch, ChannelStatusTag,"AI"}) --отслеживаем его состояние
				end --_, Ch in pairs(ChNum) 
			end--Module, ChNum in pairs(g_RawAI)

			-- дискретных выходов

			for Module, _ in pairs(g_DO_Signals)
			do 			
					local Module_Num=string.gsub(Module,g_PLC_Name,"") -- номер канала
					local ModuleNum=string.sub(Module_Num,1,1) -- имя модуля
					local Ch=string.sub(Module,-1) -- номер канала
					local ChannelStatusTag=g_USO_ID..Module.."_status" -- сформируем название тега статуса канала
					Core.onExtChange({ChannelStatusTag}, g_Sonet_Status_lib.CheckChannelStatus,{ModuleNum, Ch, ChannelStatusTag,"DO",Module}) --отслеживаем его состояние
					--Core.onExtChange({DO_ChannelStatusTag}, DO_CheckChannelStatus,{Module}) --отслеживаем его состояние

			end--Module, _ in pairs(g_DO_Signals)

	--//////////////////// проверка вывода оборудования в ремонт..........--------		
			for Module, ChNum in pairs(g_RawDI)--дискретных входов
			do 			
				for _, Ch in pairs(ChNum) 
				do
					DI_Channel=g_PLC_Name..Module.."."..Ch -- сформируем  имя канала
					RepaireTag=g_ObjID..g_DI_Signals[DI_Channel].Tag..".repaireFlag"-- сформируем имя переменной вывода в ремонт
					Core.onExtChange({RepaireTag}, g_Sonet_Status_lib.SetRepaireMode,{DI_Channel,RepaireTag,"DI"}) 
					--Core.onExtChange({DI_Channel}, Check_Related_DI_Data,{DI_Channel}) 

				end --_, Ch
		end --for Module, ChNum 

	for Module, ChNum in pairs(g_RawAI)--аналоговых входов
			do 			
				for _, Ch in pairs(ChNum) 
				do
					AI_Channel=g_PLC_Name..Module.."."..Ch -- сформируем  имя канала
					RepaireTag=g_ObjID..g_AI_Signals[AI_Channel].Tag..".repaireFlag"-- сформируем имя переменной вывода в ремонт
					Core.onExtChange({RepaireTag}, g_Sonet_Status_lib.SetRepaireMode,{AI_Channel,RepaireTag,"AI"}) 
				end --_, Ch
		end --for Module, ChNum 
		
		for Ch, _ in pairs(g_DO_Signals) --дискретных выходов
			do 
				local DO_Channel=g_DO_Signals[Ch]["Tag"]-- сформируем имя тега
				Core.onExtChange({g_ObjID..DO_Channel..".repaireFlag"}, g_Sonet_Status_lib.SetRepaireMode,{Ch,g_ObjID..DO_Channel..".repaireFlag","DO"}) --проверим обновление флага вывода в ремонт
			end --for Ch, _ 

--- добавим сюда же проверку парных тегов
		for Module, ChNum in pairs(g_RawDI)
			do 
				-- проверим изменение входов
				for _, Ch in pairs(ChNum) 
				do
					local DI_Channel=g_USO_ID..g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
					--DI_Channel_status=g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status" -- сформируем  имя статуса канала
					Core.onExtChange({DI_Channel}, g_Sonet_Status_lib.Check_Related_DI_Data,{DI_Channel}) 
				--	Core.onExtChange({DI_Channel_status}, CheckChStatus,{"DI",DI_Channel}) 
					--Core.onExtChange({DI_Channel}, g_Sonet_Status_lib.Init_DI_Data,{DI_Channel, true}) 	
				end --_, Ch
			end --for Module, ChNum 


Core.waitEvents( )-- ждем события из системы
