--[[
   name: insertInto
   @param
   @return
]]--

function insertInto( dbPath, dbTable, tDbTime, tDbData)
	luasql = require "luasql.sqlite3";
	env, err = assert ( luasql.sqlite3());
	con, err = env:connect( dbPath);
	cur, err = con:execute([[INSERT INTO ]] .. dbTable .. [[(unixDT, data) VALUES(]] .. tostring( tDbTime) .. ',' .. tostring( tDbData) .. [[);]]);
	con:close();
	env:close();
	Core.addLogMsg("insertInto: data successfully added to table " .. dbTable);
end