--Скрипт арбитра ролей серверов. версия 15-01-19
--Работает на АРМ оператора в случае если серверы не разобрались сами.
-- *******************************************************************
--!! Блок setup
local g_nodes =require("./_nodes"); -- считаем перечень узлов из файла конфигурации
--local event =require("./_events_desc"); -- считаем описание классов аварийных сообщений
local g_SRV="_Server" --признак сервера в имени узла
local g_Server1 --имя 1-го сервера (должно совпадать с имененм узла)
local g_Server2 --имя 2-го сервера (должно совпадать с имененм узла)
local g_timeout=3 -- пауза в секундах между проверками
local g_MainServerFlag="MainServerFlag" --имя указателя основного сервера

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
local function 	SetReserve()-- установка ролей
	local srv1_main=Core.isReserved(g_nodes[g_Server1].addr,1)
	local srv2_main=Core.isReserved(g_nodes[g_Server2].addr,1)
--	if (srv1_main==true and srv2_main==true) or (srv1_main==false and srv2_main==false)
	if (srv1_main==srv2_main)--если значения флага резерва совпадают
	 then
			Core.setReserve(g_nodes[g_Server1].addr, false) --сделаем 1-й основным
			Core.setReserve(g_nodes[g_Server2].addr, true) --сделаем 2-й резервным
			Core[g_MainServerFlag]=1-- установим указатель на первый сервер
	 else return false	--корреции не было
	end--if (srv1_main==true and srv1_main==true)
--	if Core.getLatency(tostring(g_nodes[g_Server1].app)))== -1 --если связи нет			
return true --коррекция проведена
end --function 	SetReserve()
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
				local result=SetReserve() -- проверим  и при необходимости назначим их роли
				if result==true -- если коррекция проводилась
				then
					  Core.addLogMsg(Core.getName().." назначил приоритет серверов ".. os.time())
				else  
					  Core.addLogMsg(Core.getName()..". Назначение приоритетов не требуется")
				end	--result==true
			end--если оба приложения активны
--	else
	--		Core.addLogMsg(tostring(g_nodes[g_Server1].app))
	end--(g_ping_success1 and g_ping_error1 == nil)
	os.sleep(g_timeout)--пауза	 чтобы не грузить сеть
end --while

