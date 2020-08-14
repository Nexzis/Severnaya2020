
dbPath_Src = 'C:/!Projects/SPT943_SQL_v5.0/Design/SPT943_Functions/SPT943.sqlite';			-- БД сервера 1
dbPath_Dst = 'C:/!Projects/SPT943_SQL_v5.0/Design/SPT943_Functions/SPT943_res.sqlite';		-- БД сервера 2

-- массив с именами таблиц в БД
tTables = { [1] = "HourArchive_1",
                  [2] = "HourArchive_2",
                  [3] = "DateArchive_1",
                  [4] = "DateArchive_2",
                  [5] = "MonthArchive_1",
                  [6] = "MonthArchive_2"
				};
        
-- массив для сохранения количества строк в таблицах БД    
tRowsNum_Src = {}; -- массив для сохранения количества строк в таблицах БД-источника
tRowsNum_Dst = {}; -- массив для сохранения количества строк в таблицах БД-приёмника        

  --[[--------------------------------------------------------------------------
  -- функция подсчитывает количество строк в таблицах БД-источника(приёмника)
  -- возвращает таблицу с количеством строк
  --]]-------------------------------------------------------------------------
function selectCountAsNum( tTables, dbPath)
	luasql = require "luasql.sqlite3";
	env = assert ( luasql.sqlite3());
	con = env:connect( dbPath);

	cur, err = con:execute([[SELECT COUNT(unixDT) AS num FROM ]] ..tTables .. [[;]]);	-- подсчитать количество строк в БД-источника

	if err ~= nil then
		--print( "selectCountAsNum: err execute ==> " .. err);
		Core.addLogMsg( "selectCountAsNum: err execute ==> " .. err);
		con:close();
		env:close();
		return -1;
	end
	key = cur:fetch( {}, 'a');
	cur:close();
	con:close();
	env:close();
	return key.num; -- вернуть количество строк в БД-источника(приёмника)
end

  --[[--------------------------------------------------------------------------
  -- функция вычисляет разность строк в таблицах БД-источника и БД-приёмника
  -- извлекает последние недостающие записи из БД-источника
  -- вставляет в БД-назначения недостающие записи из БД-источника
  --]]--------------------------------------------------------------------------
function selectFromSrcInsertIntoDsc( i)
	local tTime = {};
	local tData = {};

	luasql_1 = require "luasql.sqlite3";
	env_1 = assert (luasql_1.sqlite3());
	con_1 = env_1:connect(dbPath_Src);

	luasql_2 = require "luasql.sqlite3";
	env_2 = assert (luasql_2.sqlite3());
	con_2 = env_2:connect(dbPath_Dst);

	local tbl = tTables[ i];
	local diff = tostring(tRowsNum_Src[ i] - tRowsNum_Dst[ i]);-- вычислить разность
	--Core.addLogMsg("diff" .. " --> " .. diff);
	if diff == '0' then
		Core.addLogMsg("Таблицы " .. tbl .. " одинаковы, выход.")
		goto m1;
	end
	cur_1, err_1 = con_1:execute('SELECT * FROM ' .. tbl .. ' ORDER BY unixDT DESC LIMIT ' .. diff .. ';');	--	извлечь последние недостающие записи из БД1 (отсортированы)
	key = cur_1:fetch( {}, 'a');
	table.insert(tTime, key.unixDT);
	table.insert(tData, key.data);
		
	while key do
		key, value = cur_1:fetch( {}, 'a');
		if key == nil then
			break;
		end
		table.insert(tTime, key.unixDT);
		table.insert(tData, key.data);
	end
	for i = 1, #tTime do
		cur_2, err_2 = con_2:execute([[INSERT INTO ]] .. tbl .. [[(unixDT, data) VALUES(]] .. tostring(tTime[ i]) .. ',' .. tostring(tData[ i]) .. [[);]]);
	end
::m1::
	con_1:close();
	env_1:close();
	con_2:close();
	env_2:close();
end