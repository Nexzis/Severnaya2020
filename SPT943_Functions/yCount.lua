local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

function yCount( )
	local archiveType = 'DateArchive_1';
	
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

	curFirst, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. [[ LIMIT 1;]]);	-- извлечь время из первой строки БД
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

	curLast, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. [[ ORDER BY unixDT DESC LIMIT 1;]]);	-- извлечь время из последней строки БД
	tLast = curLast:fetch( {}, 'a');
	t = os.date( "*t", tLast.unixDT);
	yearLast = t.year;		-- получить год из последней строки

	Core.Header_Text = "Годовой отчёт с " .. yeaFirst .. " по " .. yearLast .. " годы";

	for i = yeaFirst, yearLast do	-- составить список всех годов присутствующих в архиве
		table.insert( tYears, i);
	end
	return #tYears;
end
