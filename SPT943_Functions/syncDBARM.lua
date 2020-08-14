local nodeName = tostring(Core.getName());	-- получить имя узла
--package.cpath = [[D:/SONATA/9095_SQL/sqlite3.dll]];

-- массив с именами таблиц в БД
local tTables = { [1] = "HourArchive_1",
                  [2] = "HourArchive_2",
                  [3] = "DateArchive_1",
                  [4] = "DateArchive_2",
                  [5] = "MonthArchive_1",
                  [6] = "MonthArchive_2"
				};

-- массив для сохранения количества строк в таблицах БД    
local tRowsNum_Src = {}; -- массив для сохранения количества строк в таблицах БД-источника
local tRowsNum_Dst = {}; -- массив для сохранения количества строк в таблицах БД-приёмника        

  --[[--------------------------------------------------------------------------
  -- функция подсчитывает количество строк в таблицах БД-источника(приёмника)
  -- возвращает таблицу с количеством строк
  --]]-------------------------------------------------------------------------
function selectCountAsNum( tTables, dbPath)
	Core.addLogMsg( "selectCountAsNum: вход");
	luasql = require "luasql.sqlite3";
	env, err = assert ( luasql.sqlite3());
	
	if err ~= nil then
		Core.addLogMsg( "selectCountAsNum: err assert ==> " .. tostring(err));
		env:close();
		return -1;
	end
	
	con, err = env:connect( dbPath);
	
	if err ~= nil then
		Core.addLogMsg( "selectCountAsNum: err connect ==> " .. tostring(err));
		env:close();
		return -1;
	end

	cur, err = con:execute([[SELECT COUNT(unixDT) AS num FROM ]] ..tTables .. [[;]]);	-- подсчитать количество строк в БД-источника

	if err ~= nil then
		Core.addLogMsg( "selectCountAsNum: err execute ==> " .. tostring(err));
		con:close();
		env:close();
		return -1;
	end
	
	key = cur:fetch( {}, 'a');
	cur:close();
	con:close();
	env:close();
	Core.addLogMsg( "selectCountAsNum: в БД " .. dbPath .. " " .. key.num .." строк");
	Core.addLogMsg( "selectCountAsNum: выход");
return key.num; -- вернуть количество строк в БД-источника(приёмника)
end

  --[[--------------------------------------------------------------------------
  -- функция вычисляет разность строк в таблицах БД-источника и БД-приёмника
  -- извлекает последние недостающие записи из БД-источника
  -- вставляет в БД-назначения недостающие записи из БД-источника
  --]]--------------------------------------------------------------------------
function selectFromSrcInsertIntoDsc( i, dbPath_Src, dbPath_Dst)
	Core.addLogMsg( "selectFromSrcInsertIntoDsc: вход");
	local tTime = {};
	local tData = {};

	luasql_1 = require "luasql.sqlite3";
	env_1 = assert (luasql_1.sqlite3());
	con_1 = env_1:connect(dbPath_Src);

	luasql_2 = require "luasql.sqlite3";
	env_2 = assert (luasql_2.sqlite3());
	con_2 = env_2:connect(dbPath_Dst);

	local tbl = tTables[ i];
	local diff = tostring(tRowsNum_Src[ i] - tRowsNum_Dst[ i]);	-- вычислить разность
	Core.addLogMsg("selectFromSrcInsertIntoDsc: разность строк: " .. diff);
	if diff == '0' then
		Core.addLogMsg("selectFromSrcInsertIntoDsc: таблицы " .. tbl .. " одинаковы")
		goto m1;
	end
	Core.addLogMsg("selectFromSrcInsertIntoDsc: извлечение " .. diff .. " записей из БД-источника...");
	cur_1, err_1 = con_1:execute([[SELECT * FROM ]] .. tbl .. 
									[[ ORDER BY unixDT DESC LIMIT ]] .. diff .. [[;]]);	--	извлечь последние недостающие записи из БД1 (отсортированы)
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
	Core.addLogMsg("selectFromSrcInsertIntoDsc: tTime[ i] " .. tTime[ i]);
	Core.addLogMsg("selectFromSrcInsertIntoDsc: tData[ i] " .. tData[ i]);
	end
	
	Core.addLogMsg("selectFromSrcInsertIntoDsc: вставка " .. #tTime .. " записей в БД-приёмник...");
	for i = 1, #tTime do
		cur_2, err_2 = con_2:execute([[INSERT INTO ]] .. tbl .. 
										[[(unixDT, data) VALUES(]] .. tostring(tTime[ i]) .. [[,]] .. tostring(tData[ i]) .. [[);]]);
	Core.addLogMsg("selectFromSrcInsertIntoDsc: tTime[ i] " .. tTime[ i]);
	Core.addLogMsg("selectFromSrcInsertIntoDsc: tData[ i] " .. tData[ i]);
	end
::m1::
	con_1:close();
	env_1:close();
	con_2:close();
	env_2:close();
	Core.addLogMsg( "selectFromSrcInsertIntoDsc: выход");
end

function syncDB( dbPath_Src, dbPath_Dst)
	Core.addLogMsg( "syncDB: вход");
	-- 	подсчитать количество строк в БД-источника
	Core.addLogMsg( "syncDB: подсчёт строк в БД-источника...");
	for i = 1, #tTables do
		table.insert( tRowsNum_Src, selectCountAsNum( tTables[ i], dbPath_Src));
	end
	-- 	подсчитать количество строк в БД-приёмника
	Core.addLogMsg( "syncDB: подсчёт строк в БД-приёмника...");
	for i = 1, #tTables do
		table.insert( tRowsNum_Dst, selectCountAsNum( tTables[ i], dbPath_Dst));
	end
	-- вычислить разность строк в таблицах БД-источника и БД-приёмника
	-- извлечь последние недостающие записи из БД-источника
	-- вставить в БД-назначения недостающие записи из БД-источника
	for i = 1, #tTables do
		selectFromSrcInsertIntoDsc( i, dbPath_Src, dbPath_Dst);
	end

	tRowsNum_Src ={}; -- очистить таблицы
	tRowsNum_Dst ={};
	Core.addLogMsg( "syncDB: выход");
end

-- обработчик синхронизации БД АРМ
-- АРМ 1 синхронизирует свою БД с БД сервера 1
-- АРМ 2 синхронизирует свою БД с БД сервера 2
function cbSyncDBARM()
	Core.addLogMsg( "cbSyncDBARM: вход");
	if Core.TimerRequestControl.StartSyncDBARM == true then
		local nodeName = tostring(Core.getName());	-- получить имя узла
		local t = os.date( "*t");
		local strH = string.format( "%02d.%02d.", t.day, t.month ) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);
		Core.addLogMsg( nodeName .. ": запуск таймера синхронизации БД " .. strH);
		local dbPath_Src;
		local dbPath_Dst;

		if nodeName == "ARM_1.SPT943_SYNC_DB_ARM" then
			dbPath_Src = "\\\\192.168.1.11\\SPT943_ArchiveFiles\\SPT943.sqlite";	-- БД сервера 1
			dbPath_Dst = "D:/SPT943_ArchiveFiles/SPT943.sqlite";					-- БД АРМ 1
		end

		if nodeName == "ARM_2.SPT943_SYNC_DB_ARM" then
			dbPath_Src = "\\\\192.168.1.12\\SPT943_ArchiveFiles\\SPT943.sqlite";	-- БД сервера 2
			dbPath_Dst = "D:/SPT943_ArchiveFiles/SPT943.sqlite";					-- БД АРМ 2
		end
		
		syncDB( dbPath_Src, dbPath_Dst);
		Core.TimerRequestControl.StartSyncDBARM = false;
	end
	Core.addLogMsg( "cbSyncDBARM: выход");
end
