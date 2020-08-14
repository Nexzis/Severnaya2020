local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

require ("./SPT943_Browser_Functions/rowCount");
require ("./SPT943_Browser_Functions/buildTTable");
require ("./SPT943_Browser_Functions/extract");
require ("./SPT943_Browser_Functions/q");
require ("./SPT943_Browser_Functions/yCount");
require ("./SPT943_Browser_Functions/y");


function uploadData( client)
	Core.addLogMsg( "uploadData: вход")
	--local ch = 1;		-- канал прибора для многоканального прибора ( он же номер столбца на мнемосхеме)
	local chNum = 2;	-- количество каналов (столбцов) для которых необходимо произвести вычисления
	local button = "";
	local firstUnixDT;
	local lastUnixDT;
	local wait = 0.2;
	local ret;

-- ================== ЧАСОВОЙ АРХИВ ==================

	if Core[client.."ComboBox[0].O_INDEX"] == 0 then
		firstUnixDT = Core[client.."DateTimeEditor[0].O_DT"];	-- DATE AND TIME
		firstUnixDT = tostring( firstUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		firstUnixDT = tonumber( string.sub(firstUnixDT, 1, 10));
		
				 Core.addLogMsg("uploadData: firstUnixDT " .. firstUnixDT);
				 		 
				 
		lastUnixDT = Core[client.."DateTimeEditor[1].O_DT"];	-- DATE AND TIME
		lastUnixDT = tostring( lastUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		lastUnixDT = tonumber( string.sub(lastUnixDT, 1, 10));
		
				 Core.addLogMsg("uploadData: lastUnixDT " .. lastUnixDT);
		 
		 
		 
		-- проверить корректность ввода дат
	
		if firstUnixDT >= lastUnixDT then
			Core[client.."WarningMessageVisible"] = true;
			Core[client.."WarningMessage"] = 'Некорректный ввод диапазона времени.' .. '\nНачало периода позже конца периода или совпадают.';
			return;
		end
		

		
		
		button = 'h';
		ret = rowCount( button, firstUnixDT, lastUnixDT);
		
		buildTTable( ret, client);
		
		for ch = 1, chNum do
			extract( button, ch, firstUnixDT, lastUnixDT, client);
		end
		Core[client.."Message"] = "";
		Core[client.."MessageVisible"] = false;
	end

-- ================== СУТОЧНЫЙ АРХИВ ==================

	if Core[client.."ComboBox[0].O_INDEX"] == 1 then
		firstUnixDT = Core[client.."DateEditor[0].O_DATE"];	-- DATE
		firstUnixDT = tostring( firstUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		firstUnixDT = tonumber( string.sub(firstUnixDT, 1, 10));
		
		lastUnixDT = Core[client.."DateEditor[1].O_DATE"];	-- DATE
		lastUnixDT = tostring( lastUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		lastUnixDT = tonumber( string.sub(lastUnixDT, 1, 10));

		-- проверить корректность ввода дат
		if firstUnixDT >= lastUnixDT then
			Core[client.."WarningMessageVisible"] = true;
			Core[client.."WarningMessage"] = 'Некорректный ввод диапазона времени.' .. '\nНачало периода позже конца периода или совпадают.';
			return;
		end
		-- Core.addLogMsg("uploadData: firstUnixDT " .. firstUnixDT);
		-- Core.addLogMsg("uploadData: lastUnixDT " .. lastUnixDT);
		
		button = 'd';
		ret = rowCount( button, firstUnixDT, lastUnixDT);
		
		buildTTable( ret, client);
		
		for ch = 1, chNum do
			extract( button, ch, firstUnixDT, lastUnixDT, client);
		end
		Core[client.."Message"] = "";
		Core[client.."MessageVisible"] = false;
	end

-- ================== МЕСЯЧНЫЙ АРХИВ ==================

	if Core[client.."ComboBox[0].O_INDEX"] == 2 then
		firstUnixDT = Core[client.."DateEditor[0].O_DATE"];
		firstUnixDT = tostring( firstUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		firstUnixDT = tonumber( string.sub(firstUnixDT, 1, 10));
		
		lastUnixDT = Core[client.."DateEditor[1].O_DATE"];
		lastUnixDT = tostring( lastUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		lastUnixDT = tonumber( string.sub(lastUnixDT, 1, 10));
		
		-- проверить корректность ввода дат
		if firstUnixDT >= lastUnixDT then
			Core[client.."WarningMessageVisible"] = true;
			Core[client.."WarningMessage"] = 'Некорректный ввод диапазона времени.' .. '\nНачало периода позже конца периода или совпадают.';
			return;
		end
		-- Core.addLogMsg("uploadData: firstUnixDT " .. firstUnixDT);
		-- Core.addLogMsg("uploadData: lastUnixDT " .. lastUnixDT);
		
		button = 'm';
		ret = rowCount( button, firstUnixDT, lastUnixDT);
		
		buildTTable( ret, client);
		
		for ch = 1, chNum do
			extract( button, ch, firstUnixDT, lastUnixDT, client);
		end
		Core[client.."Message"] = "";
		Core[client.."MessageVisible"] = false;
	end

-- ================== КВАРТАЛЬНЫЙ АРХИВ ==================

	if Core[client.."ComboBox[0].O_INDEX"] == 3 then
		-- построить таблицу
		buildTTable( 4, client);
		--buildTTable( 3);
		Core[client.."ComboBox[1].I_INDEX"] = 1;
		local year = tonumber(Core[client.."ComboBox[1].O_TEXT"]);
		for ch = 1, chNum do
			q( ch, year, client);
		end
		Core[client.."Message"] = "";
		Core[client.."MessageVisible"] = false;
	end

-- ================== ГОДОВОЙ АРХИВ ==================

	if Core[client.."ComboBox[0].O_INDEX"] == 4 then
		-- построить таблицу
		 buildTTable( yCount( client), client);
		--buildTTable( yCount( ) - 1);
		for ch = 1, chNum do
			y( ch, client);
		end
		Core[client.."Message"] = "";
		Core[client.."MessageVisible"] = false;
	end
	Core.addLogMsg( "uploadData: выход")
end
