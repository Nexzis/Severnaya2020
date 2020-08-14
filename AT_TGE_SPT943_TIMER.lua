-- 02-07-2019
-- таймер запуска драйвера опроса теплосчётчика (раз в час)
-- запускается в 05 минут каждого часа

local flag = 0;		-- флаг однократности срабатывания
local nodeName = tostring(Core.getName());	-- получить имя узла

function f1( )
	if Core.isReserved( nodeName, 1) == false then
		Core.addLogMsg( nodeName .. ": сервер ОСНОВНОЙ, таймер включён.");
	end

	while ( 1) do
		os.sleep( 60);	-- 60 секунд
		if Core.isReserved( nodeName,1) == true then
			Core.addLogMsg( nodeName .. ": сервер РЕЗЕРВНЫЙ, таймер отключён.");
			break;
		end
		local t = os.date( "*t");
		if t.min == 5 and flag == 0 then
			Core.TimerRequestControl.StartRequest = true;
			flag = 1;
			local strH = string.format( "%02d.%02d.", t.day, t.month ) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);
			Core.addLogMsg( nodeName .. ": запуск драйвера опроса теплосчётчика " .. strH);
			os.sleep(3);
			Core.TimerRequestControl.StartRequest = false;
			flag = 0;
		end
	end
end

while (1) do
	f1();
end
