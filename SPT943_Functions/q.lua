local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";
require ('./SPT943_Functions/mathsum');

function q( ch, year)
	local wait = 0.15;
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
  
	curFirst, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. [[ LIMIT 1;]]);	-- извлечь время из первой строки
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
								[[ ORDER BY unixDT DESC LIMIT 1;]]);	-- извлечь время из последней строки
	tLast = curLast:fetch( {}, 'a');
	t = os.date( "*t", tLast.unixDT);
	yearLast = t.year;		-- получить год из последней строки
	
	if year < yeaFirst or year > yearLast then
		Core.WarningMessageVisible = true;
		Core.WarningMessage = 'Выбранный год ' .. year .. '\nнаходится за пределами архива!\n\n' .. 'Начало архива: ' .. yeaFirst .. '\nКонец архива: ' .. yearLast;
		curFirst:close();
		curLast:close();
		env:close();
		return;
	end
		
	Core.Header_Text = "Квартальный отчёт за " .. year .. " год"
	--print( "Квартальный отчёт за " .. year .. " год");
	local tQ = {
				[ 1] = tostring( os.time{ year = year, month = 1, day = 1, hour = 0}),	-- задать дату 01.01.2017 (начало 1 квартала)
				[ 2] = tostring( os.time{ year = year, month = 3, day = 31, hour = 0}),	-- задать дату 31.03.2017 (конец 1 квартала)
				[ 3] = tostring( os.time{ year = year, month = 4, day = 1, hour = 0}),	-- задать дату 01.04.2017 (начало 2 квартала)
				[ 4] = tostring( os.time{ year = year, month = 6, day = 30, hour = 0}),	-- задать дату 30.06.2017 (конец 2 квартала)
				[ 5] = tostring( os.time{ year = year, month = 7, day = 1, hour = 0}),	-- задать дату 01.07.2017 (начало 3 квартала)
				[ 6] = tostring( os.time{ year = year, month = 9, day = 30, hour = 0}),	-- задать дату 30.09.2017 (конец 3 квартала)
				[ 7] = tostring( os.time{ year = year, month = 10, day = 1, hour = 0}),	-- задать дату 01.10.2017 (начало 4 квартала)
				[ 8] = tostring( os.time{ year = year, month = 12, day = 31, hour = 0})	-- задать дату 31.12.2017 (конец 4 квартала)
			};

	 	Core.SPT943.I_ROW = 0;
		Core.SPT943.I_COLUMN = 0;
		Core.SPT943.I_TEXT = "  I квартал " .. year .. " г.";
		Core.SPT943.EI_SET = true;
		os.sleep(wait);

		Core.SPT943.I_ROW = 1;
		Core.SPT943.I_COLUMN = 0;
		Core.SPT943.I_TEXT = " II квартал " .. year .. " г.";
		Core.SPT943.EI_SET = true;
		os.sleep(wait);

		Core.SPT943.I_ROW = 2;
		Core.SPT943.I_COLUMN = 0;
		Core.SPT943.I_TEXT = "III квартал " .. year .. " г.";
		Core.SPT943.EI_SET = true;
		os.sleep(wait);

		Core.SPT943.I_ROW = 3;
		Core.SPT943.I_COLUMN = 0;
		Core.SPT943.I_TEXT = " IV квартал " .. year .. " г.";
		Core.SPT943.EI_SET = true;
		os.sleep(wait);

	 -- print ("  I квартал " .. year .. " г.");
	 -- print (" II квартал " .. year .. " г.");
	 -- print ("III квартал " .. year .. " г.");
	 -- print (" IV квартал " .. year .. " г.");
	
	luasql = require "luasql.sqlite3";
	env = assert (luasql.sqlite3());
	con = env:connect( dataBasePath, NOCREATE);

	local tSum = {};-- таблица для хранения сумм данных по кварталам
	local j = 1;
	 for i = 1, 4 do
		 
		 cur, err = con:execute( [[SELECT SUM(data) AS sum FROM ]] .. archiveType .. 
								 [[ WHERE unixDT >=  ]] .. tQ[ j] .. 
								 [[ AND unixDT <= ]] .. tQ[ j + 1] .. [[;]]);

		 t = cur:fetch( {}, 'a');
		 if t.sum == nil then
				Core.SPT943.I_ROW = i-1;
				Core.SPT943.I_COLUMN = ch;
				Core.SPT943.I_TEXT = 'нет данных';	-- записать строку 'нет данных' в табло
				Core.SPT943.EI_SET = true;
				os.sleep(wait);
			else
				Core.SPT943.I_ROW = i-1;
				Core.SPT943.I_COLUMN = ch;
				Core.SPT943.I_TEXT = t.sum;			-- записать значения data в табло
				Core.SPT943.EI_SET = true;
				os.sleep(wait);
				table.insert( tSum, t.sum);
		 end
		 cur:close();
		 j = j + 2;
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
--	 local sum = mathsum( tSum);														-- вычисление суммы значений
--	print( min);
--	print( max);
--	print( avg);
--	print( sum);
	
	con:close();
	env:close();
end

--======================================================================================================
-- ПРОВЕРКА:
--======================================================================================================

--	 local ch = 1;		-- канал прибора для многоканального прибора ( он же номер столбца на мнемосхеме)
--	 local chNum = 2;	-- количество каналов (столбцов) для которых необходимо произвести вычисления
--	 local year = 2016;

--	 for ch = 1, chNum do	
--		 q( ch, year);
--	 end
