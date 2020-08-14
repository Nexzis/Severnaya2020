--Скрипт проверки связи АРМ и серверов. версия 17-01-19
--Работает на АРМ .
-- *******************************************************************
--!! Блок setup
local g_nodes =require("./PRJ_config/_nodes"); -- считаем перечень узлов из файла конфигурации
--local event =require("./_events_desc"); -- считаем описание классов аварийных сообщений
local g_SRV="_Server" --признак сервера в имени узла
local g_Server1 --имя 1-го сервера (должно совпадать с имененм узла)
local g_Server2 --имя 2-го сервера (должно совпадать с имененм узла)
local g_timeout=10 -- пауза в секундах между проверками
local g_ARM_name=string.gsub(Core.getName(), ".CheckServConn", "")
--local g_Connect_var=Core.getName() --получим имя узла и приложения
local g_Connect_var=g_ARM_name.."_SRV_connect" --получим имя переменной флага соединения

	if not string.find(g_ARM_name, "ARM") then
		 Core.addLogMsg("Ошибка выполнения приложения. В имени узла не содержится принаков АРМ")
	end--not string.find(g_ARM_name, "ARM")

	for _, addr in pairs (g_nodes) do--пройдем по списку узлов
		--local tmp=string.find(addr.addr, g_SRV)--выделим из таблицы серверы
		if string.find(addr.addr, g_SRV)--выделим из таблицы серверы
		then
			if 	string.find(addr.addr, "1") --если сервер 1-й
			then
				g_Server1=tostring(addr.addr)--присвоим имя первому серверу
			elseif string.find(addr.addr, "2")--если сервер 2-й
			 then
				g_Server2=tostring(addr.addr)--присвоим имя второму серверу
			end	--если сервер 1-й
		end --выделим из таблицы серверы

	end --for _, addr in pairs (nodes) do
--		Core.addLogMsg(g_nodes[g_Server1].IP.." "..g_nodes[g_Server2].IP)

-- *******************************************************************
--!! Блок main()
while true
do
	--Core.addLogMsg(os.time())
	g_ping_success1, g_ping_error1 = os.ping(g_nodes[g_Server1].IP)--проверим пинг сервера1 по IP адресу
	g_ping_success2, g_ping_error2 = os.ping(g_nodes[g_Server2].IP)--проверим пинг сервера2 по IP адресу
	if (g_ping_success1 and g_ping_error1 == nil) and (g_ping_success2 and g_ping_error2 == nil) --для работы сервера оба сервера должны быть онлайн
	then
			-- Core.addLogMsg("Оба сервера онлайн")
			
			if Core.getLatency(tostring(g_Server1.."."..g_nodes[g_Server1].app))~=-1  and Core.getLatency(tostring(g_Server2.."."..g_nodes[g_Server2].app))~=-1  --если оба приложения активны
			then
					Core[g_Connect_var]=true
			else 
					Core[g_Connect_var]=false
			end--если оба приложения активны
--	else
	--		Core.addLogMsg(tostring(g_nodes[g_Server1].app))
	end--(g_ping_success1 and g_ping_error1 == nil)
	os.sleep(g_timeout)--пауза	 чтобы не грузить сеть
end --while

