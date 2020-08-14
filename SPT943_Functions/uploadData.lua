local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

require ("./SPT943_Functions/rowCount");
require ("./SPT943_Functions/buildTTable");
require ("./SPT943_Functions/extract");
require ("./SPT943_Functions/q");
require ("./SPT943_Functions/yCount");
require ("./SPT943_Functions/y");

function uploadData( )
	Core.addLogMsg( "uploadData: вход")
	--local ch = 1;		-- канал прибора для многоканального прибора ( он же номер столбца на мнемосхеме)
	local chNum = 2;	-- количество каналов (столбцов) для которых необходимо произвести вычисления
	local button = "";
	local firstUnixDT;
	local lastUnixDT;
	local wait = 0.05;

-- ================== ЧАСОВОЙ АРХИВ ==================

	if Core.ArchiveSelectComboBox.O_INDEX == 0 then
		firstUnixDT = Core.DTEditor_Start.O_DT;	-- DATE AND TIME
		firstUnixDT = tostring( firstUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		firstUnixDT = tonumber( string.sub(firstUnixDT, 1, 10));
		
		lastUnixDT = Core.DTEditor_Last.O_DT;	-- DATE AND TIME
		lastUnixDT = tostring( lastUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		lastUnixDT = tonumber( string.sub(lastUnixDT, 1, 10));
		
		-- проверить корректность ввода дат
		if firstUnixDT >= lastUnixDT then
			Core.WarningMessageVisible = true;
			Core.WarningMessage = 'Некорректный ввод диапазона времени.' .. '\nНачало периода позже конца периода или совпадают.';
			return;
		end
		
		-- Core.addLogMsg("uploadData: firstUnixDT " .. firstUnixDT);
		-- Core.addLogMsg("uploadData: lastUnixDT " .. lastUnixDT);
		
		button = 'h';
		local ret = rowCount( button, firstUnixDT, lastUnixDT);
		
		-- удалить все строки
		if Core.SPT943.O_ROW_COUNT ~= 0 then
			Core.SPT943.EI_REMOVE_ROWS = true;
			os.sleep( wait);
		end 
		
		buildTTable( ret);
		
		for ch = 1, chNum do
			extract( button, ch, firstUnixDT, lastUnixDT);
		end
	end

-- ================== СУТОЧНЫЙ АРХИВ ==================

	if Core.ArchiveSelectComboBox.O_INDEX == 1 then
		firstUnixDT = Core.DateEditor_Start.O_DATE;	-- DATE
		firstUnixDT = tostring( firstUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		firstUnixDT = tonumber( string.sub(firstUnixDT, 1, 10));
		
		lastUnixDT = Core.DateEditor_Last.O_DATE;	-- DATE
		lastUnixDT = tostring( lastUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		lastUnixDT = tonumber( string.sub(lastUnixDT, 1, 10));

		-- проверить корректность ввода дат
		if firstUnixDT >= lastUnixDT then
			Core.WarningMessageVisible = true;
			Core.WarningMessage = 'Некорректный ввод диапазона времени.' .. '\nНачало периода позже конца периода или совпадают.';
			return;
		end
		-- Core.addLogMsg("uploadData: firstUnixDT " .. firstUnixDT);
		-- Core.addLogMsg("uploadData: lastUnixDT " .. lastUnixDT);
		
		button = 'd';
		local ret = rowCount( button, firstUnixDT, lastUnixDT);
		
				-- удалить все строки
		if Core.SPT943.O_ROW_COUNT ~= 0 then
			Core.SPT943.EI_REMOVE_ROWS = true;
			os.sleep( wait);
		end 
		
		buildTTable( ret);
		
		for ch = 1, chNum do
			extract( button, ch, firstUnixDT, lastUnixDT);
		end
	end

-- ================== МЕСЯЧНЫЙ АРХИВ ==================

	if Core.ArchiveSelectComboBox.O_INDEX == 2 then
		firstUnixDT = Core.DateEditor_Start.O_DATE;
		firstUnixDT = tostring( firstUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		firstUnixDT = tonumber( string.sub(firstUnixDT, 1, 10));
		
		lastUnixDT = Core.DateEditor_Last.O_DATE;
		lastUnixDT = tostring( lastUnixDT  - 10800);	-- МИНУС 3 часа для Санкт-Петербурга
		lastUnixDT = tonumber( string.sub(lastUnixDT, 1, 10));
		
		-- проверить корректность ввода дат
		if firstUnixDT >= lastUnixDT then
			Core.WarningMessageVisible = true;
			Core.WarningMessage = 'Некорректный ввод диапазона времени.' .. '\nНачало периода позже конца периода или совпадают.';
			return;
		end
		-- Core.addLogMsg("uploadData: firstUnixDT " .. firstUnixDT);
		-- Core.addLogMsg("uploadData: lastUnixDT " .. lastUnixDT);
		
		button = 'm';
		local ret = rowCount( button, firstUnixDT, lastUnixDT);
		
		-- удалить все строки
		if Core.SPT943.O_ROW_COUNT ~= 0 then
			Core.SPT943.EI_REMOVE_ROWS = true;
			os.sleep( wait);
		end 
		
		buildTTable( ret);
		
		for ch = 1, chNum do
			extract( button, ch, firstUnixDT, lastUnixDT);
		end
	end

-- ================== КВАРТАЛЬНЫЙ АРХИВ ==================

	if Core.ArchiveSelectComboBox.O_INDEX == 3 then
		-- удалить все строки
		if Core.SPT943.O_ROW_COUNT ~= 0 then
			Core.SPT943.EI_REMOVE_ROWS = true;
			os.sleep( wait);
		end
		-- построить таблицу
		buildTTable( 4);
		--buildTTable( 3);
		Core.YearSelectComboBox.I_INDEX = 1;
		local year = tonumber(Core.YearSelectComboBox.O_TEXT);
		Core.addLogMsg('YearSelectComboBox.O_TEXT ' .. Core.YearSelectComboBox.O_TEXT)
		Core.addLogMsg('year ' .. tostring(year))
		for ch = 1, chNum do
			q( ch, year);
		end
		Core.SPT943.EI_REMOVE_ROWS = false;
	end

-- ================== ГОДОВОЙ АРХИВ ==================

	if Core.ArchiveSelectComboBox.O_INDEX == 4 then
		-- удалить все строки
		if Core.SPT943.O_ROW_COUNT ~= 0 then
			Core.SPT943.EI_REMOVE_ROWS = true;
			os.sleep( wait);
		end 
		-- построить таблицу
		buildTTable( yCount( ));
		--buildTTable( yCount( ) - 1);
		for ch = 1, chNum do
			y( ch, yearList);
		end
		Core.SPT943.EI_REMOVE_ROWS = false;
	end
	Core.addLogMsg( "uploadData: выход")
end
