-- скрипт проверки связи АРМ и серверов

	local g_Logs=true --вести логи
	local g_RefereeNodeName="ARM_2" -- имя узла, назначаемого  арбитром при нештатной ситуации на серверах
	local g_FirstServerName1="ASUE_Server_N1"
	local g_SecondServerName1="ASUE_Server_N2"
--[[
  os.sleep(30)
while true do
     Core.setReserve(g_FirstServerName1, true)
     Core.setReserve(g_SecondServerName1, false)
     os.sleep(5)
     Core.setReserve(g_FirstServerName1, false)
     Core.setReserve(g_SecondServerName1, true)
     os.sleep(5)
end
]]--

	local g_MainServerNum="MainServerFlag" --имя глобальной переменной-номера активного сервера
	local g_period=10 --период опроса состояния серверов в секундах
	local g_NodeName = Core.getName() --выдает имя_узла (c .Loader)
--	local g_ScreenID="DIAGN" -- экран перехода при тревоге

--Init

--	g_RefereeNodeName=g_RefereeNodeName..".Loader" 
	g_RefereeNodeName=g_RefereeNodeName..".TServArb" 
	g_FirstServerName=g_FirstServerName1..".Loader" 
	g_SecondServerName=g_SecondServerName1..".Loader" 

local function  GetServerStatus(ServerName)-- --функция определения роли сервера
	if tostring(ServerName)~= g_SecondServerName and tostring(ServerName)~= g_FirstServerName then --если параметр функции не совпадает в именами узлов
		if g_Logs then
			Core.addLogMsg("Имя сервера "..ServerName.." не найдено. Работа функции прекращена. ".. os.clock())
		end --if Logs then
		return -2 -- вернуть ошибку
	end
 
	if Core.getLatency(tostring(ServerName))== -1 --если связи c узлом нет
	then 
			if g_Logs then	
				Core.addLogMsg("Нет связи с узлом "..ServerName.." ".. os.time())
			end--if Logs then
			return -1 -- вернуть ошибку
		
	else
			return Core.isReserved(ServerName,1)	
	end--if Core.getLatency(tostring(ServerName))== -1 

	return 0
end -- function  GetServerStatus(ServerName)

--local function  SetServerStatus()
--end--SetServerStatus()

--main()
os.sleep(3*g_period)-- предстартовая задержка
local ActiveServerNum --номер активного сервера
local Serv1Result --состояние 1 сервера
local Serv2Result--состояние 2 сервера
local flag=false --флаг проверки не активен

while true do
	ActiveServerNum=Core[g_MainServerNum] --считаем из ядра номер активного сервера
	Core.addLogMsg("активный сервер "..tostring(ActiveServerNum).." ".. os.time())
	Serv1Result=GetServerStatus(g_FirstServerName)--получим состояние первого сервера
	Core.addLogMsg("1-й сервер "..tostring(Serv1Result).." ".. os.time())
	Serv2Result=GetServerStatus(g_SecondServerName)--получим состояние второго сервера
	Core.addLogMsg("2-й сервер "..tostring(Serv2Result).." ".. os.time())
 	if Serv1Result==Serv2Result then --если статусы одинаковы
		os.sleep(g_period) --подождем
		ActiveServerNum=Core[g_MainServerNum] --повторим опрос
		Serv1Result=GetServerStatus(g_FirstServerName)
		Serv2Result=GetServerStatus(g_SecondServerName)
		if Serv1Result==Serv2Result then flag=true end --flag проверки взводим
	end--if Serv1Result==Serv2Result 
	if flag then --если флаг проверки взведен
			if ActiveServerNum==1 then --если активный сервер 1
				if Serv1Result==false and Serv2Result==false then --если оба числятся основными
					Core.setReserve(g_SecondServerName1,true) -- второй выведем в резерв
				elseif Serv1Result==true and Serv2Result==true then --если оба числятся резервными
					Core.setReserve(g_FirstServerName1,false) --первый сделаем основным
				end--if Serv1Result==false
			elseif ActiveServerNum==2 then --если активный сервер 2
				if Serv1Result==false and Serv2Result==false then --если оба числятся основными
					Core.setReserve(g_FirstServerName1,true)--первый выведем в резерв
				elseif Serv1Result==true and Serv2Result==true then --если оба числятся резервными
					Core.setReserve(g_SecondServerName1,false)--второй сделаем основным
				end--if Serv1Result==false
			end--if ActiveServerNum==1 then
			flag=false --сбросим флаг проверки
	end-- if flag then
     os.sleep(g_period)
end --while true do


