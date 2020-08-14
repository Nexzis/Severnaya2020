local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";
require ('./SPT943_Browser_Functions/mathsum');

function y( ch, client)
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
  
	curFirst, err = con:execute( [[SELECT unixDT FROM ]] .. archiveType .. 
									[[ LIMIT 1;]]);	-- извлечь время из первой строки БД
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
								[[ ORDER BY unixDT DESC LIMIT 1;]]);	-- извлечь время из последней строки БД
	tLast = curLast:fetch( {}, 'a');
	t = os.date( "*t", tLast.unixDT);
	yearLast = t.year;		-- получить год из последней строки

	Core[client.."HeaderMessage"] = "Годовой отчёт с " .. yeaFirst .. " по " .. yearLast .. " годы";

	
	local j = 0;
	for i = yeaFirst, yearLast do							-- составить список всех годов присутствующих в архиве
		table.insert( tYears, i);
		Core[client.."I_ROW"] = j;
		Core[client.."I_COLUMN"] = 0;
		Core[client.."I_TEXT"] = tYears[ j + 1];	-- 	-- записать "годы" в табло
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
		j = j + 1;
	end

	local unixDTFirst;	-- начало года
	local unixDTLast;	-- конец года
	local tSum = {};	-- таблица для хранения сумм данных по годам

	for i = 1, #tYears do
		unixDTFirst =  tostring( os.time{ year = tYears[ i], month = 1, day = 1, hour = 0}); -- задать первую дату года
		unixDTLast =  tostring(os.time{ year = tYears[ i], month = 12, day = 31, hour = 0}); -- задать последнюю дату года

		curBetween, err = con:execute( [[SELECT SUM(data) AS sum FROM ]] .. archiveType ..
										[[ WHERE unixDT >= ]] .. unixDTFirst .. 
										[[ AND unixDT <= ]] .. unixDTLast .. [[;]]);

		t = curBetween:fetch( {}, 'a');
		for k, v in pairs( t) do
			table.insert( tSum, t.sum);
			Core[client.."I_ROW"] = i-1;
			Core[client.."I_COLUMN"] = ch;
			Core[client.."I_TEXT"] = t.sum;		-- записать значения data в табло
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
		
		end
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
	
	curFirst:close();
	curLast:close();
	curBetween:close();
	env:close();
end
