-- /////////////////////// блок функций////////////////////
local Sonet_DI_Processing={}
-- ///////////////////////Обработка значений переменных////////////////////
function Sonet_DI_Processing.Process_DI_Data(Signal) 
		
		
		-- переменные
		local points=2 -- количество дополнительных точек для проверки
		local timestamp=os.time(); -- время фиксации сигнала (передний фронт)--найдем в таблице соответствующий выходной тэг, проверив его наличие
		local OutputName --имя выходного тега 
		--local InputName=Signal[1] -- название необработанного сигнала со входа ПЛК
		local VarName=Signal[1]
		--local ModuleReliabilityFlag =Signal[3]
		local ModuleNum=Signal[3]	
		--if Module_ready[ModuleNum] ==true then aa="true!" else aa="false!" end
		--Core.addLogMsg("Process_DI_Data. Slot "..ModuleNum.. "    " .. aa)
		local InputName=string.gsub(Signal[1], ObjID, "")
		--local repairedFlag= Core[ObjID..Signals[InputName]["Tag"]..".repaireFlag"] -- запрос запрета обработки канала
		local e_type -- тип события (появление/исчезновение)
		local oldValue= oldsignals[InputName]
					
				if Signals[InputName]==nil then -- если сигнал в таблице не описан
						Core.addLogMsg("Опрос "..InputName..". Для данного DI входа отсутствует описание в таблице Signals") -- отправим сообщение об ошибке в логи
						return -- завершить работу функции Process_DI_Data
				else
				  	    OutputName=ObjID..Signals[InputName]["Tag"] --имя выходного тега присвоим
						if Signals[InputName]["repaireFlag"]== true -- и проверим на нахождение в ремонте (запрет опроса)
						then
						   	Core.addLogMsg("Опрос тэга"..ObjID..Signals[InputName]["Tag"].." отключен из-за вывода оборудования в ремонт(канал ".. InputName.. ").") -- отправим сообщение в логи	 
					   		return -- прекращаем работу функции Process_DI_Data
						end
				end --Signals[InputName]["Tag"]
			
			-- проверка на дребезг
				if  bounce_check==true then --если включена проверка на дребезг
					local InDI={} -- массив данных со входа 
					local bounce_flag=false -- признак дребезга контактов
					local step=pulse_duration/points --шаг проверки длительности импульса (/2 значит по трём точкам)
					-- цикл контрольного опроса входа
							for i=1, points+1 do  
								InDI[i]=Core[ObjID..InputName] -- опрашиваем вход
								os.sleep(0.001*step) -- ждем отрезок до следующего опроса входа
						--	if Core["bounce"]==true then ChangeIn() end -- имитируем дребезг если разрешено
				 			end --for

					-- цикл проверки наличия дребезга 
							for i=1, points do  
								if InDI[i]~=InDI[i+1] then bounce_flag=true end
							end --for
					if bounce_flag==false then 
						OutDI=InDI[1] --присваеваем переменной первое значение
						Core[OutputName..".dt"]=timestamp -- и метку времени
					else
						Core[ObjID..InputName]=InDI[1] -- возвращаем на вход первоначальное значение
					 end --if
 		  	 else
					OutDI=Core[ObjID..InputName] -- если проверка дребезга отключена - присваиваем напрямую
 		 	  end --if  bounce_check
			-- проверка на дребезг конец
			-- проверка варианта, когда изменилось не значение параметра, а его свойства
			if OutDI==oldsignals[InputName]
			then
					--Core.addLogMsg("Изменения значения параметра "..ObjID..Signals[InputName]["Tag"].." не выявлено.") -- отправим сообщение в логи	 
					return -- прекращаем работу функции Process_DI_Data
			end


			Core[OutputName..".Value"]=OutDI -- присваеваем значение глобальной переменной
			Signals[InputName]["Value"]=OutDI  -- и заносим в таблицу
			-- проверка на связку с другим сигналом
		-- проверка на связку с другим сигналом конец
	-- проверка на достоверность конец

	
 		--////// Формирование сообщения в журнал событий
	
-- проверка изменения сигнала
				if OutDI~=oldsignals[InputName] -- строка будет формироваться, если полученное и предыдущее значения сигнала не совпадают
				then	
					-- проверка на привязку аларма
					--if Signals[InputName]["AlarmClass"]== nil or Signals[InputName]["AlarmClass"]==0 -- если класс аварии не задан
				--	then
					--		Core.addLogMsg(Signals[InputName]["AlarmClass"].."Аварийного сообщения для "..OutputName.." не предусмотрено") 
					--else
							--определяем тип события
							local e_type
							if Signals[InputName]["Value"]==true  -- тип события 1-возникновение, 0 - исчезновение
							then
									if Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
									then 
										e_type=1
									else	--сигнал инвертированный,
										e_type=0
									end
							else
									if Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
									then 
										e_type=0
									else	--сигнал инвертированный,
										e_type=1
									end
							end --тип события
							--если это событие
							Core.addLogMsg(tostring(e_type))
				
-- ОБРАБОТКА ПОЯВЛЕНИЯ СОБЫТИЙ
							--
						if Signals[InputName]["AlarmClass"]~=0 -- если включены сообщения для сигнала
						then
								local EventMsg=ObjDesc -- текст сообщения
								if Signals[InputName]["AlarmClass"]==event.s or Signals[InputName]["AlarmClass"]==event.c -- если событие или команда, то формируем строку сообщения из описания сигнала и его состоянияы
								then
									EventMsg=EventMsg..Signals[InputName]["Comment"]	-- описания сигнала
									if OutDI==true -- если сигнал принял значение "1"
									then
											if Signals[InputName]["InvFlag"]==false -- выбираем текст в зависимости от инверсии сигнала,
											then 
													EventMsg=EventMsg.." "..Signals[InputName]["Txt_1"]--если инверсии нет - то для true значения сигнала присвоим текст состояния "1"
											else
													EventMsg=EventMsg.." "..Signals[InputName]["Txt_0"] -- если есть - то для "0"
											end--Signals[InputName]["InvFlag"]==false
									 else -- если сигнал принял значение "0"	
											if Signals[InputName]["InvFlag"]==false-- выбираем текст в зависимости от инверсии сигнала,
											then 
														EventMsg=EventMsg.." "..Signals[InputName]["Txt_0"] --если инверсии нет - то для false значения сигнала присвоим текст состояния "0"
											else
														EventMsg=EventMsg.." "..Signals[InputName]["Txt_1"]-- если есть - то для "1"
											end	--	Signals[InputName]["InvFlag"]==false
								 	end	--if OutDI==true
								 else -- если авария или предупреждение
										EventMsg=EventMsg..Signals[InputName]["Comment"]..". "..Signals[InputName]["AlarmMsg"] -- добавим текст 

								 end	-- Signals[InputName]["AlarmClass"]==event.s 
								if  Signals[InputName]["reliabilityFlag"] == false then EventMsg="ЗНАЧЕНИЕ НЕДОСТОВЕРНО. "..EventMsg end -- ЕСЛИ недостоверно - отметим и это
								-- создадим сообщение в логах
								Core.addLogMsg(EventMsg.." "..Signals[InputName]["AlarmClass"].." "..ObjID..Signals[InputName]["Tag"].." "..timestamp.."_"..e_type.." "..ScreenID)
								-- создадим сообщение в стоке событий
								Core.addEvent(EventMsg, Signals[InputName]["AlarmClass"], e_type, ObjID..Signals[InputName]["Tag"], timestamp, ScreenID )
						 end --Signals[InputName]["AlarmClass"]~=0
		
				--	end  -- если класс аварии не задан
				end --if OutDI~=oldsignals[InputName]
							
--////// Формирование сообщения в журнал событий конец
	
  	oldsignals[InputName]=OutDI -- земеняем значение переменной в буфере предыдущего значения
		 	
end --of Process_DI_Data(Signal) 

-- ///////////////////////Задание первоначальных значений переменных////////////////////
function Sonet_DI_Processing.Init_DI_Data(Signal) --функция инициализации DI входа контроллера
-- переменные
local OutputName --имя выходного тега
local inputValue--значение входного тега
local OutputValue--  значение выходного тега
local InputName=string.gsub(Signal, ObjID, "") -- название необработанного сигнала со входа ПЛК игнорируя название усо
if Signals[InputName]==nil then -- если сигнал в таблице не описан
		Core.addLogMsg("Опрос "..InputName..". Для данного DI входа отсутствует описание в таблице Signals") -- отправим сообщение об ошибке в логи
		return -- завершить работу функции Process_DI_Data
	else
		inputValue=Core[ObjID..InputName] --получим значение входа ПЛК
		oldsignals[InputName]=inputValue -- сохраним его в буфер значений
		OutputName=ObjID..Signals[InputName]["Tag"] --имя выходного тега присвоим
		--Core.addLogMsg("INIT! OutputName "..OutputName)
		OutputTag=OutputName..".Value" -- сформируем имя тэга (поле с текущим значением)
	--	Core.addLogMsg("INIT! OutputTag "..OutputTag)
		Core[OutputTag]=inputValue -- передадим значение входа ПЛК тэгу
			--//синхронизация таблиц свойств сигналов (приоритет у ЛУА)
		
-- описание параметра
			if  not Signals[InputName]["Comment"] or string.len(Signals[InputName]["Comment"])==0  --если не задано в луа
			then 
				local tmp_var=Core[OutputName..".Comment"] -- считаем из системы
				if  not tmp_var or string.len(tmp_var)==0 --==nil  --если и там пусто
					then 
						Signals[InputName]["Comment"]="Описание переменной ".. tostring(OutputName) -- присвоим по умолчанию имя тэга
						Core[OutputName..".Comment"]=Signals[InputName]["Comment"] -- и отправим в систему
						--Core.addLogMsg(tostring(Signals[InputName]["Comment"]))
					else
						Signals[InputName]["Comment"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			else 
				Core[OutputName..".Comment"]=Signals[InputName]["Comment"] -- и отправим описание в систему
			end --Comment
		
-- тестовое описание значения "1"
			if not Signals[InputName]["Txt_1"] or string.len( Signals[InputName]["Txt_1"])==0--если не задано в луа
			then 
				local tmp_var=Core[OutputName..".Txt_1"] -- считаем из системы
				if  not tmp_var or string.len(tmp_var)==0--если и там пусто
					then 
						Signals[InputName]["Txt_1"]="присвоено значение '1'" -- присвоим по умолчанию имя тэга
						Core[OutputName..".Txt_1"]=Signals[InputName]["Txt_1"] -- и отправим в систему
					else 
						Signals[InputName]["Txt_1"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else 		
				Core[OutputName..".Txt_1"]=Signals[InputName]["Txt_1"] -- отправим в систему
			 end --Txt_1
				
-- тестовое описание значения "0"
			if not Signals[InputName]["Txt_0"] or 	string.len(Signals[InputName]["Txt_0"])==0 --если не задано в луа
			then 
				local tmp_var=Core[OutputName..".Txt_0"] -- считаем из системы
				if not tmp_var or string.len(tmp_var)==0--если и там пусто
					then 
						Signals[InputName]["Txt_0"]=Signals[InputName]["Txt_1"] -- присвоим по умолчанию имя тэга (для состояния "1")
						Core[OutputName..".Txt_0"]=Signals[InputName]["Txt_1"] -- и отправим в систему
					else 
						Signals[InputName]["Txt_0"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else 
				
				 Core[OutputName..".Txt_0"]=Signals[InputName]["Txt_0"] --  отправим в систему
			 end --Txt_0
			
-- значение флага инверсии сигнала
			if not Signals[InputName]["InvFlag"] --если не задано в луа
			then 
				local tmp_var=Core[OutputName..".InvFlag"] -- считаем из системы
				if not tmp_var --если и там пусто
					then 
						Signals[InputName]["InvFlag"]=false -- присвоим по умолчанию значение "ложь"
						Core[OutputName..".InvFlag"]=Signals[InputName]["InvFlag"] -- и отправим в систему
					else 
						Signals[InputName]["InvFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else 
				Core[OutputName..".InvFlag"]=Signals[InputName]["InvFlag"] -- отправим в систему
			 end --InvFlag
			
-- значение флага достоверности сигнала  
			if not Signals[InputName]["reliabilityFlag"] or string.len(tostring(Signals[InputName]["reliabilityFlag"]))==0--если не задано в луа
			then 
				local tmp_var=Core[OutputName..".reliabilityFlag"] -- считаем из системы
				if  not tmp_var or string.len(tostring(tmp_var))==0--если и там пусто
					then 
						Signals[InputName]["reliabilityFlag"]=true -- присвоим по умолчанию значение "ложь"
						Core[OutputName..".reliabilityFlag"]=Signals[InputName]["reliabilityFlag"] -- и отправим в систему
					else 
						Signals[InputName]["reliabilityFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else
				Core[OutputName..".reliabilityFlag"]=Signals[InputName]["reliabilityFlag"] -- отправим в систему
			 end --repaireFlag

-- значение флага запрета опроса сигнала (вывода в ремонт) 
			if not Signals[InputName]["repaireFlag"] or string.len(tostring(Signals[InputName]["repaireFlag"]))==0--если не задано в луа
			then 
				local tmp_var=Core[OutputName..".repaireFlag"] -- считаем из системы
				if  not tmp_var or string.len(tostring(tmp_var))==0--если и там пусто
					then 
						Signals[InputName]["repaireFlag"]=false-- присвоим по умолчанию значение "ложь"
						Core[OutputName..".repaireFlag"]=Signals[InputName]["repaireFlag"] -- и отправим в систему
					else 
						Signals[InputName]["repaireFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else
				Core[OutputName..".repaireFlag"]=Signals[InputName]["repaireFlag"] -- отправим в систему
			 end --repaireFlag
				
-- значение флага создания сообщений и событии (аварии)
			if not Signals[InputName]["AlarmClass"] or string.len(Signals[InputName]["AlarmClass"])==0 --если не задано в луа
			then 
					local tmp_var=Core[OutputName..".AlarmClass"] -- считаем из системы
					if  not tmp_var or string.len(tmp_var)==0  --если и там пусто
					then 
						Signals[InputName]["AlarmClass"]=event.disabled -- присвоим по умолчанию значение не создавать сообщения
						Core[OutputName..".AlarmClass"]=Signals[InputName]["AlarmFlag"] -- и отправим в систему
					--else --если что-то в значении есть...
				--			
					end --tmp_var
			else --если в таблице не пусто
					local tmp_var=Signals[InputName]["AlarmClass"] -- считаем из таблицы
					local zamena
								--Core.addLogMsg(tostring(Signals[InputName]["AlarmClass"]))
						for al_type, al_type_val in pairs(event) --проверка класса аларма по таблице event
						do 
							if 	tmp_var==al_type or tmp_var==al_type_val --если тип описан в таблице, то присвоим
							then 
								Core.addLogMsg(tostring(Signals[InputName]["Tag"]).." "..tostring(al_type).. " "..tostring(al_type_val))
								Signals[InputName]["AlarmClass"]=al_type_val 
								Core[OutputName..".AlarmClass"]=al_type_val
								break
							end--if 	tmp_var==al_type or tmp_var==al_type_val
					--
				  		end --al_type, al_type_val in pairs(event)
			end --AlarmClass

		
	--Signals[InputName]["AlarmMsg"]=Core[OutputName..".AlarmMsg"]

-- текст тревожного сообщения
			if not Signals[InputName]["AlarmMsg"] or 	string.len(Signals[InputName]["AlarmMsg"])==0 --если не задано в луа
			then 
				local tmp_var=Core[OutputName..".AlarmMsg"] -- считаем из системы
				if not tmp_var or string.len(tmp_var)==0--если и там пусто
					then 
						Signals[InputName]["AlarmMsg"]="Произошло событие:".. tostring(OutputName) -- присвоим по умолчанию имя тэга
						Core[OutputName..".AlarmMsg"]=Signals[InputName]["AlarmMsg"] -- и отправим в систему
					else 
						Signals[InputName]["AlarmMsg"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else 
				
				 Core[OutputName..".AlarmMsg"]=Signals[InputName]["AlarmMsg"] --  отправим в систему
			 end --Txt_0

--Tag="Q1_ON", ="Выключатель Q1", Value="", OldValue="", Txt_1 =" включен", Txt_0=" отключен", InvFlag=false, AlarmClass=101, AlarmMsg="AlarmA_1!", reliabilityFlag="",repaireFlag=true, Type=0, relatedTag="Q1_OFF",},

		--Core["TST"]=inputValue
        
	end --Signals[InputName]




--Core.addLogMsg(OutputName)

end --of Init_Data

--.......добавление событий о недостоверности сигнала со входа ПЛК


function Sonet_DI_Processing.add_DR_msg(ModuleStat) -- добавление событий о недостоверности сигнала со входа ПЛК
	local DR_Value=Core[ModuleStat[2]] -- достоверно/недостоверно
	local timestamp=os.time(); -- метка времени
    local AlarmMsg -- ссобщение в строку
	local e_type -- появление/исчезновение
	if DR_Value==true then e_type=1 else e_type=0 end -- если достоверно,
	for Module, ChNum in pairs(RawDI) --проидемся списку модулей 
			do 
				if Module==ModuleStat[1] -- если номер модуля соответствует неисправному - выведем сообщения для всех каналов
				then 
							for _, Ch in pairs(ChNum) -- пройдемся по каналам
							do
									DI_Channel=PLC_Name..ModuleStat[1].."."..Ch -- сформируем полное имя канала
									AlarmMsg=ObjDesc..Signals[DI_Channel].Comment..Signals[DI_Channel].Txt_1..". ЗНАЧЕНИЕ НЕДОСТОВЕРНО"-- сформируем текст сообщения
									--tmp_txt=ObjID..PLC_Name..Signals[DI_Channel]["Tag"]["reliabilityFlag"]
									Core.addLogMsg(AlarmMsg.. " " ..  tostring(DR_Value))
 									Core.addEvent(AlarmMsg, event.dr, e_type, ObjID..Signals[DI_Channel].Tag, timestamp, ScreenID)
									Signals[DI_Channel].reliabilityFlag=not DR_Value -- установим флаг недостоверности сигнала
									Core[ObjID..Signals[DI_Channel].Tag..".reliabilityFlag"]=not DR_Value 

							end --_, Ch
				end --if
			end --for Module, ChNum 
end


function Sonet_DI_Processing.SetRepaireMode(Signal)-- функция включения\отключения ремонтного режима
	local DI_Channel=ObjID..Signal[1]
	local InputName=Signal[1]
	local repaireFlagValue=Core[Signal[2]]
	if repaireFlagValue~=Signals[InputName]["repaireFlag"] --если значение флага в системе и в таблице не совпадают
	then
		Signals[InputName]["repaireFlag"]=repaireFlagValue
		--if Signals[InputName]["repaireFlag"]~=Signals[InputName]["oldrepaireFlag"]
			--then 
				--Signals[InputName]["oldrepaireFlag"]=Signals[InputName]["repaireFlag"]-- сохраним флажок
				if Signals[InputName]["repaireFlag"]==true 
					then
						e_type=1 --событие появилось
						Signals[InputName]["reliabilityFlag"]=false-- сделаем параметр недостоверным
					else
						e_type=0 --событие исчезло
						Signals[InputName]["reliabilityFlag"]=true-- сделаем параметр достоверным
				 end --if Signals[InputName]["repaireFlag"]==true 

				Core.addEvent("Значение параметра '".. ObjDesc.." " ..Signals[InputName]["Comment"]..Signals[InputName]["Txt_1"] .."' (тэг '"..ObjID..Signals[InputName]["Tag"].. "') недостоверно. Оборудование выведено в ремонт", event.dr, e_type, ObjID..Signals[InputName].Tag, timestamp, ScreenID )
				Core.addLogMsg("Значение параметра '".. ObjDesc.." " ..Signals[InputName]["Comment"]..Signals[InputName]["Txt_1"] .."' (тэг '"..ObjID..Signals[InputName]["Tag"].. "') недостоверно. Оборудование выведено в ремонт_"..e_type)	
			--end --if Signals[InputName]["repaireFlag"]~=Signals[InputName]["oldrepaireFlag"]
	end --if repaireFlagValue~=Signals[InputName]["repaireFlag"]
	if repaireFlagValue == false then Process_DI_Data({DI_Channel,os.time(), 1})end --если признак ремонта исчез - вызов функции отслеживания значения сигнала
end --local function SetRepaireMode

return Sonet_DI_Processing

-- ///////////////////////конец блока функций////////////////////