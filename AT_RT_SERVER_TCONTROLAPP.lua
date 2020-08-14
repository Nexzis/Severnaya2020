--*************************
--Скрипт резервирования серверов 2.0 изм. 21.02.2019
-- 21.02.19 - реализован только с ОДНИМ контрольным узлом
--************блок define
	--конфигурация
	local g_nodes =require("./PRJ_config/_nodes") -- считаем перечень узлов из файла конфигурации
	--local g_event =require("./_events_desc"); -- считаем описание классов аварийных сообщений
	local g_event=101 --тип  для строки события
	local g_ScreenID="DIAGN" -- идентификатор мнемосхемы технологического объекта
	local g_Logs=true --вести логи скрипта
	local g_App=".Loader" -- имя приложения
	local g_delay=1 --пауза (сек) таймаут между запросами серверов друг другу
	local g_MainServerNum="MainServerFlag" --имя глобальной переменной-номера активного сервера
	local g_SwitchBlocked="SwitchServerBlocked" --возможность переключения серверов
	local g_SwitchCommand="SwitchServers" --команда на переключение серверов
	local g_ServFlg="Server" -- признак в имени узла того, что сервер 
--	local g_OldMainServerNum=1 --номер активного сервера
-- 	local g_ReInit=false --необходимость повторной инициализации приоритетов
-- 	local g_noConnect=false --отсутствие связи с партнером
	local g_FirstServerNameSuffix='N1' --суффикс в имени 1-го сервера
	local g_SecondServerNameSuffix='N2' --суффикс в имени 2-го сервера
	local g_Msg1="Сервер АСУЭ " -- идентификатор сервера, он же источник событий
--	local g_Msg2=". Потеряно соединение с сетью"
--	local Msg3=". Проект не запущен."
	local g_Msg4=". Приложение "..g_App.." недоступно."
	local g_Msg5=" назначен основным."
	local g_Msg6=" выведен в резерв."
	--СЛУЖЕБНЫЕ
	local g_NodeAppName =tostring(Core.getName()) --выдает имя узла и приложения (c .Loader)
	local g_NodeName=string.gsub(tostring(g_NodeAppName),g_App,"") --выдает имя узла
	local ping_table={} --Таблица IP адресов для контроля
	--WATCHDOG counters
	local g_counter=0 --счетчик итераций
	local g_partner_counter=0 --счетчик итераций на узле -партнере
	local g_partner_oldcounter=1 --счетчик итераций на узле -партнере (предыдущее значение)
--************setup()
--заполнение таблицы ping_table	с адресами контролируемых узлов
  for _, node in pairs (g_nodes) do --вычленим необходимые IP адреса из общего списка
	   if  node.IP then 
			if string.find(node.addr,g_ServFlg) or node.WatchDog==true then --если есть признаки сервера или это контрольный узел WatchDog
				if node.addr~=g_NodeName then --если имя узла не совпадает с текущим
					ping_table[node.addr]=node.IP --занесем в списочек
				end --node.addr
			end --if string.find(node.addr,"Server") 
		end--if  node.IP
	end	--	for _, node in pairs (g_nodes		
--определение по имени узла 1-й это сервер или 2-й
	if string.match(g_NodeName , g_FirstServerNameSuffix) ~= nil then -- если в имени узла содержится признак 1-го сервера
		g_IamFirst = true --Это первый сервер
		g_Msg0=g_Msg1..g_SecondServerNameSuffix
		g_Msg1=g_Msg1..g_FirstServerNameSuffix --добавим в источнику событий номер сервера 1; 
		
		g_PartnerName=string.gsub(g_NodeName, g_FirstServerNameSuffix, g_SecondServerNameSuffix)--узнаем имя приложения-партнера по резерву 
	elseif string.match(g_NodeName , g_SecondServerNameSuffix) ~= nil then -- это сервер №2
		g_IamFirst = false --Это второй сервер
	    g_Msg0=g_Msg1..g_FirstServerNameSuffix 
		g_Msg1=g_Msg1..g_SecondServerNameSuffix --добавим в источнику событий номер сервера 2; 
	
	    g_PartnerName=string.gsub(g_NodeName, g_SecondServerNameSuffix, g_FirstServerNameSuffix)--узнаем имя приложения-партнера по резерву 
	else
		if g_Logs then
			Core.addLogMsg("В именах узлов не содержится признаков 1-го или 2-го сервера")	
		end --		if g_Logs
		return -- завершить
	end --if string.match(g_NodeName , g_FirstServerNameSuffix) ~= nil
	--
	local g_MainServerNumber=Core[g_MainServerNum] --получаем из ядра номер основного сервера

--WatchDog -функция отслеживания активности резервируемого приложения
local function WatchDog()
		local result=0	--результат выполнения функции
			--получим значение счетчика для узла
			if g_IamFirst==true then --если это первый сервер
					g_counter=Core.ServerAppValid[0] --ячейка этого сервера (обрабатываем)
					g_partner_counter=Core.ServerAppValid[1]--ячейка сервера-партнера (отслеживаем)
			else --if g_IamFirst==true
					g_counter=Core.ServerAppValid[1] --ячейка этого сервера (обрабатываем)
					g_partner_counter=Core.ServerAppValid[0]--ячейка сервера-партнера (отслеживаем)
			end --if g_IamFirst==true	
			--обновим значение счетчика для узла
			if g_counter<=65535 then --если значение счетчика не переполнено (для переменной типа WORD)
					g_counter=g_counter+1--увеличим значение счетчика
			else --if g_counter<=65535 
					g_counter=0 --обнулим для исключения переполнения стека памяти
			end--	if counter<65535 then
			if g_IamFirst==true then --если это первый сервер
					Core.ServerAppValid[0]=g_counter
			else --если это 2-й сервер
					Core.ServerAppValid[1]=g_counter
			end --if g_IamFirst==true
			
			if g_partner_counter==g_partner_oldcounter then --если счетчик итераций партнера остановился 
				result=-1 -- запишем в результат ошибку
				Core[g_SwitchBlocked]=true --взвести флаг блокировки переключения серверов
			else 
				g_partner_oldcounter=g_partner_counter --обновим счетчик
				Core[g_SwitchBlocked]=false --снять флаг блокировки переключения серверов
			end--				
return result --вернем результат
end--function WatchDog(Signal)


--функция переключения серверов
local function SwitchServers(Signal)
	local NodeName=Signal[1] --имя узла 
	local NodeReserve=Signal[2] -- Состояние, В которое его надо переключить, Signal[3] - текущее состояние
	--if NodeReserve==true then e_type=1 end
	if Signal[3]~=Signal[2] --если текущее состояние узла не совпадает с требуемым
	then
			Core.setReserve(NodeName, NodeReserve)--изменим статус сервера
			if Logs then
				Core.addLogMsg("Переключение узла ".. g_Msg1 .. " произведено. Резерв:".. tostring( NodeReserve).. " ".. os.time())	
			end--if Logs
			if NodeReserve == false then -- если делаем основным
				 EventMsg=g_Msg1..g_Msg5.." "..g_Msg0..g_Msg6	 --пишем про основной
				--local EventMsg1=	
			else
				 EventMsg=g_Msg1..g_Msg6.." "..g_Msg0..g_Msg5 -- про резервный
			--	local EventMsg1= 
			end--if NodeReserve == fals
			Core.addEvent(EventMsg, g_event, 1 ,g_Msg1, "Система", NodeName, os.time(), g_ScreenID)--создать сообщение
			--Core.addEvent(EventMsg1, g_event, 1 ,g_Msg1, "System", NodeName, os.time(), g_ScreenID )
	else--if Signal[3]~=Signal[2] 
		if g_Logs then
			Core.addLogMsg("Переключение узла ".. tostring(NodeName) .. " не требуется ".. tostring( NodeReserve).. " ".. os.time())	
		end --		if g_Logs			
 		return -1
	end --if Signal[3]~=Signal[2] 
	if NodeReserve==false then --если делаем узел основным
		 	if g_IamFirst==true --если обрабатываем первый сервер
				then
					Core[g_MainServerNum]=1 --записываем в ядро 1-й основным
		 	else
					Core[g_MainServerNum]=2	--записываем в ядро 2-й основным
		 	end--IamFirst==true 

		end --if NodeReserve==false
	return 1
end --  function SwitchServers()

--функция контроля доступности серверов
local function ControlServers()
	--if Core[g_SwitchCommand]==true then return end
	local online_nodes=0 --количество контрольных узлов в онлайне
	local Partner_online=false
	for node, ip in pairs (ping_table) do	-- пропингуем все узлы из списка ping_table
		ping_success, ping_error = os.ping(ip)
		if ping_success and ping_error == nil then --если пинг прошел успешно
			online_nodes=online_nodes+1 --увеличим счетчик узлов онлайн
			if node==g_PartnerName then -- если пингуемый узел - это второй сервер
				Partner_online=true -- запомним, что узел-партнер онлайн
			end--if node==g_PartnerName then 
		end--if ping_success
	end --node, ip in pairs (ping_table)

	if 	online_nodes==0 then --если других контрольных узлов в сети не видно
		Core.addLogMsg("Узел "..g_NodeName.." не подключен к сети")
	--	Core.addEvent(g_Msg1..g_Msg2, 10000, 1 ,g_Msg1, "System", "NOCONNECT", os.time(), g_ScreenID ) --Событие
			SwitchServers({g_NodeName, true, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в резерв
			return 1
	elseif online_nodes==1 and Partner_online==false then --если виден только один из узлов и это не сервер, а АРМ
			if Logs then			
				Core.addLogMsg("Узел(партнер) "..g_PartnerName.." не подключен к сети")
			end--if Logs
			SwitchServers({g_NodeName, false, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в работу
			return 1
	elseif online_nodes==1 and Partner_online==true then --если виден только один из узлов и это сервер, а не АРМ
			if Logs then	
				Core.addLogMsg("Узел(арбитр) не подключен к сети")
			end--if Logs
			g_MainServerNumber=Core[g_MainServerNum] -- получим последний работавший сервер
			if (g_IamFirst == true and g_MainServerNumber==1) or (g_IamFirst == false and g_MainServerNumber==2) then
				SwitchServers({g_NodeName, false, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в работу
			else
				SwitchServers({g_NodeName, true, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в резерв
			end--if (g_IamFirst == true and g_MainServerNumber==1)
			return 1
	elseif online_nodes>=2 and Partner_online==false then --если  контрольных узла 2 и более, партнер отключен
		SwitchServers({g_NodeName, false, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в работу
	elseif online_nodes>=2 and Partner_online==true then --если  контрольных узла 2 и более, партнер включен
		g_MainServerNumber=Core[g_MainServerNum]-- получим номер активного сервера из ядра
		
		if WatchDog()==0 then --если WatchDog() не вернул ошибку
				if 	g_IamFirst == true and g_MainServerNumber==1 then --если это первый сервер и он должен быть основным
					SwitchServers({g_NodeName, false, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в работу
		  		elseif 	g_IamFirst == true and g_MainServerNumber==2 then --если это первый сервер и он не должен быть основным
					SwitchServers({g_NodeName, true, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в резерв
		 	 	elseif 	g_IamFirst == false and g_MainServerNumber==1 then --если это второй сервер и он не должен быть основным
						SwitchServers({g_NodeName, true, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в резерв
						--return --ничего
		  		elseif 	g_IamFirst == false and g_MainServerNumber==2 then --если это второй сервер и он  должен быть основным
						SwitchServers({g_NodeName, false, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в работу			
		 	 	else return
				end --if 	g_IamFirst == true
				else				
					if g_Logs then
						Core.addLogMsg("Переключение узла ".. tostring(g_NodeName) .. " невозможно. На узле ".. g_PartnerName..   g_Msg4.. os.time())						
					end --		if g_Logs			
					SwitchServers({g_NodeName, false, Core.isReserved(g_NodeName..g_App,1)})--отправим текущий узел в работу
 				return -1
			--end--if g_MainServerNumber~=
		end-- if Core.getLatency(g_PartnerName
	else 
		return 0
	end--	if 	online_nodes==0
end --  function ControlServers()

--функция первоначального определения роли серверов
local function setup()
--		if g_IamFirst == false then os.sleep(2) end 
		g_MainServerNumber=Core[g_MainServerNum]--считаем из ядра номер активного сервера
		if g_MainServerNumber~=1 and g_MainServerNumber~=2   then -- если основной сервер не определен
			if 	g_IamFirst == true   then --если 1-й
				g_MainServerNumber=1 -- им становится первый
				SwitchServers({g_NodeName, false, Core.isReserved(g_NodeName..g_App,1)})
			else -- если 2-й
				g_MainServerNumber=2	
				SwitchServers({g_NodeName, true, Core.isReserved(g_NodeName..g_App,1)})
			end--	
			Core[g_MainServerNum]=g_MainServerNumber --запишем в ядро номер рабочего сервера
			if Logs then
				Core.addLogMsg("Setup. Основном сервером назначен "..g_MainServerNumber)
			end --if Logs then
		else
			if Logs then		
				Core.addLogMsg("Setup. Основной сервер был определен ранее ")
			end --if Logs then
			return -1--если уже определено ранее - прервём инициализацию
		end --if not g_MainServerNumber
		g_OldMainServerNum=g_MainServerNumber
end-- function setup()

local  function ManualSwitch(Signal)
--		Core.addLogMsg("ManualSwitch".. tostring(Core[g_SwitchCommand]).. " ".. tostring(Core.isReserved(g_NodeName,1)))	
 msg=tostring(Core.isReserved(g_NodeName,1))
Core.setMessage(msg)
	local result=0
	if Signal[1]==false and Core[g_SwitchCommand]==true  then --если переключение не заблокировано  и подана команда
		if g_IamFirst ==true then
			Core[g_MainServerNum]=2--запишем в ядро второй
		else
			Core[g_MainServerNum]=1--	
		end--if g_IamFirst ==true 
--		Core.setReserve(g_NodeName, false)--выведем текущий сервер в резерв
		SwitchServers({g_NodeName, true, Core.isReserved(g_NodeName..g_App,1)})
		os.sleep(0.5)
			SwitchServers({g_PartnerName, false, Core.isReserved(g_NodeName..g_App,1)})
		--Core.setReserve(g_PartnerName, true)--введем резервный сервер в работу
		os.sleep(3)
	
--		Core.addEvent(g_Msg1, g_event, 1 ,g_Msg1, "System", g_ObjID..g_DI_Signals[InputName]["Tag"], os.time(), g_ScreenID )
	else 
		if g_Logs then
			Core.addLogMsg("Переключение серверов невозможно из-за блокировки управляющим приложением")	
		end --		if g_Logs
		result= -1
	end--	if Signal[1]==false
	Core[g_SwitchCommand]=false --сбросим команду
	return result
end--function ManualSwitch()


--************main()
setup() --определим первоначальные роли серверов
while true
do
	ControlServers() --контроль состояния серверов в автоматическом режиме
	--Core.onExtChange({g_SwitchCommand}, ManualSwitch, {Core[g_SwitchBlocked]}) --отслеживаем исправность ЦПУ
	os.sleep(g_delay)
end--while true