-- 23-08-2019
-- 14-01-2020

require ("./SPT943_SyncDB_Functions/server");

local nodeName = tostring( Core.getName());	-- получить имя узла
local host_1_name = "SERVER_1.SPT943_SYNC_DB_SERVER";	-- имя узла (сервера 1)
local host_2_name = "SERVER_2.SPT943_SYNC_DB_SERVER";	-- имя узла (сервера 2)
local host_1 = "192.168.1.251";							-- IP сервера 1
local host_2 = "192.168.1.252";							-- IP сервера 2
local port = 10500;
local host;

if nodeName == host_1_name then
	host = host_1;
end

if nodeName == host_2_name then
	host = host_2;
end

server( host, port);
