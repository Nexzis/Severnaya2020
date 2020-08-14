local Logs=true --вести логи событий

local ScreenID="S_KTP_" -- идентификатор мнемосхемы технологического объекта
local USO_ID="USO1_" -- идентификатор технологического объекта
local ObjID="GSP_SEV_KSSEV_E_"..USO_ID -- идентификатор технологического объекта
local PLC_Name="A1_" -- название контроллера в УСО
local ObjDesc= "УСО 1. "--описание источника сигналов
local User=ObjDesc.."ПЛК "..string.gsub(PLC_Name,"_"," ").. "(система)"

-- //Загрузка конфигурации из файлов
--........................................................
--local RawDI=require("./PLC_config/".. string.gsub(USO_ID,"_","").."/"..string.gsub(PLC_Name,"_","").."/".. "DI_map") --считываем конфигурацию дискретных входов ПЛК
local DI_Signals=require("./PLC_config/".. string.gsub(USO_ID,"_","").."/"..string.gsub(PLC_Name,"_","").."/".. "DI_data") --считываем базу дискретных тегов и их свойств
local event =require("./_events_desc"); -- считаем описание классов аварийных сообщений
local noValid =require("./_reliabilityField"); -- считаем описание битового поля недостоверности сигнала



local Module=3 --номер модуля с тестовым сигналом
local Channel=2 --номер канала модуля с тестовым сигналом

local rt=1000 -- величина дребезга в мс
local count = 0; --счетчик импульсов
local oldValue = false;
local newValue = oldValue;
local oldTime = os.clock()
local newTime = oldTime;

local InputVar= PLC_Name..Module..".i"..Channel
--local Signal="GSP_SEV_KSSEV_E_USO1_Q1_OFF.Value"
local Signal=ObjID..USO_ID..DI_Signals[InputVar].Tag..".Value"
Core.addLogMsg(Signal)
	 rt=rt/1000 -- переведем мс в с


local function Process_DI_Data(Signal) -- обработка входных дискретов
		-- переменные
		local points=2 -- количество дополнительных точек для проверки
		local timestamp=Signal[3] -- время фиксации сигнала (передний фронт)--найдем в таблице соответствующий выходной тэг, проверив его наличие
		local OutputName --имя выходного тега 
		local VarName=Signal[1]--
		local ModuleNum=Signal[2]	
		local InputName=string.gsub(Signal[1], USO_ID, "")
		local e_type -- тип события (появление/исчезновение)
	--	local user="USER_:)"			
				if DI_Signals[InputName]==nil then -- если сигнал в таблице не описан
						Core.addLogMsg(" Опрос "..InputName..". Для данного DI входа отсутствует описание в таблице DI_Signals") -- отправим сообщение об ошибке в логи
						return -- завершить работу функции Process_DI_Data
				else
				  	    OutputName=ObjID..DI_Signals[InputName]["Tag"] --имя выходного тега присвоим
						if DI_Signals[InputName]["repaireFlag"]== true -- и проверим на нахождение в ремонте (запрет опроса)
						then
						  if Logs -- если логи включены
							then	
							 	Core.addLogMsg("Опрос тэга"..ObjID..DI_Signals[InputName]["Tag"].." отключен из-за вывода оборудования в ремонт(канал ".. InputName.. ").") -- отправим сообщение в логи	 
					   		end
						  return -- прекращаем работу функции Process_DI_Data
						end
				end --DI_Signals[InputName]["Tag"]
			-- проверка на дребезг
				if  bounce_check==true 
				then --если включена проверка на дребезг
--[[	старая версия алгоритма			
					local InDI={} -- массив данных со входа 
					local bounce_flag=false -- признак дребезга контактов
					local step=g_pulse_duration/points --шаг проверки длительности импульса (/2 значит по трём точкам)
					-- цикл контрольного опроса входа
							for i=1, points+1 do  
								InDI[i]=Core[USO_ID..InputName] -- опрашиваем вход
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
						Core[USO_ID..InputName]=InDI[1] -- возвращаем на вход первоначальное значение
					 end --if
--]] 		  		
					local result, value, utc, flags = Core.getSignal(VarName)--получим метаданные о сигнале
					if oldTimes[InputName]==nil --если сигнал изменился впервые
					then 
						Core.addLogMsg("Не существует oldTimes["..InputName.."]") 
						oldTimes[InputName]=utc--сохраним время изменения сигнала в буфере
						OutDI=Core[USO_ID..InputName] -- присвоим выходное значение сигналу

					else 
						local pusle_long=utc-oldTimes[InputName] -- длина импулься сигнала
						if pusle_long>=g_pulse_duration then
							Core.addLogMsg("oldTimes["..InputName.."]="..tostring(oldTimes[InputName])) 
							OutDI=Core[USO_ID..InputName] --  присваиваем 
						else 
							Core.addLogMsg("Дребезг детектед!")
						end--	if pusle_long>=g_pulse_duration	
						oldTimes[InputName]=utc--сохраним время изменения сигнала в буфере
						
					end

				else -- bounce_check==true 
					OutDI=Core[USO_ID..InputName] -- если проверка дребезга отключена - присваиваем напрямую


					

 		 	     end --if  bounce_check
			-- проверка на дребезг конец
			if OutDI==oldsignals[InputName]--если сигнал не менял значение
			then
					return -- прекращаем работу функции Process_DI_Data
			end
			Core[OutputName..".Value"]=OutDI -- присваеваем значение глобальной переменной
			DI_Signals[InputName]["Value"]=OutDI  -- и заносим в таблицу
	
		-- ....проверка на связку с другим сигналом
		--.... в перспективе !!
		--.... проверка на связку с другим сигналом конец
	
 		--////// Формирование сообщения в журнал событий
		-- проверка изменения сигнала
				if OutDI~=oldsignals[InputName] -- строка будет формироваться, если полученное и предыдущее значения сигнала не совпадают
				then	
						--определяем тип события
							local e_type
							if DI_Signals[InputName]["Value"]==true  -- тип события 1-возникновение, 0 - исчезновение
							then
									if DI_Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
									then 
										e_type=1
									else	--сигнал инвертированный,
										e_type=0
									end
							else
									if DI_Signals[InputName]["InvFlag"]==false --сигнал неинвертированный,
									then 
										e_type=0
									else	--сигнал инвертированный,
										e_type=1
									end
							end --тип события
							--если это событие						
							-- ОБРАБОТКА ПОЯВЛЕНИЯ СОБЫТИЙ
							--
						if DI_Signals[InputName]["AlarmClass"]~=event.disabled  -- если включены сообщения для сигнала
						then
								local EventMsg=ObjDesc -- текст сообщения
								if DI_Signals[InputName]["AlarmClass"]==event.s or DI_Signals[InputName]["AlarmClass"]==event.c -- если событие или команда, то формируем строку сообщения из описания сигнала и его состоянияы
								then
									EventMsg=EventMsg..DI_Signals[InputName]["Comment"]	-- описания сигнала
									if OutDI==true -- если сигнал принял значение "1"
									then
											if DI_Signals[InputName]["InvFlag"]==false -- выбираем текст в зависимости от инверсии сигнала,
											then 
													EventMsg=EventMsg.." "..DI_Signals[InputName]["Txt_1"]--если инверсии нет - то для true значения сигнала присвоим текст состояния "1"
											else
													EventMsg=EventMsg.." "..DI_Signals[InputName]["Txt_0"] -- если есть - то для "0"
											end--DI_Signals[InputName]["InvFlag"]==false
									 else -- если сигнал принял значение "0"	
											if DI_Signals[InputName]["InvFlag"]==false-- выбираем текст в зависимости от инверсии сигнала,
											then 
														EventMsg=EventMsg.." "..DI_Signals[InputName]["Txt_0"] --если инверсии нет - то для false значения сигнала присвоим текст состояния "0"
											else
														EventMsg=EventMsg.." "..DI_Signals[InputName]["Txt_1"]-- если есть - то для "1"
											end	--	DI_Signals[InputName]["InvFlag"]==false
								 	end	--if OutDI==true
								 else -- если авария или предупреждение
										EventMsg=EventMsg..DI_Signals[InputName]["Comment"]..". "..DI_Signals[InputName]["AlarmMsg"] -- добавим текст 

								 end	-- DI_Signals[InputName]["AlarmClass"]==event.s 
								if  DI_Signals[InputName]["reliabilityFlag"] == false then EventMsg="ЗНАЧЕНИЕ НЕДОСТОВЕРНО. "..EventMsg end -- ЕСЛИ недостоверно - отметим и это
								-- создадим сообщение в логах
								  if Logs -- если логи включены
									then 
										Core.addLogMsg(EventMsg.." "..DI_Signals[InputName]["AlarmClass"].." "..ObjID..DI_Signals[InputName]["Tag"].." "..timestamp.."_"..e_type.." "..ScreenID.." "..User)
									end --	if Logs
								-- создадим сообщение в стоке событий
								Core.addEvent(EventMsg, DI_Signals[InputName]["AlarmClass"], e_type ,DI_Signals[InputName]["Source"], User, ObjID..DI_Signals[InputName]["Tag"], timestamp, ScreenID )
						 end --DI_Signals[InputName]["AlarmClass"]~=0
				end --if OutDI~=oldsignals[InputName]	
			--////// Формирование сообщения в журнал событий конец
	   		oldsignals[InputName]=OutDI -- заменяем значение переменной в буфере предыдущего значения	 	
end --of Process_DI_Data(Signal) 





while true do
	
	newValue = Core.GInput1;

	if newValue ~= oldValue then
		local result, value, utc, flags = Core.getSignal("GInput1")
		newTime=utc
		if count ==0 then oldTime = newTime	end
		Core.addLogMsg(tostring(result) .. " ".. tostring(value) .. " ".. tostring(utc) .. " ".. tostring(flags) )
	--	DT[count] = os.clock();
		oldValue = newValue
	
		count = count + 1



		--Core.addLogMsg(count .. ". ".. Signal .. '='.. tostring(newValue) ..' newTime= ' .. newTime ..' oldTime= ' .. oldTime )

	if count <2 then oldTime = newTime	end
	Core.addLogMsg(count .. ". ".. Signal .. '='.. tostring(newValue) ..' newTime= ' .. newTime ..' OLDTime= ' .. oldTime )
	end
		if count==2 then 		
		local delta=os.difftime (newTime, oldTime)
			Core.addLogMsg('Different='.. tostring(delta))

			Process_DI_Data(InputVar,Module,newtime)
			count=0
			if delta>=rt then	-- если длительность импульса больше величины дребезга
				Core[Signal]=newValue --изменим сигнал




			else Core.addLogMsg("Дребезг детектед!")
			end--if delta>=rt 
		end

	os.sleep(0);
end
--"GSP_SEV_KSSEV_E_USO1_Q1_OFF.Value"