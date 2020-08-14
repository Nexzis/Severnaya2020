--версия от 25-11-18
--  ОТМЕНЕНО добавлена проверка необходимости инициализации данных при старте ПЛК
-- //Загрузка конфигурации PLC из файлов
--........................................................
-- // Загрузка конфигурации проекта
 g_SystemID =require("./../PRJ_config/_systemID"); -- считаем идентификатор системы
 --g_dis_border_val=require("./../PRJ_config/_dis_border"); -- значение уставки аналогового сигнала при отключенной проверке этой уставки для отображения
 --g_dis_value=require("./../PRJ_config/_dis_value"); -- значение уставки аналогового сигнала при отключенной проверке этой уставки для сравнения
  -- // Загрузка конфигурации ПЛК
 g_RawDI=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DI_map") --считываем конфигурацию дискретных входов ПЛК
 g_RawAI=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "AI_map") --считываем конфигурацию аналоговых входов ПЛК
 g_RawDO=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DO_map") --считываем конфигурацию дискретных выходов ПЛК
 g_DI_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DI_data") --считываем базу дискретных тегов и их свойств
 g_AI_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "AI_data") --считываем базу аналоговых тегов и их свойств
 g_DO_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DO_data") --считываем базу дискретных выходов и их свойств

-- // Загрузка описания структур из библиотек
require "./lua_lib/acs_data_lib" --поделючим библиотеку работы с данными
 g_noValid =require("./lua_lib/_reliabilityField"); -- описание битового поля недостоверности сигналов 
 g_event =require("./lua_lib/_events_desc"); -- описание классов событий
 g_Faults =require("./lua_lib/_fault_codes"); -- коды ошибок ПЛК
-- //Загрузка функций  из библиотек
 g_DI_lib =require("./lua_lib/_DI_process"); -- загрузим библиотеку функций  обработки DI
 g_AI_lib =require("./lua_lib/_AI_process"); -- загрузим библиотеку функций  обработки AI
 g_DO_lib =require("./lua_lib/_DO_process"); -- загрузим библиотеку функций  обработки DO
 g_Data_Valid_lib=require("./lua_lib/_Data_Valid"); -- загрузим библиотеку функций определения достоверности данных
-- // Конец загрузки конфигурации и библиотек

--Блок  неизменяемых глобальных переменных. 
	g_ObjID=g_SystemID..g_USO_ID -- идентификатор технологического объекта
	--g_User=g_PLC_Desc.. " (система)" -- содержимое поля "Пользователь" в строке событий - формируется автоматически
	g_User="" --изм. 05.06.19
	g_ChannelFaults={} -- стек отказов каналов модулей
	--local dis_border_val=-32768 --значение отключенной тревожной границы AI
	g_oldTimes={} -- массив предыдущего времени изменения дискрета
	g_pulse_duration=10 -- минимально допустимая длительность входного импульса, мс  (если меньше - то отсечка дребезга контактов) -- величина дребезга в мс
	g_pulse_duration=g_pulse_duration/1000 -- переведем мс в с
	g_OldAIValueFlag=false-- флаг фиксации последнего достоверного значения аналогового сигнала
	g_oldsignals = {} 	-- буферная таблица  предыдущего значения дискретных входов
	g_CurrentAiAlarms= {-- буферная таблица действующих на момент выполнения скрипта алармов для AI
						["LL"]={},
						["LH"]={},
						["HL"]={},
						["HH"]={},
						["DIS"]={},
						["SC"]={},
						["BR"]={},
						}--g_CurrentAiAlarms




-- опрашиваем первоначальное состояние входов контроллера и их свойств(инициализация)
	for Module, ChNum in pairs(g_RawDI) --DI
		do 
			-- первом опросим все активные входы и занесем их значение в буфер g_oldsignals
			for _, Ch in pairs(ChNum) 
			do
				local DI_Channel=g_ObjID..g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
				g_DI_lib.Init(DI_Channel) --вызов функции инициализации входа
			end --_, Ch
	end --for Module, ChNum 	
	for Module, ChNum in pairs(g_RawAI) --AI
		do 
			-- первом опросим все активные входы 
			for _, Ch in pairs(ChNum) 
			do
				local AI_Channel=g_ObjID..g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
			--	os.sleep(0.1) --ждем 100 мс до инициализации аналогового входа ПЛК
				g_AI_lib.Init(AI_Channel) --вызов функции инициализации входа

			end --_, Ch
	end --for Module, ChNum 
	
--	for Ch, _ in pairs(g_DO_Signals) --DO
--			do 
--				-- проверим появление команд от оператора
----				local DO_Channel=g_DO_Signals[Ch]["Tag"]-- сформируем имя тега
--				--g_DO_lib.Init(DO_Channel)
--				g_DO_lib.Init(Ch)
--	end --for Ch, _ 



--!!!!Дискретные входы!!!!---
-- отслеживаем изменения состояния дискретных входов и их состояния
		for Module, ChNum in pairs(g_RawDI)
			do 
				-- проверим изменение входов
				for _, Ch in pairs(ChNum) 
				do
					DI_Channel=g_USO_ID..g_PLC_Name..Module.."."..Ch -- сформируем полное имя канала
					--DI_Channel_status=g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status" -- сформируем  имя статуса канала
					Core.onExtChange({DI_Channel},  g_DI_lib.Process,{DI_Channel, Core[DI_Channel]}) 
				--	Core.onExtChange({DI_Channel_status}, CheckChStatus,{"DI",DI_Channel}) 
					--Core.onExtChange({DI_Channel}, Init_g_DI_lib,{DI_Channel, true}) 	
				end --_, Ch
			end --for Module, ChNum 
	
-- проверим изменение оператором свойств   входных дискретных тегов 

		for Module, ChNum in pairs(g_RawDI)--дискретных
			do 			
				for _, Ch in pairs(ChNum) 
				do
					DI_Channel=g_PLC_Name..Module.."."..Ch -- сформируем  имя канала
				--	RepaireTag=g_ObjID..g_DI_Signals[DI_Channel].Tag..".repaireFlag"-- сформируем имя переменной вывода в ремонт
					--Core.onExtChange({RepaireTag}, SetRepaireMode,{DI_Channel,RepaireTag,"DI"}) 
					ReliabilityField=g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityField"-- сформируем  имя признака достоверности
					Core.onExtChange({ReliabilityField}, g_Data_Valid_lib.SetReliabilityFlag,{DI_Channel,ReliabilityField,"DI"}) 		
				end --_, Ch
		end --for Module, ChNum 
	
--!!!!Аналоговые входы!!!!---
-- отслеживаем изменения состояния аналоговых входов		
	for Module, ChNum in pairs(g_RawAI)
			do 
			for _, Ch in pairs(ChNum) 
				do
					AI_Channel=g_USO_ID..g_PLC_Name..Module.."."..Ch -- сформируем  имя канала
				--	Tag=g_ObjID..g_AI_Signals[AI_Channel].Tag-- сформируем имя переменной вывода 
					Core.onExtChange({AI_Channel}, g_AI_lib.Process,{AI_Channel}) 
					 					 
				end --_, Ch
			end --for Module, ChNum 		

--[[
-- отслеживаем изменения состояния статуса аналоговых входов		
	for Module1, ChNum1 in pairs(g_RawAI)
			do 
			for _, Ch1 in pairs(ChNum1) 
				do
					AI_ChannelSt=g_USO_ID..g_PLC_Name..Module1.."."..Ch1--.."_status" -- сформируем  имя статуса канала
				--	Tag=g_ObjID..g_AI_Signals[AI_Channel].Tag-- сформируем имя переменной вывода 
					 Core.addLogMsg(AI_ChannelSt)
					Core.onExtChange({AI_ChannelSt}, g_AI_lib.InStatus,{AI_ChannelSt}) 
				end --_, Ch
			end --for Module, ChNum 		
--]]
-- проверим изменение оператором свойств аналоговых сигналов
--[[ версия до 19-11-18
	for Module, ChNum in pairs(g_RawAI)
		do 			
				for _, Ch in pairs(ChNum) 
				do
					AI_Channel=g_PLC_Name..Module.."."..Ch -- сформируем  имя канала
					--RepaireTag=g_ObjID..g_AI_Signals[AI_Channel].Tag..".repaireFlag"-- сформируем переменной вывода в ремонт
					--Core.onExtChange({RepaireTag}, SetRepaireMode,{AI_Channel,RepaireTag,"AI"}) 
					AlarmSetHH=g_ObjID..g_AI_Signals[AI_Channel].Tag..".HH"-- сформируем адрес значения верхней аварийной уставки
					Core.onExtChange({AlarmSetHH}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetHH}) 
					AlarmSetHL=g_ObjID..g_AI_Signals[AI_Channel].Tag..".HL"-- сформируем адрес значения верхней предупредительной уставки
					Core.onExtChange({AlarmSetHL}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetHL})
					AlarmSetLH=g_ObjID..g_AI_Signals[AI_Channel].Tag..".LH"-- сформируем адрес значения нижней предупредительной уставки
					Core.onExtChange({AlarmSetLH}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetLH})
					AlarmSetLL=g_ObjID..g_AI_Signals[AI_Channel].Tag..".LL"-- сформируем адрес значения нижней аварийной уставки
					Core.onExtChange({AlarmSetLL}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetLL})
					--AlarmSetSC=g_ObjID..g_AI_Signals[AI_Channel].Tag..".SC"-- сформируем адрес значения КЗ
					--Core.onExtChange({AlarmSetSC}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetSC})
					--AlarmSetBR=g_ObjID..g_AI_Signals[AI_Channel].Tag..".BR"-- сформируем адрес значения обрыва линии
					--Core.onExtChange({AlarmSetBR}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetBR})
					ReliabilityField=g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"--  сформируем  имя признака достоверности
					Core.onExtChange({ReliabilityField}, g_Data_Valid_lib.SetReliabilityFlag,{AI_Channel,ReliabilityField,"AI"}) 

				end --_, Ch
		end --for Module, ChNum 	
--]]
	for Module, ChNum in pairs(g_RawAI) --версия 19-11-18
		do 			
				for _, Ch in pairs(ChNum) 
				do
					AI_Channel=g_PLC_Name..Module.."."..Ch -- сформируем  имя канала
					AI_ChannelSt=g_USO_ID..g_PLC_Name..Module.."."..Ch.."_status" -- сформируем  имя статуса канала
					Core.onExtChange({AI_ChannelSt}, g_AI_lib.InStatus,{AI_ChannelSt}) -- отслеживаем изменения состояния статуса аналоговых входов		
					--RepaireTag=g_ObjID..g_AI_Signals[AI_Channel].Tag..".repaireFlag"-- сформируем переменной вывода в ремонт
					--Core.onExtChange({RepaireTag}, SetRepaireMode,{AI_Channel,RepaireTag,"AI"}) 
					AlarmSetHH=g_ObjID..g_AI_Signals[AI_Channel].Tag..".HH"-- сформируем адрес значения верхней аварийной уставки
					AlarmSetHH_en=g_ObjID..g_AI_Signals[AI_Channel].Tag..".HH_en"-- сформируем адрес активности верхней аварийной уставки
					Core.onExtChange({AlarmSetHH, AlarmSetHH_en}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetHH,AlarmSetHH_en,AI_Channel}) 

					AlarmSetHL=g_ObjID..g_AI_Signals[AI_Channel].Tag..".HL"-- сформируем адрес значения верхней предупредительной уставки
				    AlarmSetHL_en=g_ObjID..g_AI_Signals[AI_Channel].Tag..".HL_en"-- сформируем адрес активности верхней предупредительной уставки	
					Core.onExtChange({AlarmSetHL, AlarmSetHL_en}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetHL,AlarmSetHL_en,AI_Channel})
					
					AlarmSetLH=g_ObjID..g_AI_Signals[AI_Channel].Tag..".LH"-- сформируем адрес значения нижней предупредительной уставки
					AlarmSetLH_en=g_ObjID..g_AI_Signals[AI_Channel].Tag..".LH_en"-- сформируем адрес активности нижней предупредительной уставки
					Core.onExtChange({AlarmSetLH, AlarmSetLH_en}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetLH,AlarmSetLH_en,AI_Channel})
					
					AlarmSetLL=g_ObjID..g_AI_Signals[AI_Channel].Tag..".LL"-- сформируем адрес значения нижней аварийной уставки
					AlarmSetLL_en=g_ObjID..g_AI_Signals[AI_Channel].Tag..".LL_en"-- сформируем адрес активности нижней аварийной уставки
					Core.onExtChange({AlarmSetLL, AlarmSetLL_en}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetLL,AlarmSetLL_en,AI_Channel})
					--AlarmSetSC=g_ObjID..g_AI_Signals[AI_Channel].Tag..".SC"-- сформируем адрес значения КЗ
					--Core.onExtChange({AlarmSetSC}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetSC})
					--AlarmSetBR=g_ObjID..g_AI_Signals[AI_Channel].Tag..".BR"-- сформируем адрес значения обрыва линии
					--Core.onExtChange({AlarmSetBR}, g_AI_lib.ChangeAlarmSettings,{AI_Channel,AlarmSetBR})
					ReliabilityField=g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityField"--  сформируем  имя признака достоверности
					Core.onExtChange({ReliabilityField}, g_Data_Valid_lib.SetReliabilityFlag,{AI_Channel,ReliabilityField,"AI"}) 
					
					
					

				end --_, Ch
		end --for Module, ChNum 	
		
-- отслеживаем изменения состояния дискретных выходов (команд от оператора)
	
--			for Ch, _ in pairs(g_DO_Signals)
--			do 
--				-- проверим появление команд от оператора
--				local DO_Channel=g_DO_Signals[Ch]["Tag"]-- сформируем имя тега
--				--Core.onExtChange({g_ObjID..DO_Channel..".reliabilityField"}, g_Data_Valid_lib.SetReliabilityFlag,{Ch,g_ObjID..DO_Channel..".reliabilityField","DO"}) --проверим обновление флага достоверности
--				--Core.onExtChange({g_ObjID..DO_Channel..".repaireFlag"}, SetRepaireMode,{Ch,g_ObjID..DO_Channel..".repaireFlag","DO"}) --проверим обновление флага вывода в ремонт
--				Core.onExtChange({g_ObjID..DO_Channel..".Value"}, g_DO_lib.Process,{Ch,DO_Channel}) --проверим обновление тега
----				ReliabilityField=g_ObjID..DO_Channel..".reliabilityField"-- сформируем  имя признака достоверности
--	--			Core.onExtChange({ReliabilityField}, g_Data_Valid_lib.SetReliabilityFlag,{DO_Channel,ReliabilityField,"DO"}) 
--			end --for Ch, _ 
---- отслеживаем изменения достоверности дискретных выходов ()
--		for Module, ChNum in pairs(g_RawDO)
--		do 			
--				for _, Ch in pairs(ChNum) 
--				do
--					DO_Channel=g_PLC_Name..Module.."."..Ch -- сформируем  имя канала
--					ReliabilityField=g_ObjID..g_DO_Signals[DO_Channel].Tag..".reliabilityField"--  сформируем  имя признака достоверности
--					Core.onExtChange({ReliabilityField}, g_DO_lib.Process,{DO_Channel,ReliabilityField,"DO"}) 
--
--				end --_, Ch
--		end --for Module, ChNum 	
