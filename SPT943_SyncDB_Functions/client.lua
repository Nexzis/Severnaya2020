-- client.lua

-- раз в час клиент подчитывает количество строк в таблицах собственной БД и
-- отправляет полученное количество строк серверу
-- сервер вычисляет разность строк и отправляет клиенту недостающие данные

local dbPathClient = 'C:/SPT943_ArchiveFiles/SPT943Client.sqlite';
require ( "./SPT943_SyncDB_Functions/selectCountAsNum");
require ( "./SPT943_SyncDB_Functions/insertInto");
require ( "./SPT943_SyncDB_Functions/sleep");

function client( host, port)
	-- массив с именами таблиц в БД
	local tDbTables = { [1] = "HourArchive_1",
						[2] = "HourArchive_2",
						[3] = "DateArchive_1",
						[4] = "DateArchive_2",
						[5] = "MonthArchive_1",
						[6] = "MonthArchive_2"
			};

		socket = require( "socket");
		sckHnd = socket.connect( host, port);

		local tTime = {};	-- время
		local tData = {};	-- данные
		local rowsNum;		-- количество строк в таблице БД клиента (для передачи на сервер)
		local query;		-- сформированный запрос вида: "HourArchive_1 13230"

		local i = 1;
	if sckHnd then
		local loop = true
		local CnnSrvStr, CnnSrvPort = sckHnd:getpeername()		-- возвращает строку с IP-адресом узла и номером порта, который узел использует для подключения
		local CnnNameStr = socket.dns.tohostname(CnnSrvStr)		-- возвращает стандартное имя хоста для машины в виде строки
		Core.addLogMsg(string.format("client: connected to %s (%s) on port %d", CnnSrvStr, CnnNameStr, CnnSrvPort))
			while loop do
			::up::
					Core.addLogMsg( "client: step " .. i .. ":");
					--[[ 1 ]]-- подсчитать количество строк в таблице БД клиента
						rowsNum = selectCountAsNum( tDbTables[ i], dbPathClient);
						Core.addLogMsg( "client: the number of rows in the table " .. tDbTables[ i] .. " = " .. rowsNum);
						query = tDbTables[ i] .. " " .. tostring( rowsNum);

					--[[ 2 ]]-- отправить количество строк содержащиеся в таблице БД клиента на сервер

						sckHnd:send(query .. "\n")
						Core.addLogMsg( "client: sent > " .. query);
						sleep(1)
					--[[ 3 ]]-- от сервера получить строку с недостающими данными
						resp, ErrStr = sckHnd:receive()
						if resp then
								--Core.addLogMsg("client: received < " .. resp);
							else
								loop = false
								if ErrStr == "closed" then
										Core.addLogMsg("client: closing connection to server")
									else
										Core.addLogMsg("client: error: ", ErrStr)
								end
						end

						if resp == "following table" then
							Core.addLogMsg("client: the server sent: <<give me the following table>>")
							i = i + 1;
							if i > #tDbTables then
								sckHnd:send( ".quit\n")
								Core.addLogMsg("client: sent > quit");
								loop = false;
								goto down
							end
							goto up;
						end

					--[[ 4 ]]-- заполнить таблицы
						for w in string.gmatch( resp, "%g+") do
							if string.len( w) == 10 then
								table.insert( tTime, w);
							end
							if string.len( w) < 10 then
								table.insert( tData, w);
							end
						end

					--[[ 5 ]]-- вставить недостающие данные в БД клиента
						for j = 1, #tTime do
							insertInto( dbPathClient, tDbTables[ i], tTime[ j], tData[ j]);
						end
						tTime = {};
						tData = {};
						i = i + 1;
						if i > #tDbTables then
							sckHnd:send( ".quit\n")
							Core.addLogMsg("client: sent > quit");
							loop = false;
						end
			end
	::down::
			sckHnd:close()
		else
			Core.addLogMsg("client: error creating client socket")
			return -1;
	end
end
