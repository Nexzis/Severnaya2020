--clientSession.lua

local dbPathServer = 'C:/SPT943_ArchiveFiles/SPT943Server.sqlite';
local strTime = "";		-- строка с временем
local strData = "";		-- строка с параметрами
local dbTableClient, rowsNumClient;
local rowsNumServer;
local diff;
local resp;

function clientSession(sckHnd)
	local loop, query, status = true;
	local rcv = {};
	while loop do
	::up::
		coroutine.yield(query)
		--[[ 1 ]]-- от клиента получить строку с именем таблицы и количеством строк в ней
		query, status = sckHnd:receive();
		Core.addLogMsg( "server: received < " .. query);
		if query then
				loop = query ~= ".quit" and query ~= ".shutdown"
				if loop then
					--[[ 2 ]]-- из полученной строки выделить имя таблицы и количество строк в ней
					dbTableClient, rowsNumClient = stringParsing( query);
					--[[ 3 ]]-- подсчитать количество строк в соответствующей таблице БД сервера
					rowsNumServer = selectCountAsNum( dbTableClient, dbPathServer);
					Core.addLogMsg( "server: the number of rows in the table " .. dbTableClient .. " = " .. rowsNumServer);

					--[[ 4 ]]-- вычислить разность строк в соответствующих таблицах БД сервера и БД клиента
					diff = rowsNumServer - rowsNumClient;
					if diff == 0 then
							Core.addLogMsg("server: tables " .. dbTableClient .. " are the same");	-- таблицы БД клиента и БД сервера идентичны
							resp = "following table";
							sckHnd:send(resp .. "\n");
							--Core.addLogMsg( "server: responce > " .. resp);
							goto up;
						else
							Core.addLogMsg("server: difference = " .. diff);
					end

					--[[ 5 ]]-- извлечь последние недостающие записи из БД сервера
					tTime, tData = selectFrom( dbTableClient, dbPathServer, diff);

					--[[ 6 ]]-- сформировать строки с данными
					for i = 1, diff do
						--Core.addLogMsg(tTime[ i]);
						--Core.addLogMsg(tData[ i]);
						strTime = strTime .. tTime[ i] .. " ";
						strData = strData .. tData[ i] .. " ";
					end
					--Core.addLogMsg(strTime);
					--Core.addLogMsg(strData);

					--[[ 6 ]]-- отправить недостающие данные из БД сервера в БД клиента
					resp = strTime .. strData;
					sckHnd:send(resp .. "\n");
					Core.addLogMsg( "server: responce > " .. resp);
					tTime = {};
					tData = {};
					strTime = "";
					strData = "";
				end
			else
				Core.addLogMsg("server: error => ", status);
		end
	end
	return query;
end
