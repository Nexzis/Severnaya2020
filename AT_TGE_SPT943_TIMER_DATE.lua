-- таймер запуска драйвера суточного опроса теплосчётчика (раз в сутки)
-- запускается в 01 час 10 минут (в 05 минут каждого часа запускается драйвера часового опроса)

local flag = 0;		-- флаг однократности срабатывания
local nodeName = tostring(Core.getName());	-- получить имя узла

function f1( )
	if Core.isReserved( nodeName, 1) == false then
		Core.addLogMsg( "SPT943_DRIVER_DATE: сервер ОСНОВНОЙ, таймер включён.");
	end
	
	while ( 1) do
		os.sleep( 60);	-- 60 секунд
		if Core.isReserved( nodeName,1) == true then
			Core.addLogMsg( "SPT943_DRIVER_DATE: сервер РЕЗЕРВНЫЙ, таймер отключён.");
			break;
		end
		local t = os.date( "*t");
		if t.hour == 1 and t.min == 10 and flag == 0 then
			Core.TimerRequestControl.StartRequestDate = true;
			flag = 1;
			local strH = string.format( "%02d.%02d.", t.day, t.month ) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);
			Core.addLogMsg( "SPT943_DRIVER_DATE: запуск драйвера суточного опроса теплосчётчика " .. strH);
			os.sleep(3);
			Core.TimerRequestControl.StartRequestDate = false;
			flag = 0;
		end
	end
end

while (1) do
	f1();
end