--[[
   name: 	selectFromSrcInsertIntoDsc - извлекает последние недостающие записи из БД
   @param	dbTable
   @param	diff
   @return	tTime, tData
]]--

function selectFrom( dbTable, dbPath, diff)
	local tTime = {};
	local tData = {};

	luasql = require "luasql.sqlite3";
	env = assert ( luasql.sqlite3());
	con = env:connect( dbPath);

	cur, err = con:execute('SELECT * FROM ' .. dbTable .. ' ORDER BY unixDT DESC LIMIT ' .. diff .. ';');	--	извлечь последние недостающие записи из БД (отсортированы)
	key = cur:fetch( {}, 'a');
	table.insert( tTime, key.unixDT);
	table.insert( tData, key.data);

	while key do
		key, value = cur:fetch( {}, 'a');
		if key == nil then
			break;
		end
		table.insert( tTime, key.unixDT);
		table.insert( tData, key.data);
	end

	env:close();
	return tTime, tData;
end