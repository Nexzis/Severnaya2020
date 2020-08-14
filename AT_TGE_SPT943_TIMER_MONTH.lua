-- таймер запуска драйвера месячного опроса теплосчётчика (раз в месяц)
-- запускается 01 числа каждого месяца в 01 час 15 минут
-- в 01 час 10 минут запускается драйвер часового опроса, в 05 минут каждого часа запускается драйвера часового опроса

local flag = 0;		-- флаг однократности срабатывания
local nodeName = tostring(Core.getName());	-- получить имя узла

function f1( )
	if Core.isReserved( nodeName, 1) == false then
		Core.addLogMsg( "SPT943_DRIVER_MONTH: сервер ОСНОВНОЙ, таймер включён.");
	end
	
	while ( 1) do
		os.sleep( 60);	-- 60 секунд
		if Core.isReserved( nodeName,1) == true then
			Core.addLogMsg( "SPT943_DRIVER_MONTH: сервер РЕЗЕРВНЫЙ, таймер отключён.");
			break;
		end
		local t = os.date( "*t");
		if t.month == 1 and t.hour == 1 and t.min == 15 and flag == 0 then
			Core.TimerRequestControl.StartRequestMonth = true;
			flag = 1;
			local strH = string.format( "%02d.%02d.", t.day, t.month ) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);
			Core.addLogMsg( "SPT943_DRIVER_MONTH: запуск драйвера месячного опроса теплосчётчика " .. strH);
			os.sleep(3);
			Core.TimerRequestControl.StartRequestMonth = false;
			flag = 0;
		end
	end
end

while (1) do
	f1();
end