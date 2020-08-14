--библиотека функций обработки выходных дискретных сигналов Сонет в. 10-01-19
-- 10-01-19 изменен принцип фиксации выходного контакта. Ранее было да/нет, теперь у каждого сигнала своя задержка в секундах. Если 0 - контакт фиксируется.
-- 10-01-19 Исправлена регистрация времени подачи команды


local DO_Data={}

	function DO_Data.Init(Signal) --функция инициализации DI входа контроллера
		if not g_DO_Signals[Signal].Comment or string.len(g_DO_Signals[Signal].Comment) <1  -- Описание сигнала
		then
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Comment"]="Дискретный выход ".. Signal	--значение по умолчанию
		else			
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Comment"]=g_DO_Signals[Signal].Comment
		end --if g_DO_Signals[Signal].Comment==nil 
		if not g_DO_Signals[Signal].Txt_0 or string.len(g_DO_Signals[Signal].Txt_0) <1  -- Описание состояния false
		then
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Txt_0"]=0 -- --значение по умолчанию
		else
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Txt_0"]=g_DO_Signals[Signal].Txt_0
		end --if not g_DO_Signals[Signal].Txt_0 or string.len(g_DO_Signals[Signal].Txt_0) <1
		if not g_DO_Signals[Signal].Txt_1 or string.len(g_DO_Signals[Signal].Txt_1) <1  -- Описание состояния true
		then
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Txt_1"]=1 --значение по умолчанию
		else
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Txt_1"]=g_DO_Signals[Signal].Txt_1 
		end --if not g_DO_Signals[Signal].Txt_1 or string.len(g_DO_Signals[Signal].Txt_1) <1
		if not g_DO_Signals[Signal].repaireFlag   -- флаг вывода из обработки
		then
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".repaireFlag"]=false --значение по умолчанию
		else
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".repaireFlag"]=g_DO_Signals[Signal].repaireFlag 
		end --	if not g_DO_Signals[Signal].repairelag 
--[[ изм.10-01-19
		if not g_DO_Signals[Signal].Fix_Con   -- признак фиксации контактов реле после подачи на выход команды
		then
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Fix_Con"]=false --значение по умолчанию - импульсная команда
		else
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Fix_Con"]=g_DO_Signals[Signal].Fix_Con 
		end --	if not g_DO_Signals[Signal].Fix_Con
--]]
		if not Core[g_ObjID..g_DO_Signals[Signal].Tag..".Fix_Con"]   -- признак фиксации контактов реле после подачи на выход команды не определен
		then
			Core[g_ObjID..g_DO_Signals[Signal].Tag..".Fix_Con"]=0 --значение по умолчанию - неимпульсная команда

		end --	 not Core[g_ObjID..g_DO_Signals[Signal].Tag..".Fix_Con"]
		
		-- значение флага достоверности сигнала  
		local reliabilityField=Core[g_ObjID..g_DO_Signals[Signal].Tag..".reliabilityField"]--значение поля достоверности
				--if reliabilityField==0 -- - если значение поля достоверности сигнала нулевое - 
				if reliabilityField<=1 -- - если значение поля достоверности сигнала меньше  или равно частичной неисправности
					then 	
						reliabilityFlag=true --достоверно
				else
						reliabilityFlag=false --недостоверно
				end --Core[OutputName..".reliabilityField"]==0
					g_DO_Signals[Signal]["reliabilityFlag"] =reliabilityFlag --значение в локальную таблицу
					Core[g_ObjID..g_DO_Signals[Signal].Tag..".reliabilityFlag"]=reliabilityFlag -- отправим в систему


end --of DO_Data.Init
--/////////////////////////////////////////////////////////

	function DO_Data.Process(Signal) -- обработка выходных дискретов

				--local pulse_timer=30 --длительность удержания выходного контакта
				--local Tag=g_ObjID..string.gsub(Signal[2], ".reliabilityField", "")
				local Tag=g_ObjID..string.gsub(Signal[2], ".reliabilityField", "")
			--	local Output_Tag=g_ObjID..Signal[2]..".Value"  -- имя тега
				local Output_Tag=Tag..".Value"  -- имя тега				
				Core.addLogMsg("pROCESS " .. Output_Tag.." - ".. Tag)	
				-- Output_Tag=g_ObjID.. Output_Tag
				 --Core.addLogMsg("pROCESS " .. Output_Tag.." - ".. Tag)	
				local Comment=g_DO_Signals[Signal[1]]["Comment"] -- комментарий к тегу
				local Txt_1=g_DO_Signals[Signal[1]]["Txt_1"]  -- текст при значении true
				local Txt_0=g_DO_Signals[Signal[1]]["Txt_0"] -- текст при значении false				
				--local Fix_cont=g_DO_Signals[Signal[1]]["Fix_Con"] -- флаг фиксации контактов после исполнения команды
				local InvFlag=g_DO_Signals[Signal[1]]["InvFlag"] --флаг инверсии сигнала
				local Valid=g_DO_Signals[Signal[1]]["reliabilityFlag"]-- --значение флага достоверности
			--	Core.addLogMsg(g_ObjID..Signal[2]..".repaireFlag")	
				--local Repaire=Core[g_ObjID..Signal[2]..".repaireFlag"]--значение флага вывода сигнала в ремонт
				--local Repaire=Core[..".repaireFlag"]--значение флага вывода сигнала в ремонт
				local Repaire=false
				--local Output_Channel_val=Core[g_USO_ID..Signal[1]]
				--local Output_Tag_Val=Core[g_ObjID..Signal[2]..".Value"] --значение тега
				local Output_Tag_Val=Core[Output_Tag] --значение тега
				local Fix_cont --флаг фиксации контактов после исполнения команды
				local pulse_timer=Core[Tag..".Fix_Con"] --длительность удержания выходного контакта c 10-01-19
				--Core.addLogMsg(Tag..". pulse_timer=".. pulse_timer)
				if pulse_timer==0 --если время фиксации нулевое, контакт считается фиксированным --10-01-19
				then
					Fix_cont=true -- фиксировать контакты
				else	
					Fix_cont=false -- сбрасывать контакты после pulse_timer секунд
				end --if pulse_timer==0 				

				local Msg= "Получена команда на изменение параметра '"..Comment.."' " --текст сообщения, начало
				if InvFlag==false --если инверсии нет
					then
						if Output_Tag_Val==true 
							then
								Msg=Msg..Txt_1.." " 
							else
								Msg=Msg..Txt_0.." "
							end--	if Output_Tag_Val==true 
					else
						 if Output_Tag_Val==true 
							then
								Msg=Msg..Txt_0.." " 
							else
								Msg=Msg..Txt_1.." "
							end--	if Output_Tag_Val==true 
				end --				if InvFlag==false
					Msg=Msg.."(тег ".. Output_Tag .. "). " --текст сообщения. финал


				if Repaire==true --если сигнал в ремонте
					then
						if g_Logs --если логи включны
							then
							Core.addLogMsg(Msg.. "Команда не выполнена из-за нахождения оборудования в ремонте. ("..g_USO_ID..Signal[1]..")")	
						end --		if g_Logs
						Core[g_ObjID..Signal[2]..".Value"]=not Output_Tag_Val --сбросим тег команды 
						result=-1
						return result-- прекратить обработку
				end --				if Repaire==true
				if Valid==false --если значение недостоверно
					then
						if g_Logs
							then
							Core.addLogMsg(Msg.. "Команда не выполнена из-за недостоверности ПЛК. ("..g_USO_ID..Signal[1]..")")	
					--Core.addEvent() --делаем запись в строку сообщений
						end --		if g_Logs
						Core[Tag..".Value"]=not Output_Tag_Val --сбросим тег команды 
						result=-1
						return result-- прекратить обработку
				end --				if Repaire==true

				if InvFlag==false --если инверсии нет
					then
						Core[g_USO_ID..Signal[1]]=Output_Tag_Val --передадим команду на выход
					else
						Core[g_USO_ID..Signal[1]]=not Output_Tag_Val --передадим инвертированную команду на выход
				end --	if InvFlag==false 
				Core[Tag..".dt"]=os.time() --зарегистрируем время подачи команды
				if Fix_cont==false --если контакты фиксировать не надо (импульсный сигнал)
					then					
						os.sleep(pulse_timer) -- держим паузу
						Core[g_USO_ID..Signal[1]]=not Output_Tag_Val --отпустим контакт
						Core[g_ObjID..Signal[2]..".Value"]=not Output_Tag_Val
					else
						return 0
				end --if Fix_cont==false
			
end --of DO_Data.Process(Signal) 



--//////////////////////////////////////////////////////////





return DO_Data