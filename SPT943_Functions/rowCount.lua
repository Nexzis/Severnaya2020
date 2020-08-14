local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

-- local archiveType = "MonthArchive_1";	-- тест
-- local firstUnixDT = 1551301200;			-- тест
-- local lastUnixDT = 1559250000;			-- тест

function rowCount( button, firstUnixDT, lastUnixDT)
	Core.addLogMsg( "rowCount: вход")
	local archiveType;		-- тип архива
	if button == 'h' then					-- ВЫБРАН ЧАСОВОЙ АРХИВ
			archiveType = 'HourArchive_1';
		elseif button == 'd' then			-- ВЫБРАН СУТОЧНЫЙ АРХИВ
			archiveType = 'DateArchive_1';
		elseif button == 'm' then			-- ВЫБРАН МЕСЯЧНЫЙ АРХИВ
			archiveType = 'MonthArchive_1';
	end
	
	luasql = require "luasql.sqlite3";
	env = assert (luasql.sqlite3());
	con = env:connect( dataBasePath, NOCREATE);
	
	-- получить количество строк необходимых для построения таблицы

	cur, err = con:execute( [[SELECT COUNT(unixDT) AS num FROM ]] .. archiveType .. 
							[[ WHERE unixDT >= ]] .. tostring(firstUnixDT) .. 
							[[ AND unixDT <= ]] .. tostring(lastUnixDT) .. [[;]]);
	t = cur:fetch( {}, 'a');

	cur:close();
	con:close();
	env:close();
	Core.addLogMsg( "rowCount: количество строк: " .. t.num)
	Core.addLogMsg( "rowCount: выход")
	return t.num;
end

-- local ret
-- ret = rowCount( archiveType, firstUnixDT, lastUnixDT);
-- print(ret)
