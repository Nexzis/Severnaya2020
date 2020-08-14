-- Скрипт проверки состояния соединений между узлами (диагностика) -исполняется на сервере
local nodes =require("./PRJ_config/_nodes"); -- считаем перечень узлов из файла конфирурации
local event =require("./_events_desc"); -- считаем описание классов аварийных сообщений
local ScreenID="DIAGN" -- идентификатор мнемосхемы технологического объекта
local oldConStatus={}
local e_type -- тип события(появление/исчезновение)
local Logs=true -- вести логи
local timeout=3 -- период опроса приложения
--local nodes={ -- вынесено в файл
--["USO1_A1"]={["addr"]="USO1_A1", ["app"]="Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО 1 (ПЛК А1)"},----
-- ["ИМЯ УЗЛА"]={["addr"]="НАЗВАНИЕ УЗЛА В ПРОЕКТЕ", ["app"]="КОНТРОЛИРУЕМОЕ ПРИЛОЖЕНИЕ", ["offline"]="СУФФИКС ТЕГА СОСТОЯНИЯ СВЯЗИ(префикс- имя узла)" , ["Comment"]="КОММЕНТАРИЙ ДЛЯ СООБЩЕНИЯ"},----
--}
local function SetConnectTag(Signal)

			
			Core[Signal[2]]=Signal[3] --присваиваем состояние тегу диагностики соединения
			local timestamp=os.time(); -- время фиксации сигнала (передний фронт)
			local ObjID=tostring(Signal[1]) -- идентификатор технологического объекта
			local User=nodes[Signal[1]].Comment.." (cистема)" --имя пользователя, создающего сообщение
			local Source="Сервер АСУЭ (cистема)" --поле "Источник" для сообщений	
	--........................................................

--Core.setMessage(nodes[Signal[1]].addr.."."..nodes[Signal[1]].app)
		if	Signal[3]~=oldConStatus[Signal[1]] -- статус связи изменился!
			then
				if Signal[3]==false --and Core.isReserved(nodes[Signal[1]].addr.."."..nodes[Signal[1]].app)==false-- тип события и узел не в резерве
				then
				
							e_type=1
							Core.addEvent("Потеря связи с узлом "..nodes[Signal[1]].Comment, event.a, e_type ,Source, User, Signal[1].."_"..nodes[Signal[1]].offline, timestamp, ScreenID )
							if Logs 
							then
								Core.addLogMsg("Потеря связи с узлом "..nodes[Signal[1]].Comment .."(появление) " ..  event.a .. " ".. Source .. " ".. User.. " " .. Signal[1].."_"..nodes[Signal[1]].offline.. " " .. timestamp .. " " .. ScreenID )
							end --if Logs
				else
							e_type=0
							Core.addEvent("Потеря связи с узлом "..nodes[Signal[1]].Comment , event.a, e_type ,Source, User, Signal[1].."_"..nodes[Signal[1]].offline, timestamp, ScreenID )
							if Log 
							then
								Core.addLogMsg("Потеряна связь с узлом "..nodes[Signal[1]].Comment .."(исчезновение) " ..  event.a .. " ".. Source .. " ".. User.. " " ..Signal[1].."_"..nodes[Signal[1]].offline.. " " .. timestamp .. " " .. ScreenID)
							end --if Logs
				end--if Signal[3]==false
	
				oldConStatus[Signal[1]]=Signal[3] --сохраним сотояние связи в буфер

	  	 end--Signal[3]~=oldConStatus[Signal[1]]
end

--...MAIN...
local function checkConnect()
end--function checkConnect()

while true 
	do
			
		for _, addr in pairs (nodes) do
	
					local Node_tag=addr.addr.."_"..addr.offline
				--	local MessageSourse=addr.addr.."_"..addr.Comment
					local MessageSourse=addr.addr
					local Node_appl=addr.addr.."."..addr.app
				
				if Core.getLatency(tostring(Node_appl))== -1 --если связи нет
				then
					--Core[Node_tag]=false --установим флаг "связи нет"
					SetConnectTag({addr.addr,Node_tag,false,MessageSourse}) --вызываем обработчик для обработки обрыва связи
					--Core.addLogMsg(tostring(Node_appl)..": связи нет- "..Core.getName().." Res="..Core.getLatency(tostring(Node_appl)))
				 else 
					--Core[Node_tag]=true --установим флаг "связи нет"
					SetConnectTag({addr.addr,Node_tag,true,MessageSourse})--вызываем обработчик для обработки восстановления связи
--					Core.addLogMsg(tostring(addr.addr)..": связь есть - "..Core.getName().." Res="..Core.getLatency(tostring(Node_appl)))
				end --if Core.getLatency(Node_appl)


	end --_, addr in pairs (nodes)
		os.sleep(timeout)-- ЖДЕМ
end --while true 


