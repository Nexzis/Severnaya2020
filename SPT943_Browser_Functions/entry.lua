local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

function entryHdm( userDT, archiveType)
	Core.addLogMsg( "entryHdm: вход")
	luasql = require "luasql.sqlite3";
	env = assert (luasql.sqlite3());
	con = env:connect( dataBasePath, NOCREATE);
	
	-- извлечение первой даты из архива
	cur, err = con:execute( [[SELECT time FROM ]] .. archiveType .. [[ LIMIT 1;]]);
	if err == 'LuaSQL: no such table: ' .. archiveType then						-- в БД отсутствует запрашиваемая таблица
		print( 'ERROR! LuaSQL: no such table: ' .. archiveType);
		return 'exit';
	end
	t = cur:fetch( {}, 'a');
	if t == nil then
		print( 'ERROR! SQLite3 cursor (closed)');								-- в запрашиваемой таблице нет записей
		return 'exit';
	end
	local firstDT = t.time;
		cur:close();

	-- извлечение последней даты из архива
	cur, err = con:execute( [[SELECT time FROM ]] .. archiveType .. 
							[[ ORDER BY time DESC LIMIT 1;]])
	t = cur:fetch( {}, 'a');
	local lastDT = t.time;
	cur:close();

	if userDT < firstDT or lastDT < userDT then
		Core[client.."WarningMessageVisible"] = true;
		Core.WarningMessage = 'Выбранная дата ' .. os.date("%d.%m.%Y %H:%M", userDT) .. '\nнаходится за пределами архива!\n\n' .. 'Начало архива: ' .. os.date("%d.%m.%Y %H:%M", firstDT) .. '\nКонец архива: ' .. os.date("%d.%m.%Y %H:%M", lastDT);
		-- ВИДИМО УДАЛИТЬ!!! Core.WarningMessage = "Выбранный год - " .. year .. "\nнаходится за пределами архива,\n\n" .. "начало архива: " .. strYearStart .. ",\n конец архива: " .. strYearEnd .. ".";
		print( 'Начало архива: ' .. os.date("%d.%m.%Y %H:%M", firstDT));
		print( 'Конец архива: ' .. os.date("%d.%m.%Y %H:%M", lastDT));
		cur:close();
		con:close();
		env:close();
		Core.addLogMsg( "entryHdm: выход")
		return 'exit';
	end
end
