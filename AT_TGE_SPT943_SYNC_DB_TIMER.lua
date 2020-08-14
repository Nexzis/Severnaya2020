-- таймер запуска синхронизации БД (раз в час)
-- запускается на клиентах

local flag = 0;		-- флаг однократности срабатывания
local min_1 = 15;
local min_2 = 15;
Core.addLogMsg( "SPT943_SYNC_DB_TIMER: таймер синхронизации БД клиентов включён, минуты срабатывания: " .. min_1 .. ", " .. min_2);

while ( 1) do
	os.sleep( 60);	-- 1 минута
	t = os.date( "*t");
	if t.min == min_1 and flag == 0 then
		local strH = string.format( "%02d.%02d.", t.day, t.month ) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);
		Core.addLogMsg( "SPT943_SYNC_DB_TIMER: запуск таймера синхронизации БД клиента 1 " .. strH);
		Core.Client_1.StartSyncDB = true;
		flag = 1;
		os.sleep(3);
		flag = 0;
		Core.Client_1.StartSyncDB = false;
	end
	
	if t.min == min_2 and flag == 0 then
		local strH = string.format( "%02d.%02d.", t.day, t.month ) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);
		Core.addLogMsg( "SPT943_SYNC_DB_TIMER: запуск таймера синхронизации БД  клиента 2 " .. strH);
		Core.Client_2.StartSyncDB = true;
		flag = 1;
		os.sleep(3);
		flag = 0;
		Core.Client_2.StartSyncDB = false;
	end
end
