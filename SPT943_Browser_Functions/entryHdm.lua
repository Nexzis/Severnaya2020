local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

function entryHdm( archiveType, firstUnixDT, lastUnixDT, client)
	Core.addLogMsg( "entryHdm: вход")
	if dataBasePath == nil then
	print('ОШИБКА! Не указан путь к базе данных.');
	Core.addLogMsg('ОШИБКА! Не указан путь к базе данных.');
	Core[client.."WarningMessageVisible"] = true;
	Core[client.."WarningMessage"] = 'ОШИБКА! Не указан путь к базе данных.';
		return 'exit';
	end
	
	luasql = require "luasql.sqlite3";
	env = assert (luasql.sqlite3());
	con, err = env:connect( dataBasePath, NOCREATE);
	
	-- извлечение первой даты из архива
	cur, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. [[ LIMIT 1;]]);
	if err == 'LuaSQL: no such table: ' .. archiveType then
		print( 'ERROR! LuaSQL: no such table: ' .. archiveType .. ', в БД отсутствует запрашиваемая таблица!');
		Core.addLogMsg( 'ERROR! LuaSQL: no such table: ' .. archiveType .. ', в БД отсутствует запрашиваемая таблица!');
		Core[client.."WarningMessageVisible"] = true;
		Core[client.."WarningMessage"] = 'ОШИБКА! в БД отсутствует' .. '\nзапрашиваемая таблица ' .. archiveType .. '.';
		return 'exit';
	end
	t = cur:fetch( {}, 'a');
	if t == nil then
		print( 'ERROR! SQLite3 cursor (closed), в запрашиваемой таблице ' .. archiveType .. ' нет записей!');
		Core.addLogMsg( 'ERROR! SQLite3 cursor (closed), в запрашиваемой таблице ' .. archiveType .. ' нет записей!');
		Core[client.."WarningMessageVisible"] = true;
		Core[client.."WarningMessage"] = 'ОШИБКА! в БД отсутствует' .. '\nзапрашиваемая таблица ' .. archiveType .. '.';
		return 'exit';
	end
	local firstDT = t.unixDT;
		cur:close();

	-- извлечение последней даты из архива
	cur, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. 
							[[ ORDER BY unixDT DESC LIMIT 1;]])
	t = cur:fetch( {}, 'a');
	local lastDT = t.unixDT;
	cur:close();
	
	-- проверка даты начала периода на вхождение в архив
	if firstUnixDT < firstDT or lastDT < firstUnixDT then
		Core[client.."WarningMessageVisible"] = true;
		Core[client.."WarningMessage"] = 'Начало периода ' .. os.date("%d.%m.%Y %H:%M", firstUnixDT) .. '\nнаходится за пределами архива!\n\n' .. 'Начало архива: ' .. os.date("%d.%m.%Y %H:%M", firstDT) .. '\nКонец архива: ' .. os.date("%d.%m.%Y %H:%M", lastDT);
		-- ВИДИМО УДАЛИТЬ!!! Core[client.."WarningMessage"] = "Выбранный год - " .. year .. "\nнаходится за пределами архива,\n\n" .. "начало архива: " .. strYearStart .. ",\n конец архива: " .. strYearEnd .. ".";
		print( 'Начало архива: ' .. os.date("%d.%m.%Y %H:%M", firstDT));
		print( 'Конец архива: ' .. os.date("%d.%m.%Y %H:%M", lastDT));
		cur:close();
		con:close();
		env:close();
		Core.addLogMsg( "entryHdm: выход")
		return 'exit';
	end
	
	-- проверка даты конца периода на вхождение в архив
	if lastUnixDT < firstDT or lastDT < lastUnixDT then
		Core[client.."WarningMessageVisible"] = true;
		Core[client.."WarningMessage"] = 'Конец периода ' .. os.date("%d.%m.%Y %H:%M", firstUnixDT) .. '\nнаходится за пределами архива!\n\n' .. 'Начало архива: ' .. os.date("%d.%m.%Y %H:%M", firstDT) .. '\nКонец архива: ' .. os.date("%d.%m.%Y %H:%M", lastDT);
		-- ВИДИМО УДАЛИТЬ!!! Core[client.."WarningMessage"] = "Выбранный год - " .. year .. "\nнаходится за пределами архива,\n\n" .. "начало архива: " .. strYearStart .. ",\n конец архива: " .. strYearEnd .. ".";
		print( 'Начало архива: ' .. os.date("%d.%m.%Y %H:%M", firstDT));
		print( 'Конец архива: ' .. os.date("%d.%m.%Y %H:%M", lastDT));
		cur:close();
		con:close();
		env:close();
		Core.addLogMsg( "entryHdm: выход")
		return 'exit';
	end
Core.addLogMsg( "entryHdm: даты начала и конца периода входят в архив, выход")
end
