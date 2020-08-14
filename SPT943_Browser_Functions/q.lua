local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";
require ('./SPT943_Browser_Functions/mathsum');

function q( ch, year, client)
	local wait = 0.5;
	local archiveType = 'DateArchive_' .. tostring( ch);
	
	if dataBasePath == nil then
		print('ОШИБКА! Не указан путь к базе данных.');
		Core.addLogMsg('ОШИБКА! Не указан путь к базе данных.');
		Core[client.."WarningMessageVisible"] = true;
		Core[client.."WarningMessage"] = 'ОШИБКА! Не указан путь к базе данных.';
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
		Core[client.."WarningMessageVisible"] = true;
		Core[client.."WarningMessage"] = 'ОШИБКА! в БД отсутствует' .. '\nзапрашиваемая таблица ' .. archiveType .. '.';
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
		Core[client.."WarningMessageVisible"] = true;
		Core[client.."WarningMessage"] = 'Выбранный год ' .. year .. '\nнаходится за пределами архива!\n\n' .. 'Начало архива: ' .. yeaFirst .. '\nКонец архива: ' .. yearLast;
		curFirst:close();
		curLast:close();
		env:close();
		return;
	end
		
	Core[client.."HeaderMessage"] = "Квартальный отчёт за " .. year .. " год"
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
	 	
	 	Core[client.."I_ROW"] = 0;
		Core[client.."I_COLUMN"] = 0;
		Core[client.."I_TEXT"] = "  I квартал " .. year .. " г.";
		Core[client.."EI_SET"] = true;
		os.sleep( wait);
		if Core[client.."EO_ERROR"] == true then
				Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
				Core[client.."RESET_ERROR"] = true;
				os.sleep( wait);
				Core[client.."RESET_ERROR"] = false;
				return -1;
			elseif Core[client.."EO_SET_DONE"] == true then
				Core[client.."EI_SET"] = false;
				Core[client.."RESET_SET_DONE"] = true;
				os.sleep( wait);
				Core[client.."RESET_SET_DONE"] = false;
		end

		Core[client.."I_ROW"] = 1;
		Core[client.."I_COLUMN"] = 0;
		Core[client.."I_TEXT"] = " II квартал " .. year .. " г.";
		Core[client.."EI_SET"] = true;
		os.sleep( wait);
		if Core[client.."EO_ERROR"] == true then
				Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
				Core[client.."RESET_ERROR"] = true;
				os.sleep( wait);
				Core[client.."RESET_ERROR"] = false;
				return -1;
			elseif Core[client.."EO_SET_DONE"] == true then
				Core[client.."EI_SET"] = false;
				Core[client.."RESET_SET_DONE"] = true;
				os.sleep( wait);
				Core[client.."RESET_SET_DONE"] = false;
		end

		Core[client.."I_ROW"] = 2;
		Core[client.."I_COLUMN"] = 0;
		Core[client.."I_TEXT"] = "III квартал " .. year .. " г.";
		Core[client.."EI_SET"] = true;
		os.sleep( wait);
		if Core[client.."EO_ERROR"] == true then
				Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
				Core[client.."RESET_ERROR"] = true;
				os.sleep( wait);
				Core[client.."RESET_ERROR"] = false;
				return -1;
			elseif Core[client.."EO_SET_DONE"] == true then
				Core[client.."EI_SET"] = false;
				Core[client.."RESET_SET_DONE"] = true;
				os.sleep( wait);
				Core[client.."RESET_SET_DONE"] = false;
		end

		Core[client.."I_ROW"] = 3;
		Core[client.."I_COLUMN"] = 0;
		Core[client.."I_TEXT"] = " IV квартал " .. year .. " г.";
		Core[client.."EI_SET"] = true;
		os.sleep( wait);
		if Core[client.."EO_ERROR"] == true then
				Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
				Core[client.."RESET_ERROR"] = true;
				os.sleep( wait);
				Core[client.."RESET_ERROR"] = false;
				return -1;
			elseif Core[client.."EO_SET_DONE"] == true then
				Core[client.."EI_SET"] = false;
				Core[client.."RESET_SET_DONE"] = true;
				os.sleep( wait);
				Core[client.."RESET_SET_DONE"] = false;
		end
	
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
				Core[client.."I_ROW"] = i-1;
				Core[client.."I_COLUMN"] = ch;
				Core[client.."I_TEXT"] = 'нет данных';	-- записать строку 'нет данных' в табло
				Core[client.."EI_SET"] = true;
				os.sleep(wait);
			if Core[client.."EO_ERROR"] == true then
					Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
					Core[client.."RESET_ERROR"] = true;
					os.sleep( wait);
					Core[client.."RESET_ERROR"] = false;
					return -1;
				elseif Core[client.."EO_SET_DONE"] == true then
					Core[client.."EI_SET"] = false;
					Core[client.."RESET_SET_DONE"] = true;
					os.sleep( wait);
					Core[client.."RESET_SET_DONE"] = false;
			end
			else
				Core[client.."I_ROW"] = i-1;
				Core[client.."I_COLUMN"] = ch;
				Core[client.."I_TEXT"] = t.sum;			-- записать значения data в табло
				Core[client.."EI_SET"] = true;
				os.sleep(wait);
				if Core[client.."EO_ERROR"] == true then
						Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
						Core[client.."RESET_ERROR"] = true;
						os.sleep( wait);
						Core[client.."RESET_ERROR"] = false;
						return -1;
					elseif Core[client.."EO_SET_DONE"] == true then
						Core[client.."EI_SET"] = false;
						Core[client.."RESET_SET_DONE"] = true;
						os.sleep( wait);
						Core[client.."RESET_SET_DONE"] = false;
				end
				table.insert( tSum, t.sum);
		 end
		 cur:close();
		 j = j + 2;
	 end
	 
	Core[client.."I_ROW"] = Core[client.."O_ROW_COUNT"] - 4;
	Core[client.."I_COLUMN"] = ch;
	Core[client.."I_TEXT"] = math.min(table.unpack( tSum));										-- вычисление минимальных значений
	Core[client.."EI_SET"] = true;
	os.sleep(wait);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."RESET_ERROR"] = true;
			os.sleep( wait);
			Core[client.."RESET_ERROR"] = false;
			return -1;
		elseif Core[client.."EO_SET_DONE"] == true then
			Core[client.."EI_SET"] = false;
			Core[client.."RESET_SET_DONE"] = true;
			os.sleep( wait);
			Core[client.."RESET_SET_DONE"] = false;
	end
	
	Core[client.."I_ROW"] = Core[client.."O_ROW_COUNT"] - 3;
	Core[client.."I_COLUMN"] = ch;
	Core[client.."I_TEXT"] = math.max(table.unpack( tSum));										-- вычисление максимальных значений
	Core[client.."EI_SET"] = true;
	os.sleep(wait);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."RESET_ERROR"] = true;
			os.sleep( wait);
			Core[client.."RESET_ERROR"] = false;
			return -1;
		elseif Core[client.."EO_SET_DONE"] == true then
			Core[client.."EI_SET"] = false;
			Core[client.."RESET_SET_DONE"] = true;
			os.sleep( wait);
			Core[client.."RESET_SET_DONE"] = false;
	end
	
	Core[client.."I_ROW"] = Core[client.."O_ROW_COUNT"] - 2;
	Core[client.."I_COLUMN"] = ch;
	Core[client.."I_TEXT"] = (math.max(table.unpack( tSum)) + math.min(table.unpack( tSum))) / 2;	-- вычисление средних значений
	Core[client.."EI_SET"] = true;
	os.sleep(wait);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."RESET_ERROR"] = true;
			os.sleep( wait);
			Core[client.."RESET_ERROR"] = false;
			return -1;
		elseif Core[client.."EO_SET_DONE"] == true then
			Core[client.."EI_SET"] = false;
			Core[client.."RESET_SET_DONE"] = true;
			os.sleep( wait);
			Core[client.."RESET_SET_DONE"] = false;
	end
	 
	Core[client.."I_ROW"] = Core[client.."O_ROW_COUNT"] - 1;
	Core[client.."I_COLUMN"] = ch;
	Core[client.."I_TEXT"] = mathsum( tSum);														-- вычисление суммы значений
	Core[client.."EI_SET"] = true;
	os.sleep(wait);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."RESET_ERROR"] = true;
			os.sleep( wait);
			Core[client.."RESET_ERROR"] = false;
			return -1;
		elseif Core[client.."EO_SET_DONE"] == true then
			Core[client.."EI_SET"] = false;
			Core[client.."RESET_SET_DONE"] = true;
			os.sleep( wait);
			Core[client.."RESET_SET_DONE"] = false;
	end
	
	con:close();
	env:close();
end
