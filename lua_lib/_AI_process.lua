--библиотека функций обработки поступающих в Сонет аналоговых сигналов. Версия от 13-12-18
-- 13-12-18 добавлен коэффициент трансформации
-- 20-11-18 переработана логика определения границ 
-- 19-11-18 добавлен обработчик флагов включения алармов
-- 10-11-18 из обработчика убрано генерирование тревог по граничным значениям при обрыве датчиков


local AI_Data={}

--!!! функция добавления тревожных событий для аналового сигнала
function AI_Data.Add_Alarm(Signal)
		local result=0 --результат выполнения функции. 0: успешно; -1: некорректно; -2 : аварийно
		local timestamp=os.time(); -- время фиксации сигнала (передний фронт)--найдем в таблице соответствующий выходной тэг, проверив его наличие		
		local AlarmMsg= -- таблица аварийных сообщений
		{
			--["SC_Txt"]= "Короткое замыкание измерительного канала '" .. g_ObjDesc..g_AI_Signals[Signal[1]].Comment.."'",
			["HH_Txt"]= "Верхний аварийный уровень: '".. g_ObjDesc..g_AI_Signals[Signal[1]].Comment.."' ("..g_AI_Signals[Signal[1]].HH ..")",
			["HL_Txt"]= "Верхний предупредительный уровень: '".. g_ObjDesc..g_AI_Signals[Signal[1]].Comment.."' ("..g_AI_Signals[Signal[1]].HL ..")",
			["LH_Txt"]= "Нижний предупредительный уровень: '".. g_ObjDesc..g_AI_Signals[Signal[1]].Comment.."' ("..g_AI_Signals[Signal[1]].LH ..")",
			["LL_Txt"]= "Нижний аварийный уровень: '".. g_ObjDesc..g_AI_Signals[Signal[1]].Comment.."' ("..g_AI_Signals[Signal[1]].LL ..")",
			--["BR_Txt"]= "Обрыв измерительного канала '" .. g_ObjDesc..g_AI_Signals[Signal[1]].Comment.."'",
		}
			local AlarmClass-- класс тревоги
			local AlarmString -- выводимый пользователю текст
			local AlarmTxt=	Signal[2].."_Txt" -- описание тревоги
			local Ch =Signal[1] -- измерительный канал
			local AlarmType =Signal[2] -- тип тревоги
			local AlarmIsEnabled=Signal[3] -- активность аларма
			local reliabilityTXT -- текст о недостоверности
		--	if g_CurrentAiAlarms[AlarmType][Ch]==true -- если авария уже зарегистрирована
			--	then 
				--	Core.addLogMsg("ТРЕВОГА УЖЕ ЗАРЕГИСТРИРОВАНА :".. AlarmTxt.. " " .. AlarmMsg[AlarmTxt])
				--	result=-1
			--		return result-- прервем выполнение функции
			--else
				-- НАЙДЕМ ПРЕДЫДУЩУЮ ТРЕВОГУ	
				for AlarmTypes, _  in pairs(g_CurrentAiAlarms) -- в таблице действующих тревог
				do	
					 AlarmString= AlarmMsg[tostring(AlarmTypes.."_Txt")]
					if g_CurrentAiAlarms[AlarmTypes][Ch]~=nil -- просматриваем все существующие значения
					then
						if AlarmTypes~=AlarmType -- просматриваем все значения, отличные от переданного в функцию
						then	
							if g_CurrentAiAlarms[AlarmTypes][Ch]==true -- ищем ранее активированную тревогу
							then
								g_CurrentAiAlarms[AlarmTypes][Ch]=false -- сбрасываем 
								--if AlarmTypes=="BR" or AlarmTypes=="SC" or AlarmTypes=="LL" or AlarmTypes=="HH" --выбираем класс тревоги в зависимости от предела
								if AlarmTypes=="LL" or AlarmTypes=="HH" --выбираем класс тревоги в зависимости от предела
									then
										AlarmClass=event.a
								elseif AlarmTypes=="LH" or AlarmTypes=="HL" 
									then
										AlarmClass=event.w
								--elseif  g_AI_Signals[Ch]["reliabilityFlag"]==false --при недостоверном сигнале
								--	then
							--		AlarmClass=event.dr	
								else  AlarmClass=event.disabled
								end --AlarmTypes=="LL" or 
								
								      if g_Logs -- если логи включены											
											then
												Core.addLogMsg("Исчезновение: ".. AlarmString.." Класс " ..AlarmClass..")" .." (значение НЕДОСТОВЕРНО)".." "..g_User)  -- делаем запись в лог
											end --						  if g_Logs -- если логи включены	
										--Core.addEvent(AlarmString.." (значение НЕДОСТОВЕРНО)", event.dr,0, g_AI_Signals[Ch]["Source"], g_User, g_ObjID..g_AI_Signals[Ch].Tag, timestamp, g_ScreenID) --делаем запись в строку сообщений
									--else
											--  if g_Logs -- если логи включены											
											 -- then
										--			Core.addLogMsg("Исчезновение: ".. AlarmString.." Класс " ..AlarmClass..")".." "..g_User)  -- делаем запись в лог
									--		  end --						  if g_Logs -- если логи включены	
										--	if AlarmIsEnabled==true --если тревога активна
											--then
									Core.addEvent(AlarmString, AlarmClass,0 , g_AI_Signals[Ch]["Source"], g_User,g_ObjID..g_AI_Signals[Ch].Tag, timestamp, g_ScreenID) --делаем запись в строку сообщений
										--	end--AlarmIsEnabled==true
									--end --g_AI_Signals[Ch]["reliabilityFlag"] == false 
								
							end --g_CurrentAiAlarms[AlarmTypes][Ch]==true
						end --AlarmTypes~=AlarmType
					end --g_CurrentAiAlarms[AlarmTypes][Ch]~=nil 
				end --_,  AlarmTypes		
			-- добавление новой тревоги

				if AlarmType=="LL" or AlarmType=="HH" --выбираем класс тревоги
					then
						AlarmClass=event.a
				elseif AlarmType=="LH" or AlarmType=="HL" 
					 then
						AlarmClass=event.w
				--elseif  g_AI_Signals[Ch]["reliabilityFlag"]==false --при недостоверном сигнале
				--	then
					--	AlarmClass=event.dr			
				else  AlarmClass=event.disabled
				end --AlarmType=="LH" or 
				
				if AlarmClass~=event.disabled --сделаем записи, если сообщение не отключено
				then
					AlarmString= AlarmMsg[tostring(AlarmType.."_Txt")]
					--if  g_AI_Signals[Ch]["reliabilityFlag"] == false -- если вдруг значение недостоверно - добавим текста
					--then 
					--	AlarmString=AlarmMsg[tostring(AlarmType.."_Txt")] .." (значение НЕДОСТОВЕРНО)"
					--end --g_AI_Signals[Ch]["reliabilityFlag"] == false 
					g_CurrentAiAlarms[AlarmType][Ch]=true -- сохраняем тревогу в буфер
  					if g_Logs -- если логи включены	
						then						
						--	Core.addLogMsg("Возникновение: "..AlarmString.." (Класс " ..AlarmClass..")" .." "..g_User)-- делаем запись в лог
					end --	if g_Logs 
					--if  g_AI_Signals[Ch]["reliabilityFlag"] == false then-- если вдруг значение недостоверно - покрасим в фиолэтовый
				--		Core.addEvent(AlarmString, event.dr,1, g_AI_Signals[Ch]["Source"], g_User, g_ObjID..g_AI_Signals[Ch].Tag, timestamp, g_ScreenID) --делаем запись в строку сообщений в фиолетовом колоре
				--	else
						if AlarmIsEnabled==true --если тревога активна
						then
						Core.addLogMsg("Возникновение: "..AlarmString.." (Класс " ..AlarmClass..") ".. g_AI_Signals[Ch]["Source"] .." "..g_User.. " "..g_ObjID..g_AI_Signals[Ch].Tag)-- делаем запись в лог
						--	Core.addEvent(AlarmString, AlarmClass,1, g_AI_Signals[Ch]["Source"], g_User, g_ObjID..g_AI_Signals[Ch].Tag, timestamp, g_ScreenID) --делаем запись в строку сообщений в колоре по ситуации
							Core.addEvent(AlarmString, AlarmClass,1, g_AI_Signals[Ch]["Source"], g_User, g_ObjID..g_AI_Signals[Ch].Tag, timestamp, g_ScreenID) --делаем запись в строку сообщений в колоре по ситуации
						
						end--if AlarmIsEnabled==true 
					--end--if  g_AI_Signals[Ch]["reliabilityFlag"] == false
				end --AlarmClass~=event.disabled
			--end--g_CurrentAiAlarms[Signal[2]][Signal[1]]==true
		--if g_AI_Signals[Signal[1]].reliabilityFlag==false
		return result
end --function AI_Data.Add_Alarm(Signal)




function AI_Data.Init(Signal) --функция инициализации AI входа контроллера
-- переменные
	--local lborder_ph=3.8 --нижняя физическая граница диапазона
--	local lborder=-9999 --нижняя логическая граница диапазона
--	local hborder_ph=20.5 --верхняя физическая граница диапазона
--	local hborder=9999 --верхняя логическая граница диапазона
	
	local result=0 --результат выполнения функции. 0: успешно; -1: некорректно; -2 : аварийно
	dis_border_val=0/0 --значение аварийной/предупредительной границы при отключенной тревоге	
	local OutputName --имя выходного тега
	local inputValue--значение входного тега
	--local OutputValue--  значение выходного тега
	local reliabilityFlag --значение флага достоверности
	local InputName=string.gsub(Signal, g_ObjID, "") -- название необработанного сигнала со входа ПЛК игнорируя название усо
	--Core.addLogMsg(InputName)
	if g_AI_Signals[InputName]==nil then -- если сигнал в таблице не описан
		Core.addLogMsg("Опрос "..InputName..". Для данного AI входа отсутствует описание в таблице g_AI_Signals") -- отправим сообщение об ошибке в логи
			result=-2
			return result-- завершить работу функции g_AI_lib.Process
	else
		inputValue=tonumber(Core[g_USO_ID..InputName]) --получим значение входа ПЛК
		inputValueStatus=tonumber(Core[g_USO_ID..InputName.."_status"]) --получим значение состояния входа ПЛК
	--	Core.addLogMsg("inputValue="..tostring(inputValue).." "..g_USO_ID..InputName)
		OutputName=g_ObjID..g_AI_Signals[InputName]["Tag"] --имя выходного тега присвоим
		OutputTag=OutputName..".Value" -- сформируем имя тэга (поле с текущим значением)
		Core[OutputName..".in_status"]=inputValueStatus -- передадим значение статуса входа ПЛК 
--		Core.addLogMsg(OutputName..".in_status="..tostring(inputValueStatus))
--доб. 13-12-18
				local Ktr=Core[OutputName..".Ktr"]--значение коэффициента трансформации
				Core.addLogMsg(OutputName.."="..tostring(Ktr))
				if Ktr==nil or Ktr<1 --если коэффициент трансформации не задан 
				then 
					--Ktr=1 -- назначим 1
					g_AI_Signals[InputName]["Ktr"]=1
					Core[OutputName..".Ktr"]=1
				
				else
					g_AI_Signals[InputName]["Ktr"]=Ktr
					--Core[OutputName..".Ktr"]=Ktr
				end  --f Кtr==nil
--//-----------доб. 13-12-18


		--Core.addLogMsg(OutputTag)
		--if inputValue<=lborder_ph --входное значение меньше нижней физической границы диапазона
		--then 	
				--Core.addLogMsg(g_AI_Signals[InputName]["Tag"]..  " вход ниже "..lborder_ph )
			--Core[OutputTag]=lborder
			
		--elseif inputValue>=hborder_ph--входное значение больше верхней физической границы диапазона
		--then
			--Core[OutputTag]=hborder
			--Core.addLogMsg( g_AI_Signals[InputName]["Tag"].. " вход выше "..hborder_ph )
		--else	
			Core[OutputTag]=inputValue*g_AI_Signals[InputName]["Ktr"] -- передадим значение входа ПЛК тэгу с учетом коэф. трансформации -изм.13-12-18
		--end--if inputValue<=lborder_ph --входное значение меньше нижней физической границы диапазона
		-- иницализуем таблицу действующих для параметра тревог
		--		for AlarmTypes, _  in pairs(g_CurrentAiAlarms) -- в таблице действующих тревог
			--	do	
			--		if g_CurrentAiAlarms[AlarmTypes][InputName]==nil -- если не описана
			--		then
			--			g_CurrentAiAlarms[AlarmTypes][InputName]=false -- считаем, что тревоги нет
			--		end -- g_CurrentAiAlarms[AlarmTypes][InputName]==nil
		--		end --_,  AlarmTypes	
			--//синхронизация таблиц свойств сигналов (приоритет у ЛУА)
			-- описание параметра
			if  not g_AI_Signals[InputName]["Comment"] or string.len(g_AI_Signals[InputName]["Comment"])==0  --если не задано в луа
			then 
				local tmp_var=g_ObjDesc..Core[OutputName..".Comment"] -- считаем из системы
				if  not tmp_var or string.len(tmp_var)==0 --==nil  --если и там пусто
					then 
						g_AI_Signals[InputName]["Comment"]="Описание переменной ".. tostring(OutputName) -- присвоим по умолчанию имя тэга
						Core[OutputName..".Comment"]=g_AI_Signals[InputName]["Comment"] -- и отправим в систему
					else
						g_AI_Signals[InputName]["Comment"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			else 
				Core[OutputName..".Comment"]=g_ObjDesc..g_AI_Signals[InputName]["Comment"] -- и отправим описание в систему
			end --Comment


		-- текстовый источник сигнала
			if not g_AI_Signals[InputName]["Source"] or 	string.len(g_AI_Signals[InputName]["Source"])==0 --если не задано в луа
			then 
				local tmp_var=Core[OutputName..".Source"] -- считаем из системы
				if not tmp_var or string.len(tmp_var)==0--если и там пусто
					then 
						g_AI_Signals[InputName]["Source"]="Источник сигнала"  -- присвоим по умолчанию текст
						Core[OutputName..".Source"]=g_DI_Signals[InputName]["Source"] -- и отправим в систему
					else 
						g_AI_Signals[InputName]["Source"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else 
		    		Core[OutputName..".Source"]=g_AI_Signals[InputName]["Source"] --  отправим в систему
			 end --Source


        -- значение флага создания сообщений и событии (аварии)ОТКЛЮЧЕНО В СВЯЗИ С ФОРМИРОВАНИЕМ СООБЩЕНИЯ АВТОМАТИЧЕСКИ В ФУНКЦИИ   AI_Data.Add_Alarm(Signal), ОСТАВЛЕНО ДЛЯ ВАРИАЦИИ
		--	if not g_AI_Signals[InputName]["AlarmClass"] or string.len(g_AI_Signals[InputName]["AlarmClass"])==0 --если не задано в луа
		--	then 
		--			local tmp_var=Core[OutputName..".AlarmClass"] -- считаем из системы
		--			if  not tmp_var or string.len(tmp_var)==0  --если и там пусто
		--			then 
		--				g_AI_Signals[InputName]["AlarmClass"]=g_event.disabled -- присвоим по умолчанию значение не создавать сообщения
		--				Core[OutputName..".AlarmClass"]=g_AI_Signals[InputName]["AlarmClass"] -- и отправим в систему
		--			--else --если что-то в значении есть...
				--			
		--			end --tmp_var
		--	else --если в таблице не пусто
		--			local tmp_var=g_AI_Signals[InputName]["AlarmClass"] -- считаем из таблицы
		--			local found_in_events=false -- флаг нахождения типа события в описании
		--						--Core.addLogMsg(tostring(g_DI_Signals[InputName]["AlarmClass"]))
		--				for al_type, al_type_val in pairs(g_event) --проверка класса аларма по таблице g_event
		--				do 
		--					if 	tmp_var==al_type or tmp_var==al_type_val --если тип описан в таблице, то присвоим
		--					then 
		--						--Core.addLogMsg(tostring(g_DI_Signals[InputName]["Tag"]).." "..tostring(al_type).. " "..tostring(al_type_val))
		--						g_AI_Signals[InputName]["AlarmClass"]=al_type_val 
		--						Core[OutputName..".AlarmClass"]=al_type_val
		--						found_in_events=true -- найдено
		--						break
	--		  				end--if 	tmp_var==al_type or tmp_var==al_type_val
		--				end --al_type, al_type_val in pairs(g_event)
			--			if found_in_events==false -- если событие в таблице не описано
			--			then
			--					g_AI_Signals[InputName]["AlarmClass"]=g_event.disabled  --отключим
			--					Core[OutputName..".AlarmClass"]=g_event.disabled
			--			end--found_in_events==false
			--end --AlarmClass	
	end --g_AI_Signals[InputName]
-- текст тревожного сообщения - ОТКЛЮЧЕНО В СВЯЗИ С ФОРМИРОВАНИЕМ СООБЩЕНИЯ АВТОМАТИЧЕСКИ В ФУНКЦИИ   AI_Data.Add_Alarm(Signal), ОСТАВЛЕНО ДЛЯ ВАРИАЦИИ
--			if not g_AI_Signals[InputName]["AlarmMsg"] or string.len(g_AI_Signals[InputName]["AlarmMsg"])==0 --если не задано в луа
	--		then 
		--		local tmp_var=Core[OutputName..".AlarmMsg"] -- считаем из системы
			--	if not tmp_var or string.len(tmp_var)==0--если и там пусто
				--	then 
					--	g_AI_Signals[InputName]["AlarmMsg"]=g_ObjDesc.."Тревожное сообщение величины: ".. tostring(OutputName) -- присвоим по умолчанию имя тэга
					--	Core[OutputName..".AlarmMsg"]=g_AI_Signals[InputName]["AlarmMsg"] -- и отправим в систему
					--else 
					--	g_AI_Signals[InputName]["AlarmMsg"]=tmp_var -- иначе присвоим значение из системы
					--end --tmp_var
			-- else 
				--	 Core[OutputName..".AlarmMsg"]=g_ObjDesc..g_AI_Signals[InputName]["AlarmMsg"] --  отправим в систему
			 --end --g_AI_Signals[InputName]["AlarmMsg"]
	-- значение флага запрета опроса сигнала (вывода в ремонт) 
			if not g_AI_Signals[InputName]["repaireFlag"] or string.len(tostring(g_AI_Signals[InputName]["repaireFlag"]))==0--если не задано в луа
			then 
				local tmp_var=Core[OutputName..".repaireFlag"] -- считаем из системы
				if  not tmp_var or string.len(tostring(tmp_var))==0--если и там пусто
					then 
						g_AI_Signals[InputName]["repaireFlag"]=false-- присвоим по умолчанию значение "ложь"
						Core[OutputName..".repaireFlag"]=g_AI_Signals[InputName]["repaireFlag"] -- и отправим в систему
					else 
						g_AI_Signals[InputName]["repaireFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else
				Core[OutputName..".repaireFlag"]=g_AI_Signals[InputName]["repaireFlag"] -- отправим в систему
			 end --repaireFlag
			 
			 --границы и активность алармов -- считаем из системы
			 g_AI_Signals[InputName]["LL_check"] =Core[OutputName..".LL_en"] 
			 g_AI_Signals[InputName]["LH_check"] =Core[OutputName..".LH_en"] 
			 g_AI_Signals[InputName]["HL_check"] =Core[OutputName..".HL_en"]
			 g_AI_Signals[InputName]["HH_check"] =Core[OutputName..".HH_en"] 
			 g_AI_Signals[InputName]["LL"] =Core[OutputName..".LL"] 
			 g_AI_Signals[InputName]["LH"] =Core[OutputName..".LH"] 
			 g_AI_Signals[InputName]["HL"] =Core[OutputName..".HL"]
			 g_AI_Signals[InputName]["HH"] =Core[OutputName..".HH"] 			 
	--[[	исключено 19-11-18
	-- значение границы нижнего аварийного значения
		if g_AI_Signals[InputName]["LL_check"] ==true
			then 
				if not g_AI_Signals[InputName]["LL"] or string.len(tostring(g_AI_Signals[InputName]["LL"]))==0--если не задано в луа
				then
					local tmp_var=Core[OutputName..".LL"] -- считаем из системы	
					if  not tmp_var or tmp_var==nil --если и там пусто
					then
						Core[OutputName..".LL"]=dis_border_val	
						 g_AI_Signals[InputName]["LL"]=dis_border_val	
						 g_AI_Signals[InputName]["LL_check"]=false
					else
						 g_AI_Signals[InputName]["LL"]=tmp_var	
					end --not tmp_var
				else 
						Core[OutputName..".LL"]=g_AI_Signals[InputName]["LL"]	
				end	--not g_AI_Signals			
			else
					
					
					Core[OutputName..".LL"]=dis_border_val	
			end-- g_AI_Signals[InputName]["LL_check"] ==true

-- значение границы нижнего предупредительного значения
			
			if g_AI_Signals[InputName]["LH_check"] ==true
			then 
				if not g_AI_Signals[InputName]["LH"] or string.len(tostring(g_AI_Signals[InputName]["LH"]))==0--если не задано в луа
				then
					local tmp_var=Core[OutputName..".LH"] -- считаем из системы	
					if  not tmp_var or tmp_var==0--если и там пусто
					then
						Core[OutputName..".LH"]=dis_border_val	
						 g_AI_Signals[InputName]["LH"]=dis_border_val	
						 g_AI_Signals[InputName]["LH_check"]=false
					else
						 g_AI_Signals[InputName]["LH"]=tmp_var	
					end --not tmp_var
				else 
						Core[OutputName..".LH"]=g_AI_Signals[InputName]["LH"]	
				end	--not g_AI_Signals			
			else
					Core[OutputName..".LH"]=dis_border_val	
			end-- g_AI_Signals[InputName]["LH_check"] ==true
-- значение границы верхнего предупредительного значения	
			if g_AI_Signals[InputName]["HL_check"] ==true
			then 
				if not g_AI_Signals[InputName]["HL"] or string.len(tostring(g_AI_Signals[InputName]["HL"]))==0--если не задано в луа
				then
					local tmp_var=Core[OutputName..".HL"] -- считаем из системы	
					if  not tmp_var or tmp_var==0--если и там пусто
					then
						Core[OutputName..".HL"]=dis_border_val	
						 g_AI_Signals[InputName]["HL"]=dis_border_val	
						 g_AI_Signals[InputName]["HL_check"]=false
					else
						 g_AI_Signals[InputName]["HL"]=tmp_var	
					end --not tmp_var
				else 
						Core[OutputName..".HL"]=g_AI_Signals[InputName]["HL"]	
				end	--not g_AI_Signals			
			else
					Core[OutputName..".HL"]=dis_border_val	
			end-- g_AI_Signals[InputName]["HL_check"] ==true
	-- значение границы верхнего аварийного значения
			if g_AI_Signals[InputName]["HH_check"] ==true
			then 
				if not g_AI_Signals[InputName]["HH"] or string.len(tostring(g_AI_Signals[InputName]["HH"]))==0--если не задано в луа
				then
					local tmp_var=Core[OutputName..".HH"] -- считаем из системы	
					if  not tmp_var or tmp_var==0--если и там пусто
					then
						Core[OutputName..".HH"]=dis_border_val	
						 g_AI_Signals[InputName]["HH"]=dis_border_val	
						 g_AI_Signals[InputName]["HH_check"]=false
					else
						 g_AI_Signals[InputName]["HH"]=tmp_var	
					end --not tmp_var
				else 
						Core[OutputName..".HH"]=g_AI_Signals[InputName]["HH"]	
				end	--not g_AI_Signals			
			else
					Core[OutputName..".HH"]=dis_border_val	
			end-- g_AI_Signals[InputName]["HH_check"] ==true	
]]--
	-- значение флага достоверности сигнала  
		local reliabilityField=Core[OutputName..".reliabilityField"]--значение поля достоверности
		--[[	if not g_AI_Signals[InputName]["reliabilityFlag"] or string.len(tostring(g_AI_Signals[InputName]["reliabilityFlag"]))==0--если не задано в луа
			then 
				local tmp_var=Core[OutputName..".reliabilityFlag"] -- считаем из системы
				if  not tmp_var or string.len(tostring(tmp_var))==0--если и там пусто
					then 
						g_AI_Signals[InputName]["reliabilityFlag"]=true -- присвоим по умолчанию значение "ложь"
						Core[OutputName..".reliabilityFlag"]=g_AI_Signals[InputName]["reliabilityFlag"] -- и отправим в систему
					else 
						g_AI_Signals[InputName]["reliabilityFlag"]=tmp_var -- иначе присвоим значение из системы
					end --tmp_var
			 else
				Core[OutputName..".reliabilityFlag"]=g_AI_Signals[InputName]["reliabilityFlag"] -- отправим в систему
			 end --reliabilityFlag		]]--

				if reliabilityField<=4 -- - если значение поля достоверности сигнала нулевое - 
					then 	
						reliabilityFlag=true --достоверно
				else
						reliabilityFlag=false --недостоверно
				end --Core[OutputName..".reliabilityField"]==0
					g_AI_Signals[InputName]["reliabilityFlag"] =reliabilityFlag --значение в локальную таблицу
					Core[OutputName..".reliabilityFlag"]=reliabilityFlag -- отправим в систему

	return result
end --of AI_Data.Init


function AI_Data.Process(Signal) -- обработка входных аналогов
-- переменные
--	local lborder_ph=3.8 --нижняя физическая граница диапазона
--	local lborder=-9999 --нижняя логическая граница диапазона
--	local hborder_ph=20.5 --верхняя физическая граница диапазона
--	local hborder=9999 --верхняя логическая граница диапазона
		local VarNotValid=0/0 -- значение при отсутствии достоверности - присвоим значение 'nan'
		local result=0 --результат выполнения функции. 0: успешно с полным циклом; -1: некорректно; -2 : аварийно; -3  успешно досрочно
		--local OutputName --имя выходного тега 
		local VarName=Signal[1]
		--local TagName=Signal[2]

		local InputName=string.gsub(Signal[1], g_USO_ID, "")
		
		local OutputName=g_ObjID..g_AI_Signals[InputName]["Tag"]		
		--Core.addLogMsg(tostring(OutputName))
--		Core.addLogMsg("VarName="..VarName.." ModuleNum="..ModuleNum .." InputName="..InputName) -- отправим сообщение об ошибке в логи
				if g_AI_Signals[InputName]==nil then -- если сигнал в таблице не описан
						Core.addLogMsg("Опрос "..InputName..". Для данного AI входа отсутствует описание в таблице g_AI_Signals") -- отправим сообщение об ошибке в логи
						result=-2
						return result-- завершить работу функции Process_AI_Data
				else
					if g_AI_Signals[InputName]["repaireFlag"]==false	-- если сингал не выведен из опроса
					then 	
						local Values={}-- временные значения
						--local OutputName=g_ObjID..g_AI_Signals[InputName]["Tag"]
						Values[1]=Core[VarName] *g_AI_Signals[InputName]["Ktr"]-- опрашиваем вход с учетом коэффициента трансформации
						-- Values[2]=Values[1]
						--Core[OutputName..".Value"]=Values[1]--присвоим значение тегу
						if Core[OutputName..".reliabilityFlag"]==false then --если сигнал не  достоверен --изм.22.05.19
								--Core[OutputName..".OldValue"]=Values[1] --запомним последнее значение как последнее достоверное
								--Values[1]=VarNotValid --присвоим значение 'nan'
								Core[OutputName..".Value"]=VarNotValid--присвоим значение 'nan'
								Core.addLogMsg("Обрабока сигнала "..OutputName.." прекращена ввиду его недостоверности.  ".. os.time()) -- отправим сообщение об ошибке в логи
								return -3 --прекратим выполнение функции /доб 10-11-18
								
						else
								--Values[1]=Core[VarName] -- присвоим значение со входа--изм.22.05.19
								
						--end--if Core[OutputName..".reliabilityFlag"]  --изм.22.05.19
						
								--if Values[1]<=lborder_ph --входное значение меньше нижней физической границы диапазона
								--then 	
							--		Core[OutputName..".Value"]=lborder
			
							--	elseif Values[1]>=hborder_ph--входное значение больше верхней физической границы диапазона
								--then
								--Core[OutputName..".Value"]=hborder
								--else	
								Core[OutputName..".Value"]=Values[1]--*g_AI_Signals[InputName]["Ktr"] -- передадим значение входа ПЛК тэгу с учетом коэффициента трансформации - изм. 13-12-18
								Core[OutputName..".OldValue"]=Values[1] --запомним последнее значение как последнее достоверное
								--end--if inputValue<=lborder_ph --входное значение меньше нижней физической границы диапазона
						
						--Core[OutputName..".Value"]=Values[1]
	--доб. 20-11-18
				
							if Values[1]>g_AI_Signals[InputName].LH and Values[1]<g_AI_Signals[InputName].HL
							--сценарий 1 -- если значение нормальное
							then 
									g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
							elseif  g_AI_Signals[InputName].LL_check==true  and Values[1]<=g_AI_Signals[InputName].LL
							--сценарий 2-- если значение  меньше нижней аварийной границы и проверка LL включена
							then	
								g_AI_lib.Add_Alarm({InputName,"LL",g_AI_Signals[InputName].LL_check})--создать сообщение о нижней аварийной границе
							elseif  g_AI_Signals[InputName].LL_check==false and g_AI_Signals[InputName].LH_check==true and Values[1]<=g_AI_Signals[InputName].LH 
							--сценарий 3-- если значение  меньше нижней предупредительной границы , проверка LL отключена проверка LH отключена
							then	
									g_AI_lib.Add_Alarm({InputName,"LH",g_AI_Signals[InputName].LH_check})--создать сообщение о нижней предупредительной границе
							elseif  g_AI_Signals[InputName].LL_check==true and g_AI_Signals[InputName].LH_check==true and Values[1]>g_AI_Signals[InputName].LL  and Values[1]<=g_AI_Signals[InputName].LH 
							--сценарий 4-- если значение  больше нижней аварийной, меньше нижней предупредительной границы , проверка LL включена, проверка LH отключена
							then	
								g_AI_lib.Add_Alarm({InputName,"LH",g_AI_Signals[InputName].LH_check})--создать сообщение о нижней предупредительной границе
							elseif  g_AI_Signals[InputName].HL_check==true  and g_AI_Signals[InputName].HH_check==true and Values[1]>=g_AI_Signals[InputName].HL and  Values[1]<g_AI_Signals[InputName].HH
							--сценарий 5-- если значение  больше верхней предупредительной границы, ниже верхней аварийной границы, проверка HL включена, проверка HH включена
							then	
								g_AI_lib.Add_Alarm({InputName,"HL",g_AI_Signals[InputName].LH_check})--создать сообщение о верхней предупредительной  границе			
							elseif  g_AI_Signals[InputName].HH_check==false and g_AI_Signals[InputName].HL_check==true and Values[1]>=g_AI_Signals[InputName].HH 
							--сценарий 6-- если значение  больше верхней аварийной границы,  проверка HL включена, проверка HH отключена,
							then	
								g_AI_lib.Add_Alarm({InputName,"HL",g_AI_Signals[InputName].LH_check})--создать сообщение о верхней предупредительной  границе		
							elseif  g_AI_Signals[InputName].HL_check==false and g_AI_Signals[InputName].HH_check==true and Values[1]>=g_AI_Signals[InputName].HL and Values[1]<g_AI_Signals[InputName].HH
							--сценарий 7-- если значение  больше верхней предупредительной границы, меньше верхней аварийной границы, проверка HH включена, проверка HL отключена,
							then	
								g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
								--g_AI_lib.Add_Alarm({InputName,"HL",g_AI_Signals[InputName].LH_check})--создать сообщение о верхней предупредительной границе				
							elseif  g_AI_Signals[InputName].HH_check==true and Values[1]>=g_AI_Signals[InputName].HH
							--сценарий 8-- если значение  больше верхней аварийной границы,  проверка HH отключена
							then	
								g_AI_lib.Add_Alarm({InputName,"HH",g_AI_Signals[InputName].HH_check})--создать сообщение о верхней аварийной границе	
							elseif  g_AI_Signals[InputName].HL_check==false and g_AI_Signals[InputName].HH_check==false and Values[1]>=g_AI_Signals[InputName].HL 
							--сценарий 9-- если значение  больше верхней предупредительной границы,  проверка HH отключена, проверка HL отключена,
							then	
									g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
							elseif  g_AI_Signals[InputName].LL_check==false and g_AI_Signals[InputName].LH_check==false and Values[1]<=g_AI_Signals[InputName].LH
							--сценарий 10-- если значение  меньше нижней предупредительной границы,  проверка LL отключена, проверка LH отключена,
							then	
									g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
							elseif  g_AI_Signals[InputName].LL_check==true and g_AI_Signals[InputName].LH_check==false and Values[1]<=g_AI_Signals[InputName].LH  
							--сценарий 11-- если значение  меньше нижней предупредительной границы,  проверка LL отключена, проверка LH отключена,
							then	
									g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
							elseif  g_AI_Signals[InputName].LL_check==false  and Values[1]<=g_AI_Signals[InputName].LL
							--сценарий 12-- если значение  меньше нижней аварийной границы и проверка LL включена				
							then	
									g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
							elseif  g_AI_Signals[InputName].HL_check==false  and g_AI_Signals[InputName].HH_check==true and Values[1]>=g_AI_Signals[InputName].HL and  Values[1]<g_AI_Signals[InputName].HH 
							--сценарий 13-- если значение  больше верхней предупредительной границы, ниже верхней аварийной границы, проверка HL включена, проверка HH включена
							then	
									g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
							else
							--сценарий 14 -- аварийный
								return -1 
							end --	Values[1]>g_AI_Signals[InputName].LH and Values[1]<g_AI_Signals[InputName].HL-- если значение нормальное
								
				
--[[	искл 20-11-18			
							if Values[1]<=g_AI_Signals[InputName].LL-- если значение  меньше нижней аварийной границы
							then	
								
									if g_AI_Signals[InputName].LL_check==true -- если проверка включена 
								--	if Core[OutputName..".LL_en"]==true -- если проверка включена/изм. 19-11-18
									then
										g_AI_lib.Add_Alarm({InputName,"LL",g_AI_Signals[InputName].LL_check})--создать сообщение о нижней аварийной границе
									end--g_AI_Signals[InputName].LL_check
								
						
							elseif Values[1]>g_AI_Signals[InputName].LL and Values[1]<=g_AI_Signals[InputName].LH-- если зафиксировали нижнюю предупредительную границу
								then	
								
								if g_AI_Signals[InputName].LH_check==true -- если проверка включена
								--if Core[OutputName..".LH_en"]==true -- если проверка включена
									then
										g_AI_lib.Add_Alarm({InputName,"LH",g_AI_Signals[InputName].LH_check})--создать сообщение о нижней предупредительной границе
									end--g_AI_Signals[InputName].LH_check
							elseif Values[1]>g_AI_Signals[InputName].LH and Values[1]<g_AI_Signals[InputName].HL-- если значение гормальное
								then
										g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
							elseif Values[1]>=g_AI_Signals[InputName].HL and Values[1]<g_AI_Signals[InputName].HH-- если зафиксировали верхнюю предупредительную границу
								then	
									if g_AI_Signals[InputName].HL_check==true -- если проверка включена
									--if Core[OutputName..".HL_en"]==true -- если проверка включена
									then
											--g_CurrentAiAlarms["HL"][InputName]=true
											g_AI_lib.Add_Alarm({InputName,"HL",g_AI_Signals[InputName].HL_check}) --создать сообщение о верхней предупредительной границе
									end--g_AI_Signals[InputName].HL_check	
							
							elseif Values[1]>=g_AI_Signals[InputName].HH -- если зафиксировали верхнюю границу аварийную границу
								then	
									if g_AI_Signals[InputName].HH_check==true -- если проверка включена
									--if Core[OutputName..".HH_en"]==true -- если проверка включена
									then	
											g_AI_lib.Add_Alarm({InputName,"HH",g_AI_Signals[InputName].HH_check})--создать сообщение о верхней аварийной границе
									end--g_AI_Signals[InputName].HH_check
							else
									--g_AI_lib.Add_Alarm({InputName,"DIS"}) -- деактивировать предыдущую тревогу
							--return -1
							end --Values[1]<=g_AI_Signals[InputName].LL
	--]]
							Core[OutputName..".OldValue"]=Values[1]--*g_AI_Signals[InputName]["Ktr"]--запомним последнее значение
						end--if Core[OutputName..".reliabilityFlag"]  
			   	   end --Signals[InputName]["repaireFlag"]==false
				end --g_AI_Signals[InputName]==nil then -- если сигнал в таблице не описан
	return result
end --of  AI_Data.Process(Signal) 
--[[ исключено 19-11-18
function AI_Data.ChangeAlarmSettings(Signal) --функция изменения границ алармов
	dis_border_val=0/0 --значение аварийной/предупредительной границы при отключенной тревоге	
	local result=0 --результат выполнения функции. 0: успешно; -1: запрос отклонен; -2 : аварийное завершение		
	local AlarmSetType= string.sub(tostring(Signal[2]), -2) -- определяем тип изменяемой уставки
		local AlarmSetVar=tostring(Signal[2]) -- имя переменной с  изменяемой уставкой
		
			if g_AI_Signals[tostring(Signal[1])][AlarmSetType.."_check"]==nil --если поле разрешения не найдено
			then 
					if g_Logs -- если логи включены											
					then
						Core.addLogMsg("Не удается найти поле разрешения проверки "..AlarmSetType.. " для входа ".. tostring(Signal[1]).." "..g_USO_ID..g_PLC_Name)  -- делаем запись в лог
					end --		if g_Logs -- если логи включены		
				result=-2
				return result
			else
				local AlarmCheck=g_AI_Signals[tostring(Signal[1])][AlarmSetType.."_check"] -- разрешение обработки  изменяемой уставкои	
			end--if g_AI_Signals[tostring(Signal[1])][AlarmSetType.."_check"]==nil
		
			if AlarmCheck==false --если уставка отключена
			then 
					if g_Logs -- если логи включены											
					then
						Core.addLogMsg("Изменение уставки AI : "..AlarmSetVar.." отклонено. Уставка выведена из обработки. См. конфигурацию сигналов AI для "..g_USO_ID..g_PLC_Name)  -- делаем запись в лог
					end --		if g_Logs -- если логи включены		
					Core[AlarmSetVar]=dis_border_val --вернем значение по умолчанию
					result=-1 -- завершим функцию 
			else
					local Alarm_Setting=Core[AlarmSetVar] --получим новое значение границы
					g_AI_Signals[tostring(Signal[1])][AlarmSetType]=Alarm_Setting --сохраним его в таблице
					if g_Logs -- если логи включены											
					then				
						Core.addLogMsg("Изменение уставки AI: "..AlarmSetVar.." произведено " ..os.time() )  -- делаем запись в лог
					end-- --		if g_Logs 
					
			end--AlarmCheckVar==false
	return result
end --function AI_Data.ChangeAlarmSettings(Signal)
]]--

function AI_Data.InStatus(Signal) -- обработка статусов входных аналогов
local InputName=string.gsub(Signal[1], g_USO_ID, "")

InputName=string.gsub(InputName, "_status", "")
Core.addLogMsg(InputName.." in_status ")
	if g_AI_Signals[InputName]==nil then -- если сигнал в таблице не описан
						Core.addLogMsg("in_status: Опрос "..InputName..". Для данного AI входа отсутствует описание в таблице g_AI_Signals") -- отправим сообщение об ошибке в логи
						result=-2
						return result-- завершить работу функции Process_AI_Data
	end--
local status=Core[g_USO_ID..InputName.."_status"]--получим статус сигнала
local OutputName=g_ObjID..g_AI_Signals[InputName]["Tag"]
--InputName=InputName
Core[OutputName..".in_status"]=status
--[[	if status==g_Faults.sc then
		g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
		g_AI_lib.Add_Alarm({InputName,"SC",true}) --	выведем КЗ	
		Core.addLogMsg(tostring(OutputName).." - КЗ")
	elseif  status==g_Faults.br then
		g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
		g_AI_lib.Add_Alarm({InputName,"BR",true}) --	выведем обрыв
		Core.addLogMsg(tostring(OutputName).." - обрыв")
	elseif  status==g_Faults.no then		
		g_AI_lib.Add_Alarm({InputName,"DIS",true}) -- деактивировать предыдущую тревогу
		Core.addLogMsg(tostring(OutputName).." - норм")
	end--		if status==g_Faults.sc then
]]--
--Core.addLogMsg(InputName.." "..OutputName..".in_status="..tostring(Core[InputName]))
end--AI_Data.in_status(Signal)


function AI_Data.ChangeAlarmSettings(Signal) --функция изменения границ алармов  - версия от 19-11-18
	--dis_border_val=0/0 --значение аварийной/предупредительной границы при отключенной тревоге	
	dis_border_val=-32000 --значение аварийной/предупредительной границы при отключенной тревоге	
	local result=0 --результат выполнения функции. 0: успешно; -1: запрос отклонен; -2 : аварийное завершение	
	local AlarmSetType= string.sub(tostring(Signal[2]), -2) -- определяем тип изменяемой уставки
	local AlarmEnabled=AlarmSetType.."_check"
	
	local AlarmSetVar=tostring(Signal[2]) -- имя переменной с  изменяемой уставкой
	--local Value=string.gsub(AlarmSetVar,AlarmSetType, "Value")
	--Core.addLogMsg(cc)
					if Core[Signal[3]]==true then
									--Core.addLogMsg(tostring(Signal[1]).." "..tostring(Signal[2]).." "..tostring(Signal[3]))
									local Alarm_Setting=Core[AlarmSetVar] --получим новое значение границы
									g_AI_Signals[tostring(Signal[1])][AlarmEnabled]=true
									--if Alarm_Setting ==0/0 --если сохранено nan
									--then
								--	Core[AlarmSetVar]=g_AI_Signals[tostring(Signal[1])][AlarmSetType]
								--	else
									g_AI_Signals[tostring(Signal[1])][AlarmSetType]=Alarm_Setting --сохраним его в таблице
									g_AI_Signals[tostring(Signal[1])][AlarmSetType.."_check"]=true -- сохраним в таблице состояние активности тревоги
									--Core.addLogMsg("Tabl "..tostring(g_AI_Signals[tostring(Signal[1])][AlarmSetType]))
								--	end ----если сохранено nan
									
									if g_Logs -- если логи включены											
									then				
										Core.addLogMsg("Изменение уставки AI: "..AlarmSetVar.." произведено " ..os.time() )  -- делаем запись в лог
									end-- --		if g_Logs 
					
					else
							--g_AI_Signals[tostring(Signal[1])][AlarmSetType.."_check"]=false -- сохраним в таблице состояние активности тревоги
							g_AI_Signals[tostring(Signal[1])][AlarmEnabled]=false
							--g_AI_Signals[tostring(Signal[1])][AlarmSetType]==
							--Core.addLogMsg(tostring(g_AI_Signals[tostring(Signal[1])][AlarmSetType]))
							if g_Logs -- если логи включены											
							then
								Core.addLogMsg("Изменение уставки AI : "..AlarmSetVar.." отклонено. Уставка выведена из обработки. См. конфигурацию сигналов AI для "..g_USO_ID..g_PLC_Name)  -- делаем запись в лог
							end --		if g_Logs -- если логи включены		
							--g_AI_Signals[tostring(Signal[1])][AlarmSetType]=Alarm_Setting --сохраним его в таблице
							--Core[AlarmSetVar]=dis_border_val --вернем значение по умолчанию
							result=-1 -- завершим функцию 
					end --if Core[Signal[3]]
					--Core.addLogMsg(tostring(Signal[4]))
					
	-- g_AI_lib.Process(Signal[4]) --проверим границы после изменения				
			--Core.addLogMsg(cc.." "..tostring(AlarmSetType).." " ..AlarmEnabled.." " ..AlarmSetVar.. "!!"..tostring(g_AI_Signals[tostring(Signal[1])][AlarmEnabled]))		
	return result
end --function AI_Data.ChangeAlarmSettings(Signal)


return AI_Data