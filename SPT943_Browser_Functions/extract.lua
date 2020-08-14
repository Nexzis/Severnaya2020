
require "./SPT943_Browser_Functions/entryHdm";
require "./SPT943_Browser_Functions/aggr";
require "./SPT943_Browser_Functions/hdm";

function extract( button, ch, firstUnixDT, lastUnixDT, client)
	Core.addLogMsg( "extract: вход")
	-- Core.addLogMsg("extract: firstUnixDT " .. firstUnixDT);
	-- Core.addLogMsg("extract: lastUnixDT " .. lastUnixDT);
	
	ch = tostring( ch);		-- tostring( ch) это от Францева, в zbstudio используется ch без tostring !!!
	local archiveType;		-- тип архива
	local e;				-- значение, возвращаемое функцией entryHdm()
	
	if button == 'h' then												-- ВЫБРАН ЧАСОВОЙ АРХИВ
			archiveType = 'HourArchive_' .. ch;
			e = entryHdm( archiveType, firstUnixDT, lastUnixDT, client);		-- проверка firstUnixDT на вхождение в архив
			if e == 'exit' then
				return;
			end
			hdm( archiveType, button, ch, firstUnixDT, lastUnixDT, client); 	-- извлечение часовых, суточных, месячных значений
			aggr( archiveType, ch, firstUnixDT, lastUnixDT, client);			-- вычисление итоговых значений
		elseif button == 'd' then										-- ВЫБРАН СУТОЧНЫЙ АРХИВ
			archiveType = 'DateArchive_' .. ch;
			e = entryHdm( archiveType, firstUnixDT, lastUnixDT, client);		-- проверка firstUnixDT на вхождение в архив
			if e == 'exit' then
				return;
			end
			hdm( archiveType, button, ch, firstUnixDT, lastUnixDT, client); 	-- извлечение часовых, суточных, месячных значений
			aggr( archiveType, ch, firstUnixDT, lastUnixDT, client);			-- вычисление итоговых значений
		elseif button == 'm' then										-- ВЫБРАН МЕСЯЧНЫЙ АРХИВ
			archiveType = 'MonthArchive_' .. ch;
			e = entryHdm( archiveType, firstUnixDT, lastUnixDT, client);		-- проверка firstUnixDT на вхождение в архив
			if e == 'exit' then
				return;
			end
			hdm( archiveType, button, ch, firstUnixDT, lastUnixDT, client); 	-- извлечение часовых, суточных, месячных значений
			aggr( archiveType, ch, firstUnixDT, lastUnixDT, client);			-- вычисление итоговых значений
	end
Core.addLogMsg( "extract: выход")
end
