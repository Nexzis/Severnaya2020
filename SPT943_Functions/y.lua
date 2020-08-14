local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";
require ('./SPT943_Functions/mathsum');

function y( ch)
	local wait = 0.1;
	local archiveType = 'DateArchive_' .. tostring( ch);
	
	if dataBasePath == nil then
		print('ОШИБКА! Не указан путь к базе данных.');
		Core.addLogMsg('ОШИБКА! Не указан путь к базе данных.');
		Core.WarningMessageVisible = true;
		Core.WarningMessage = 'ОШИБКА! Не указан путь к базе данных.';
		return 'exit';
	end

	-- проверка полученного значения года на вхождение в архив
	local yeaFirst;			-- первый год в архиве
	local yearLast;			-- последний год в архиве
	local tYears = {};		-- список всех годов присутствующих в архиве
	
	luasql = require "luasql.sqlite3";
	env = assert (luasql.sqlite3());
	con = env:connect( dataBasePath, NOCREATE);
  
	curFirst, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. 
									[[ LIMIT 1;]]);	-- извлечь время из первой строки БД
	tFirst = curFirst:fetch( {}, 'a');
  
	if tFirst == nil then
		print( 'ERROR! SQLite3 cursor (closed), в запрашиваемой таблице ' .. archiveType .. ' нет записей!');
		Core.addLogMsg( 'ERROR! SQLite3 cursor (closed), в запрашиваемой таблице ' .. archiveType .. ' нет записей!');
		Core.WarningMessageVisible = true;
		Core.WarningMessage = 'ОШИБКА! в БД отсутствует' .. '\nзапрашиваемая таблица ' .. archiveType .. '.';
		return 'exit';
	end
	t = os.date( "*t", tFirst.unixDT);
	yeaFirst = t.year;		-- получить год из первой строки

	curLast, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. 
								[[ ORDER BY unixDT DESC LIMIT 1;]]);	-- извлечь время из последней строки БД
	tLast = curLast:fetch( {}, 'a');
	t = os.date( "*t", tLast.unixDT);
	yearLast = t.year;		-- получить год из последней строки

	Core.Header_Text = "Годовой отчёт с " .. yeaFirst .. " по " .. yearLast .. " годы";

	
	local j = 0;
	for i = yeaFirst, yearLast do							-- составить список всех годов присутствующих в архиве
		table.insert( tYears, i);
		Core.SPT943.I_ROW = j;
		Core.SPT943.I_COLUMN = 0;
		Core.SPT943.I_TEXT = tYears[ j + 1];	-- 	-- записать "годы" в табло
		Core.SPT943.EI_SET = true;
		os.sleep( wait);
		j = j + 1;
	end

	local unixDTFirst;	-- начало года
	local unixDTLast;	-- конец года
	local tSum = {};	-- таблица для хранения сумм данных по годам

	for i = 1, #tYears do
		unixDTFirst =  tostring( os.time{ year = tYears[ i], month = 1, day = 1, hour = 0}); -- задать первую дату года
		unixDTLast =  tostring(os.time{ year = tYears[ i], month = 12, day = 31, hour = 0}); -- задать последнюю дату года

		curBetween, err = con:execute( [[SELECT SUM(data) AS sum FROM ]] .. archiveType ..
										[[ WHERE unixDT >= ]] .. unixDTFirst .. 
										[[ AND unixDT <= ]] .. unixDTLast .. [[;]]);

		t = curBetween:fetch( {}, 'a');
		for k, v in pairs( t) do
			table.insert( tSum, t.sum);
			Core.SPT943.I_ROW = i-1;
			Core.SPT943.I_COLUMN = ch;
			Core.SPT943.I_TEXT = t.sum;		-- записать значения data в табло
			Core.SPT943.EI_SET = true;
			os.sleep( wait);
		end
	end
	
	 Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 4;
	 Core.SPT943.I_COLUMN = ch;
	 Core.SPT943.I_TEXT = math.min(table.unpack( tSum));										-- вычисление минимальных значений
	 Core.SPT943.EI_SET = true;
	 os.sleep(wait);
	 
	 Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 3;
	 Core.SPT943.I_COLUMN = ch;
	 Core.SPT943.I_TEXT = math.max(table.unpack( tSum));										-- вычисление максимальных значений
	 Core.SPT943.EI_SET = true;
	 os.sleep(wait);
	 
	 Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 2;
	 Core.SPT943.I_COLUMN = ch;
	 Core.SPT943.I_TEXT = (math.max(table.unpack( tSum)) + math.min(table.unpack( tSum))) / 2;	-- вычисление средних значений
	 Core.SPT943.EI_SET = true;
	 os.sleep(wait);
	 
	 Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 1;
	 Core.SPT943.I_COLUMN = ch;
	 Core.SPT943.I_TEXT = mathsum( tSum);														-- вычисление суммы значений
	 Core.SPT943.EI_SET = true;
	 os.sleep(wait);
	

--	 local min = math.min(table.unpack( tSum));											-- вычисление минимальных значений
--	 local max = math.max(table.unpack( tSum));											-- вычисление максимальных значений
--	 local avg = (math.max(table.unpack( tSum)) + math.min(table.unpack( tSum))) / 2;	-- вычисление средних значений
--	 local sum = mathsum( tSum);															-- вычисление суммы значений
--	print( min);
--	print( max);
--	print( avg);
--	print( sum);
	
	curFirst:close();
	curLast:close();
	curBetween:close();
	env:close();
end

--======================================================================================================
--ПРОВЕРКА:
--======================================================================================================

-- local ch = 1;		-- канал прибора для многоканального прибора ( он же номер столбца на мнемосхеме)
-- local chNum = 2;	-- количество каналов (столбцов) для которых необходимо произвести вычисления

-- for ch = 1, chNum do
--   y( ch);
-- end
