local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

--[[
   
   hdm: неизвестно
   @param
   @return
   
]]--
function hdm( archiveType, button, ch, firstUnixDT, lastUnixDT, client)
	Core.addLogMsg( "hdm: вход")
	-- Core.addLogMsg("hdm: firstUnixDT " .. firstUnixDT);
	-- Core.addLogMsg("hdm: lastUnixDT " .. lastUnixDT);
	local lastHumanDT = os.date( "%d.%m.%Y %H:%M", lastUnixDT);


	luasql = require "luasql.sqlite3";
	env = assert (luasql.sqlite3());
	con = env:connect( dataBasePath, NOCREATE);
	-- извлечь время и данные из запрашиваемого диапазона
	cur, err = con:execute( [[SELECT unixDT, data FROM ]] .. archiveType .. 
							[[ WHERE unixDT >= ]] .. tostring(firstUnixDT) .. 
							[[ AND unixDT <= ]] .. tostring(lastUnixDT) .. [[ ORDER BY unixDT;]]);

	t = cur:fetch( {}, 'a');
	local firstHumanDT = os.date( "%d.%m.%Y %H:%M", t.unixDT);
	
	if button == 'h' then
		Core[client.."HeaderMessage"] = "Часовой отчёт с " .. firstHumanDT .. " по " .. lastHumanDT;
--		print ("Часовой отчёт с " .. firstHumanDT .. " по " .. lastHumanDT);
		elseif button == 'd' then
		Core[client.."HeaderMessage"] = "Суточный отчёт с " .. firstHumanDT .. " по " .. lastHumanDT;
--		print ("Суточный отчёт с " .. firstHumanDT .. " по " .. lastHumanDT);
		elseif button == 'm' then
		Core[client.."HeaderMessage"] = "Месячный отчёт с " .. firstHumanDT .. " по " .. lastHumanDT;
--		print ("Месячный отчёт с " .. firstHumanDT .. " по " .. lastHumanDT);
	end
	
	local tTime = {};
	local tData = {};
	while t do
		table.insert( tTime, t.unixDT);	-- заполнить таблицу значением времени
		table.insert( tData, t.data);	-- заполнить таблицу данными
		t = cur:fetch( {}, 'a');  -- если t == nil, то cur закроется сам
		if t == nil then
			break;
		end
	end
	
	local wait = 0.5
	for i = 1, #tTime do
		Core[client.."I_ROW"] = i - 1;
		Core[client.."I_COLUMN"] = 0;
		Core[client.."I_TEXT"] = os.date( "%d.%m.%Y %H:%M", tTime[ i]);		-- записать в таблицу значения time 
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
		
		Core[client.."I_ROW"] = i - 1;
		Core[client.."I_COLUMN"] = ch;
		Core[client.."I_TEXT"] = tData[ i];		-- записать в таблицу значения data
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

	con:close();
	env:close();
	Core.addLogMsg( "hdm: выход")
end
