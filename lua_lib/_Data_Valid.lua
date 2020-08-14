--библиотека функций определения достоверности входных и выходных данных ПЛК Сонет
-- изм. от 12-09-18
-- введена функция Core.isSignalValid("Name") - системное определение достоверности сигнала. Проверяем достоверность необработааного сигнала (входа)!
-- Теперь нет зависимости ReliabilityFlag от ReliabilityFlield (кроме двойных DI). 
-- ReliabilityFlield носит информационный характер


local Data_Valid={}
	function Data_Valid.SetReliabilityFlag(Signal)-- функция включения\отключения флага достоверности сигнала из вне
		local DI_Channel=Signal[1] -- присвоим ссылку на таблицу дискретных сигналов
		local AI_Channel=Signal[1]-- присвоим ссылку на таблицу аналоговых сигналов
		local DO_Channel=Signal[1]-- присвоим ссылку на таблицу аналоговых сигналов
		local Signal_type= Signal[3] ---- присвоим ссылку на имя тега
		local ReliabilityFlield=Core[Signal[2]]---- получим из системы значение тега поля достоверности
--		local ReliabilityFlag -- переменная флага достоверности

			--Core.addLogMsg("DI_Channel= " .. tostring(DI_Channel))
-- исключено 12-09-18
	
		--[[		if ReliabilityFlield ==0 -- если битовое поле достоверности нулевое
		then 
				ReliabilityFlag=true --сигнал достоверен
		else 	-- иначе
				ReliabilityFlag=false --сигнал недостоверен
		end --if ReliabilityFlield== 0
]]--
		if Signal_type=="AI" -- если изменилась достоверность входного аналога
		then
			local AI_data=Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value"]
			Core.addLogMsg("g_Data_Valid_lib.SetReliabilityFlag: " .. g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value=".. AI_data)
-- Добавлено 12-09-18. 
			--local ReliabilityFlag=Core.isSignalValid(g_SystemID..g_USO_ID..g_AI_Signals[AI_Channel].Tag..".Value") -- получим системный флаг достоверности сигнала
--	изменено  13-09-18
		--	local ReliabilityFlag=Core.isSignalValid(g_USO_ID..AI_Channel) -- получим системный флаг достоверности необработанного сигнала
		if ReliabilityFlield < 1 -- если битовое поле достоверности нулевое
		then 
				ReliabilityFlag=true --сигнал достоверен
					--			Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value"]=Core[g_USO_ID..AI_Channel]*Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Ktr"]
		else 	-- иначе
				ReliabilityFlag=false --сигнал недостоверен
				--Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value"]=0/0 --присвоим занчению переменной 'nan' чтобы не писались тренды
		end --if ReliabilityFlield== 0

		--//

			g_AI_Signals[AI_Channel]["reliabilityFlag"]=ReliabilityFlag -- внесем запись в таблицу аналоговых сигналов
			Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".reliabilityFlag"]=ReliabilityFlag -- внесем запись в таблицу свойств сигнала в ядре
			if ReliabilityFlag==false then --если сигнал стал недостоверен
				if 	g_OldAIValueFlag==false	then --если последнее достоверное значение не фиксировалось
						Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".OldValue"]=AI_data --зафиксировать
						Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value"]=0/0
						g_OldAIValueFlag=true  --установить флаг фиксации последнего достоверного значения
				end--if 	g_OldAIValueFlag==false
				--Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value"]=0/0 --присвоим занчению переменной 'nan' чтобы не писались тренды
			else
				if 	g_OldAIValueFlag==true	then --если последнее достоверное значение фиксировалось
						Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Value"]=Core[g_USO_ID..AI_Channel]*Core[g_ObjID..g_AI_Signals[AI_Channel].Tag..".Ktr"] --перечитаем значение со входа
						g_OldAIValueFlag=false  --установить флаг фиксации последнего достоверного значения
				end--if 	g_OldAIValueFlag==false
			
				--g_OldAIValueFlag=false  --сбросить флаг фиксации последнего достоверного значения
			--	
				
			end--if ReliabilityFlag==fals
		elseif Signal_type=="DI"-- если изменилась достоверность входного дискрета
		then
-- Добавлено 12-09-18. 
			--local ReliabilityFlag=Core.isSignalValid(g_SystemID..g_USO_ID..g_DI_Signals[DI_Channel].Tag..".Value") -- получим системный флаг достоверности сигнала	
--изменено  13-09-18
	--[[		local ReliabilityFlag=Core.isSignalValid(g_USO_ID..DI_Channel) -- получим системный флаг достоверности необработанного сигнала

			--уточнение: для двухбитных сигналов положения исключение!
			if ReliabilityFlield ==g_noValid.Rel -- если недостоверность по признаку связанного сигнала
			then
				ReliabilityFlag=false --сделаем недостоверным
			end --ReliabilityFlield ==noValid.Rel
--//
	--]]
			if ReliabilityFlield < 1 -- если битовое поле достоверности нулевое
		then 
				ReliabilityFlag=true --сигнал достоверен
		else 	-- иначе
				ReliabilityFlag=false --сигнал недостоверен
		end --if ReliabilityFlield== 0

			g_DI_Signals[DI_Channel]["reliabilityFlag"]=ReliabilityFlag-- внесем запись в таблицу дискретных сигналов
			Core[g_ObjID..g_DI_Signals[DI_Channel].Tag..".reliabilityFlag"]=ReliabilityFlag -- внесем запись в таблицу свойств сигнала в ядре
		elseif 	Signal_type=="DO"-- если изменилась достоверность выходного дискрета
		then
-- Добавлено 12-09-18.
			--		local ReliabilityFlag=Core.isSignalValid(g_SystemID..g_USO_ID..g_DO_Signals[DO_Channel].Tag..".Value") -- получим системный флаг достоверности сигнала
--	 изменено  13-09-18		
			local ReliabilityFlag=Core.isSignalValid(g_USO_ID..DO_Channel) -- получим системный флаг достоверности необработанного сигнала
--//
		Core.addLogMsg(Signal[1])
			g_DO_Signals[Signal[1]]["reliabilityFlag"]=ReliabilityFlag-- внесем запись в таблицу дискретных выходов
			Core[g_ObjID..g_DO_Signals[Signal[1]].Tag..".reliabilityFlag"]=ReliabilityFlag -- внесем запись в таблицу свойств сигнала в ядре
		else 
			return 0
		end --	Signal_type=="AI"

	end --function Data_Valid(Signal)



return Data_Valid