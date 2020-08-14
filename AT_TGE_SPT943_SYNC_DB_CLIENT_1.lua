-- 23-08-2019
-- 14-01-2020

require ("./SPT943_SyncDB_Functions/client")

local host_1_name = "SERVER_1";	-- имя сервера 1
local host_2_name = "SERVER_2";	-- имя сервера 2
local host_1 = "192.168.1.251";	-- IP сервера 1
local host_2 = "192.168.1.252";	-- IP сервера 2
local port = 10500;
local host;

function cbStartSyncDB()
	if Core.isReserved( host_1_name, 1) == false and Core.isReserved( host_2_name, 1) == true then			-- сервер 1 - ОСНОВНОЙ, сервер 2 - РЕЗЕРВНЫЙ
			Core.addLogMsg( "cbStartSyncDB: main server is " .. host_1_name);
			host = host_1;
		elseif Core.isReserved( host_2_name, 1) == false and Core.isReserved( host_1_name, 1) == true then	-- сервер 2 - ОСНОВНОЙ, сервер 1 - РЕЗЕРВНЫЙ
			Core.addLogMsg( "cbStartSyncDB: main server is " .. host_2_name);
			host = host_2;
		elseif Core.isReserved( host_1_name, 1) == false and Core.isReserved( host_2_name, 1) == false then	-- сервер 1 - ОСНОВНОЙ, сервер 2 - ОСНОВНОЙ
			Core.addLogMsg( "cbStartSyncDB: both servers is main");
			host = host_1;
		else 
			Core.addLogMsg( "cbStartSyncDB: main server is absent, exit");									-- оба сервера в РЕЗЕРВЕ
			Core.Client_1.StartSyncDB = false;
			return;
	end
	
	if Core.Client_1.StartSyncDB == true then
		Core.addLogMsg( "cbStartSyncDB: attempt to connect to host " .. host .. " on port " .. port);
		client( host, port);
		Core.Client_1.StartSyncDB = false;
	end
end

Core.onExtChange( {"Client_1.StartSyncDB"}, cbStartSyncDB);
Core.waitEvents();
