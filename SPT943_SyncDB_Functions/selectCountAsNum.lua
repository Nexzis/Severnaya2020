--[[
   name: selectCountAsNum	- подсчитывает количество строк в таблицах БД
   @param	dbTable			- таблица БД в которой необходимо подсчитать строки
   @param	dbPath			- путь к БД
   @return					- количество строк в таблице БД
]]--

function selectCountAsNum( dbTable, dbPath)

	luasql = require "luasql.sqlite3";
	env, err = assert ( luasql.sqlite3());

	if err then
		Core.addLogMsg( "selectCountAsNum: err assert ==> " .. err);
		con:close();
		env:close();
		return -1;
	end

	con, err = env:connect( dbPath);

	if err then
		Core.addLogMsg( "selectCountAsNum: err connect ==> " .. err);
		con:close();
		env:close();
		return -1;
	end

	cur, err = con:execute([[SELECT COUNT(unixDT) AS num FROM ]] ..dbTable .. [[;]]);	-- подсчитать количество строк в БД

	if err then
		Core.addLogMsg( "selectCountAsNum: err execute ==> " .. err);
		con:close();
		env:close();
		return -1;
	end
	key = cur:fetch( {}, 'a');
	cur:close();
	con:close();
	env:close();
	return key.num;
end