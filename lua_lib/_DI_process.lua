--библиотека функций обработки поступающих от Сонет дискретных сигналов версия от 21-12-18 18:00
--исправлена обработка инвертированных сигналов
local DI_Data={}

--[[	
	function Input_Output_Data.InitConfig(g_USO_ID,g_PLC_Name) --инициализация данных для узла
	
		local g_SystemID =require("./PRJ_Config/_systemID"); -- считаем идентификатор системы
		local g_RawDI=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DI_map") --считываем конфигурацию дискретных входов ПЛК
		local g_RawAI=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "AI_map") --считываем конфигурацию аналоговых входов ПЛК
		local g_RawDO=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DO_map") --считываем конфигурацию дискретных выходов ПЛК
		local g_DI_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DI_data") --считываем базу дискретных тегов и их свойств
		local g_AI_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "AI_data") --считываем базу аналоговых тегов и их свойств
		local DO_Signals=require("./PLC_config/".. string.gsub(g_USO_ID,"_","").."/"..string.gsub(g_PLC_Name,"_","").."/".. "DO_data") --считываем базу дискретных выходов и их свойств
		--........................................................
		local g_noValid =require("./lua_lib/_reliabilityField"); -- считаем описание битового поля недостоверности сигнала
		local event =require("./lua_lib/_events_desc"); -- считаем описание классов событий
		local g_Faults =require("./lua_lib/_fault_codes"); -- считаем коды ошибок
		return g_SystemID, g_RawDI, g_RawAI, g_RawDO, g_DI_Signals, g_AI_Signals, DO_Signals
	end -- function Input_Output_Data.InitConfig
--	Core.addLogMsg("Работает Add-on")
]]--

-- ///////////////////////Задание первоначальных значений переменных////////////////////
	function DI_Data.Init(Signal) --функция инициализации DI входа контроллера
		-- переменные
		local result=0 --результат выполнения функции. 0: успешно; -1: некорректно; -2 : аварийно
		local OutputName --имя выходного тега
		local inputValue--значение входного тега
		local OutputValue--  значение выходного тега
		local InputName=string.gsub(Signal, g_ObjID, "") -- название необработанного сигнала со входа ПЛК игнорируя название усо
			if g_DI_Signals[InputName]==nil then -- если сигнал в таблице не описан
				Core.addLogMsg("Опрос "..InputName..". Для данного DI входа отсутствует описание в таблице g_DI_Signals") -- отправим сообщение об ошибке в логи
				result=-2
				return result -- завершить работу функции Init_DI_Data
			else
				inputValue=Core[g_USO_ID..InputName] --получим значение входа ПЛК
--			g_oldsignals[InputName]=inputValue -- сохраним его в буфер значений

				OutputName=g_ObjID..g_DI_Signals[InputName]["Tag"] --имя выходного тега присвоим
				OutputTag=OutputName..".Value" -- сформируем имя тэга (поле с текущим значением)
												
					--//синхронизация таблиц свойств сигналов (приоритет у ЛУА)
					
	
				-- значение флага инверсии сигнала
				if not g_DI_Signals[InputName]["InvFlag"] --если не задано в луа
				then 
					local tmp_var=Core[OutputName..".InvFlag"] -- считаем из системы
					if not tmp_var --если и там пусто
					then 
							g_DI_Signals[InputName]["InvFlag"]=false -- присвоим по умолчанию значение "ложь"
							Core[OutputName..".InvFlag"]=g_DI_Signals[InputName]["InvFlag"] -- и отправим в систему
					else 
							g_DI_Signals[InputName]["InvFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
				else 
							Core[OutputName..".InvFlag"]=g_DI_Signals[InputName]["InvFlag"] -- отправим в систему
				end --InvFlag
				
		-- значение сигнала в зависимости от состояния входа ПЛК				
				if g_DI_Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
				then 
								Core[OutputTag]=inputValue -- передадим значение входа ПЛК тэгу
						--		g_oldsignals[InputName]=inputValue -- -- сохраним его в буфер значений
				else	--сигнал инвертированный,
								Core[OutputTag]=not inputValue -- передадим противоположное значение входа ПЛК тэгу
							--	g_oldsignals[InputName]=not inputValue -- -- сохраним его в буфер значений противоположное значение
				end					
			--	Core.addLogMsg("1 Инициализация "..InputName..". inputValue="..tostring(inputValue)..  " g_oldsignals=".. tostring(g_oldsignals[InputName]))
				g_oldsignals[InputName]=inputValue -- -- сохраним его в буфер значений
				--Core.addLogMsg("2 Инициализация "..InputName..". inputValue="..tostring(inputValue)..  " g_oldsignals=".. tostring(g_oldsignals[InputName]))
				
					Core[OutputName..".dt"]=os.time()-- добавим время опроса сигнала --доб 09-01-18 
				
							-- описание параметра
				if  not g_DI_Signals[InputName]["Comment"] or string.len(g_DI_Signals[InputName]["Comment"])==0  --если не задано в луа
				then 
						local tmp_var=Core[OutputName..".Comment"] -- считаем из системы
						if  not tmp_var or string.len(tmp_var)==0 --==nil  --если и там пусто
							then 
								g_DI_Signals[InputName]["Comment"]=g_ObjDesc.."Описание переменной ".. tostring(OutputName) -- присвоим по умолчанию имя тэга
								Core[OutputName..".Comment"]=g_DI_Signals[InputName]["Comment"] -- и отправим в систему
							else
								g_DI_Signals[InputName]["Comment"]=tmp_var -- иначе присвоим значение из системы
							end --tmp_var
				else 
						Core[OutputName..".Comment"]=g_ObjDesc..g_DI_Signals[InputName]["Comment"] -- и отправим описание в систему
				end --Comment
					-- тестовое описание значения "1"
				if not g_DI_Signals[InputName]["Txt_1"] or string.len( g_DI_Signals[InputName]["Txt_1"])==0--если не задано в луа
				then 
						local tmp_var=Core[OutputName..".Txt_1"] -- считаем из системы
						if  not tmp_var or string.len(tmp_var)==0--если и там пусто
						then 
								g_DI_Signals[InputName]["Txt_1"]=" присвоено значение '1'" -- присвоим по умолчанию имя тэга
								Core[OutputName..".Txt_1"]=g_DI_Signals[InputName]["Txt_1"] -- и отправим в систему
						else 
								g_DI_Signals[InputName]["Txt_1"]=tmp_var -- иначе присвоим значение из системы
						end --tmp_var
				else 		
						Core[OutputName..".Txt_1"]=g_DI_Signals[InputName]["Txt_1"] -- отправим в систему
				end --Txt_1
				-- тестовое описание значения "0"
				if not g_DI_Signals[InputName]["Txt_0"] or 	string.len(g_DI_Signals[InputName]["Txt_0"])==0 --если не задано в луа
				then 
						local tmp_var=Core[OutputName..".Txt_0"] -- считаем из системы
						if not tmp_var or string.len(tmp_var)==0--если и там пусто
						then 
							g_DI_Signals[InputName]["Txt_0"]=g_DI_Signals[InputName]["Txt_1"] -- присвоим по умолчанию имя тэга (для состояния "1")
							Core[OutputName..".Txt_0"]=g_DI_Signals[InputName]["Txt_1"] -- и отправим в систему
						else 
							g_DI_Signals[InputName]["Txt_0"]=tmp_var -- иначе присвоим значение из системы
						end --tmp_var
				else 
						Core[OutputName..".Txt_0"]=g_DI_Signals[InputName]["Txt_0"] --  отправим в систему
				end --Txt_0
				-- тестовый источник сигнала
				if not g_DI_Signals[InputName]["Source"] or 	string.len(g_DI_Signals[InputName]["Source"])==0 --если не задано в луа
				then 
					local tmp_var=Core[OutputName..".Source"] -- считаем из системы
					if not tmp_var or string.len(tmp_var)==0--если и там пусто
					then 
							g_DI_Signals[InputName]["Source"]="Источник сигнала"  -- присвоим по умолчанию текст
							Core[OutputName..".Source"]=g_DI_Signals[InputName]["Source"] -- и отправим в систему
					else 
							g_DI_Signals[InputName]["Source"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
				else 
							Core[OutputName..".Source"]=g_DI_Signals[InputName]["Source"] --  отправим в систему
				end --Source
		
				-- значение флага достоверности сигнала  
--[[
			if not g_DI_Signals[InputName]["reliabilityFlag"] or string.len(tostring(g_DI_Signals[InputName]["reliabilityFlag"]))==0--если не задано в луа
			then 
				local tmp_var=Core[OutputName..".reliabilityFlag"] -- считаем из системы
				if  not tmp_var or string.len(tostring(tmp_var))==0--если и там пусто
					then 
						g_DI_Signals[InputName]["reliabilityFlag"]=true -- присвоим по умолчанию значение "ложь"
						Core[OutputName..".reliabilityFlag"]=g_DI_Signals[InputName]["reliabilityFlag"] -- и отправим в систему
					else 
						g_DI_Signals[InputName]["reliabilityFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else
				Core[OutputName..".reliabilityFlag"]=g_DI_Signals[InputName]["reliabilityFlag"] -- отправим в систему
			 end --reliabilityField
]]--
				-- значение флага запрета опроса сигнала (вывода в ремонт) 
				if not g_DI_Signals[InputName]["repaireFlag"] or string.len(tostring(g_DI_Signals[InputName]["repaireFlag"]))==0--если не задано в луа
				then 
					local tmp_var=Core[OutputName..".repaireFlag"] -- считаем из системы
					if  not tmp_var or string.len(tostring(tmp_var))==0--если и там пусто
					then 
							g_DI_Signals[InputName]["repaireFlag"]=false-- присвоим по умолчанию значение "ложь"
							Core[OutputName..".repaireFlag"]=g_DI_Signals[InputName]["repaireFlag"] -- и отправим в систему
					else 
							g_DI_Signals[InputName]["repaireFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
				else
							Core[OutputName..".repaireFlag"]=g_DI_Signals[InputName]["repaireFlag"] -- отправим в систему
				end --repaireFlag
				-- значение флага создания сообщений и событии (аварии)
				if not g_DI_Signals[InputName]["AlarmClass"] or string.len(g_DI_Signals[InputName]["AlarmClass"])==0 --если не задано в луа
				then 
					local tmp_var=Core[OutputName..".AlarmClass"] -- считаем из системы
					if  not tmp_var or string.len(tmp_var)==0  --если и там пусто
					then 
							g_DI_Signals[InputName]["AlarmClass"]=event.disabled -- присвоим по умолчанию значение не создавать сообщения
							Core[OutputName..".AlarmClass"]=g_DI_Signals[InputName]["AlarmClass"] -- и отправим в систему
					--else --если что-то в значении есть...
					end --tmp_var
				else --если в таблице не пусто
							local tmp_var=g_DI_Signals[InputName]["AlarmClass"] -- считаем из таблицы
							local found_in_events=false -- флаг нахождения типа события в описании
							for al_type, al_type_val in pairs(event) --проверка класса аларма по таблице event
							do 
								if 	tmp_var==al_type or tmp_var==al_type_val --если тип описан в таблице, то присвоим
								then 
									g_DI_Signals[InputName]["AlarmClass"]=al_type_val 
									Core[OutputName..".AlarmClass"]=al_type_val
									found_in_events=true -- найдено
									break
								end--if 	tmp_var==al_type or tmp_var==al_type_val
							end --al_type, al_type_val in pairs(event)
							if found_in_events==false -- если событие в таблице не описано
							then
									g_DI_Signals[InputName]["AlarmClass"]=event.disabled  --отключим
									Core[OutputName..".AlarmClass"]=event.disabled
							end
				end --AlarmClass
				-- текст тревожного сообщения
				if not g_DI_Signals[InputName]["AlarmMsg"] or string.len(g_DI_Signals[InputName]["AlarmMsg"])==0 --если не задано в луа
				then 
					local tmp_var=Core[OutputName..".AlarmMsg"] -- считаем из системы
					if not tmp_var or string.len(tmp_var)==0--если и там пусто
					then 
							g_DI_Signals[InputName]["AlarmMsg"]="Возникновение события для тэга: ".. tostring(OutputName) -- присвоим по умолчанию имя тэга
							Core[OutputName..".AlarmMsg"]=g_DI_Signals[InputName]["AlarmMsg"] -- и отправим в систему
					else 
							g_DI_Signals[InputName]["AlarmMsg"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
				else 
						Core[OutputName..".AlarmMsg"]=g_DI_Signals[InputName]["AlarmMsg"] --  отправим в систему
				end --AlarmMsg    
		end --g_DI_Signals[InputName]



	-- значение флага достоверности сигнала  
		local reliabilityField=Core[OutputName..".reliabilityField"]--значение поля достоверности
				--if reliabilityField==0 -- - если значение поля достоверности сигнала нулевое - 
				if reliabilityField<=1 -- если значение поля достоверности сигнала меньше  или равно частичной неисправности
					then 	
						reliabilityFlag=true --достоверно
				else
						reliabilityFlag=false --недостоверно
				end --Core[OutputName..".reliabilityField"]==0
					g_DI_Signals[InputName]["reliabilityFlag"] =reliabilityFlag --значение в локальную таблицу
					Core[OutputName..".reliabilityFlag"]=reliabilityFlag -- отправим в систему



					
	return result
end --of Init__DI_Data




	function DI_Data.Process(Signal) -- обработка входных дискретов
		-- переменные
		--local g_SystemID =require("./PRJ_Config/_systemID"); -- считаем идентификатор системы
		--local g_points=2 -- количество дополнительных точек для проверки
		local result=0 --результат выполнения функции. 0: успешно; -1: некорректно; -2 : аварийно
		local timestamp=os.time(); -- время фиксации сигнала (передний фронт)--найдем в таблице соответствующий выходной тэг, проверив его наличие
		local OutputName --имя выходного тега 
		local VarName=Signal[1]--
		--local InputValue=Signal[2]	
		local InputName=string.gsub(Signal[1], g_USO_ID, "")
		local InputValue=Core[g_USO_ID..InputName]
		Core.addLogMsg("1 Обработка входа "..VarName.." значение=".. tostring(InputValue).. "Предыдущее значение входа "..InputName..". ="..tostring(g_oldsignals[InputName]))
		local OutDI
		local e_type -- тип события (появление/исчезновение)
	--	local user="USER_:)"			
				if g_DI_Signals[InputName]==nil then -- если сигнал в таблице не описан
						Core.addLogMsg(" Опрос "..InputName..". Для данного DI входа отсутствует описание в таблице g_DI_Signals") -- отправим сообщение об ошибке в логи
						result=-2
						return result-- завершить работу функции Process_DI_Data
				else
				  	    OutputName=g_ObjID..g_DI_Signals[InputName]["Tag"] --имя выходного тега присвоим
						if g_DI_Signals[InputName]["repaireFlag"]== true -- и проверим на нахождение в ремонте (запрет опроса)
						then
						  if g_Logs -- если логи включены
							then	
							 	Core.addLogMsg("Опрос тэга"..g_ObjID..g_DI_Signals[InputName]["Tag"].." отключен из-за вывода оборудования в ремонт(канал ".. InputName.. ").") -- отправим сообщение в логи	 
					   		end --if g_Logs
						  return -- прекращаем работу функции Process_DI_Data
						end --if g_DI_Signals[InputName]["repaireFlag"]== true
				end --g_DI_Signals[InputName]==nil
			
			-- проверка на дребезг
--[[		
		if  g_bounce_check==true 
		then --если включена проверка на дребезг
					Core.addLogMsg("Обработка входа "..VarName..". Проверка дребезга включена")
					local result1, value, utc, flags = Core.getSignal(VarName)--получим метаданные о сигнале
					if g_oldTimes[InputName]==nil --если сигнал изменился впервые
					then 
						--Core.addLogMsg("Не существует g_oldTimes["..InputName.."]") 
						g_oldTimes[InputName]=utc--сохраним время изменения сигнала в буфере
						OutDI=Core[g_USO_ID..InputName] -- присвоим выходное значение сигналу

					else 
						local pusle_long=utc-g_oldTimes[InputName] -- длина импулься сигнала
						if pusle_long>=g_pulse_duration then
							--Core.addLogMsg("g_oldTimes["..InputName.."]="..tostring(g_oldTimes[InputName])) 
							OutDI=Core[g_USO_ID..InputName] --  присваиваем 
						else 
							Core.addLogMsg("Дребезг детектед!")
						end--	if pusle_long>=g_pulse_duration	
						g_oldTimes[InputName]=utc--сохраним время изменения сигнала в буфере
						
					end--if g_oldTimes[InputName]==nil --

		else -- g_bounce_check==true 
					Core.addLogMsg("Обработка входа "..VarName..". Проверка дребезга отключена")
					--OutDI=Core[VarName] -- если проверка дребезга отключена - присваиваем напрямую
					 OutDI=InputValue-- если проверка дребезга отключена - присваиваем напрямую
					Core.addLogMsg("Обработка входа "..VarName..". Присвоение OutDI="..tostring(OutDI))

 		end --if  g_bounce_check
				 --]]
-- проверка на дребезг конец

			 OutDI=InputValue-- если проверка дребезга отключена - присваиваем напрямую
			Core.addLogMsg("2 Обработка входа "..VarName..". Присвоение OutDI="..tostring(OutDI))
			g_DI_Signals[InputName]["Value"]=OutDI
			--Core.addLogMsg("Предыдущее значение входа "..InputName..". ="..tostring(g_oldsignals[InputName]))
			if OutDI==g_oldsignals[InputName]--если сигнал не менял значение
			
			then
						Core.addLogMsg("Ошибка обработки входа OutDI==g_oldsignals[InputName] "..tostring(OutDI).. " "..tostring(g_oldsignals[InputName]))
							return -- прекращаем работу функции Process_DI_Data
			end --OutDI==g_oldsignals[InputName]
			
			if g_DI_Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
			then 
								Core[OutputName..".Value"]=OutDI -- присваеваем значение глобальной переменной
						--		g_DI_Signals[InputName]["Value"]=OutDI  -- и заносим в таблицу
							--	g_oldsignals[InputName]=OutDI  -- и заносим в таблицу старых


			else	--сигнал инвертированный,
									Core[OutputName..".Value"]=not OutDI -- присваеваем противоположное значение глобальной переменной
									--g_DI_Signals[InputName]["Value"]=not OutDI  -- и заносим в таблицу
								--	g_oldsignals[InputName]=not OutDI  -- и заносим в таблицу старых

			end --g_DI_Signals[InputName]["InvFlag"]==false
			--Core.addLogMsg(" Process. "..OutputName..".Value="..tostring(OutDI).." g_oldsignals["..InputName.."]="..tostring(g_oldsignals[InputName]))
			Core[OutputName..".dt"]=timestamp --обновим время изменения сигнала
		

 		--////// Формирование сообщения в журнал событий
		-- проверка изменения сигнала
				if OutDI~=g_oldsignals[InputName] -- строка будет формироваться, если полученное и предыдущее значения сигнала не совпадают
				then	
						g_oldsignals[InputName]=OutDI -- заменяем значение переменной в буфере предыдущего значения	 	
						Core.addLogMsg("3 Предыдущее значение входа после замены "..InputName..". ="..tostring(g_oldsignals[InputName]))	

				--определяем тип события
							local e_type
							--if g_DI_Signals[InputName]["Value"]==true  -- тип события 1-возникновение, 0 - исчезновение
							if OutDI==true	
							then
									if g_DI_Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
									then 
										e_type=1
									else	--сигнал инвертированный,
										e_type=0
									end --if g_DI_Signals[InputName]["InvFlag"]==false 
							else
									if g_DI_Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
									then 
										e_type=0
									else	--сигнал инвертированный,
										e_type=1
									end --if g_DI_Signals[InputName]["InvFlag"]==false 
									
							end --тип события
							--если это событие						
							-- ОБРАБОТКА ПОЯВЛЕНИЯ СОБЫТИЙ
							--
						if g_DI_Signals[InputName]["AlarmClass"]~=event.disabled  -- если включены сообщения для сигнала
						then
								local EventMsg=g_ObjDesc -- текст сообщения
								if g_DI_Signals[InputName]["AlarmClass"]==event.s or g_DI_Signals[InputName]["AlarmClass"]==event.c -- если событие или команда, то формируем строку сообщения из описания сигнала и его состоянияы
								then
									EventMsg=EventMsg..g_DI_Signals[InputName]["Comment"]	-- описания сигнала
									if OutDI==true -- если сигнал принял значение "1"
									then
											if g_DI_Signals[InputName]["InvFlag"]==false -- выбираем текст в зависимости от инверсии сигнала,
											then 
													EventMsg=EventMsg.." "..g_DI_Signals[InputName]["Txt_1"]--если инверсии нет - то для true значения сигнала присвоим текст состояния "1"
											else
													EventMsg=EventMsg.." "..g_DI_Signals[InputName]["Txt_0"] -- если есть - то для "0"
											end--g_DI_Signals[InputName]["InvFlag"]==false
									 else -- если сигнал принял значение "0"	
											if g_DI_Signals[InputName]["InvFlag"]==false-- выбираем текст в зависимости от инверсии сигнала,
											then 
														EventMsg=EventMsg.." "..g_DI_Signals[InputName]["Txt_0"] --если инверсии нет - то для false значения сигнала присвоим текст состояния "0"
											else
														EventMsg=EventMsg.." "..g_DI_Signals[InputName]["Txt_1"]-- если есть - то для "1"
											end	--	g_DI_Signals[InputName]["InvFlag"]==false
								 	end	--if OutDI==true
								 else -- если авария или предупреждение
										EventMsg=EventMsg..g_DI_Signals[InputName]["Comment"]..". "..g_DI_Signals[InputName]["AlarmMsg"] -- добавим текст 

								 end	-- g_DI_Signals[InputName]["AlarmClass"]==event.s 
							--	if  g_DI_Signals[InputName]["reliabilityFlag"] == false then EventMsg="ЗНАЧЕНИЕ НЕДОСТОВЕРНО. "..EventMsg end -- ЕСЛИ недостоверно - отметим и это
								-- создадим сообщение в логах
								   if g_Logs -- если логи включены
									then 
										Core.addLogMsg(EventMsg.." "..g_DI_Signals[InputName]["AlarmClass"].." "..g_ObjID..g_DI_Signals[InputName]["Tag"].." "..timestamp.."_"..e_type.." "..g_ScreenID.." "..g_User)
									end --	if g_Logs
								-- создадим сообщение в стоке событий
								Core.addEvent(EventMsg, g_DI_Signals[InputName]["AlarmClass"], e_type ,g_DI_Signals[InputName]["Source"], g_User, g_ObjID..g_DI_Signals[InputName]["Tag"], timestamp, g_ScreenID )
						 end --g_DI_Signals[InputName]["AlarmClass"]~=0
				end --if OutDI~=g_oldsignals[InputName]	
			--////// Формирование сообщения в журнал событий конец

--	   		g_oldsignals[InputName]=OutDI -- заменяем значение переменной в буфере предыдущего значения	 	

		--	if g_DI_Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
	--		then 	
					--	g_oldsignals[InputName]=OutDI -- заменяем значение переменной в буфере предыдущего значения	 	
					--	Core.addLogMsg("Предыдущее значение входа после замены "..InputName..". ="..tostring(g_oldsignals[InputName]))		

		--	else	--сигнал инвертированный,
			--			g_oldsignals[InputName]=not OutDI -- заменяем значение переменной в буфере предыдущего значения	 	

		--	end


			return result
	end --of Input_Output_Data.Process_DI_Data(Signal) 


return DI_Data