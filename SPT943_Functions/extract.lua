
require "./SPT943_Functions/entryHdm";
require "./SPT943_Functions/aggr";
require "./SPT943_Functions/hdm";

function extract( button, ch, firstUnixDT, lastUnixDT)
	Core.addLogMsg( "extract: вход")
	-- Core.addLogMsg("extract: firstUnixDT " .. firstUnixDT);
	-- Core.addLogMsg("extract: lastUnixDT " .. lastUnixDT);
	
	ch = tostring( ch);		-- tostring( ch) это от Францева, в zbstudio используется ch без tostring !!!
	local archiveType;		-- тип архива
	local e;				-- значение, возвращаемое функцией entryHdm()
	
	if button == 'h' then												-- ВЫБРАН ЧАСОВОЙ АРХИВ
			archiveType = 'HourArchive_' .. ch;
			e = entryHdm( archiveType, firstUnixDT, lastUnixDT);		-- проверка firstUnixDT на вхождение в архив
			if e == 'exit' then
				return;
			end
			hdm( archiveType, button, ch, firstUnixDT, lastUnixDT); 	-- извлечение часовых, суточных, месячных значений
			aggr( archiveType, ch, firstUnixDT, lastUnixDT);			-- вычисление итоговых значений
		elseif button == 'd' then										-- ВЫБРАН СУТОЧНЫЙ АРХИВ
			archiveType = 'DateArchive_' .. ch;
			e = entryHdm( archiveType, firstUnixDT, lastUnixDT);		-- проверка firstUnixDT на вхождение в архив
			if e == 'exit' then
				return;
			end
			hdm( archiveType, button, ch, firstUnixDT, lastUnixDT); 	-- извлечение часовых, суточных, месячных значений
			aggr( archiveType, ch, firstUnixDT, lastUnixDT);			-- вычисление итоговых значений
		elseif button == 'm' then										-- ВЫБРАН МЕСЯЧНЫЙ АРХИВ
			archiveType = 'MonthArchive_' .. ch;
			e = entryHdm( archiveType, firstUnixDT, lastUnixDT);		-- проверка firstUnixDT на вхождение в архив
			if e == 'exit' then
				return;
			end
			hdm( archiveType, button, ch, firstUnixDT, lastUnixDT); 	-- извлечение часовых, суточных, месячных значений
			aggr( archiveType, ch, firstUnixDT, lastUnixDT);			-- вычисление итоговых значений
	end
Core.addLogMsg( "extract: выход")
end

--======================================================================================================
-- ПРОВЕРКА:
--======================================================================================================

--local tTest = { button = {[ 1] = "h", [ 2] = "d", [ 3] = "m", [ 4] = "q", [ 5] = "y"},
--				ch = { [ 1] = "1", [ 2] = "2"};
--				firstUnixDT = { [ 1] = 1510628400, [ 2] = 1475614800, [ 3] = 1451509200, [ 4] = 1475614800, [ 5] = 1475614800}
--			};
--local test = 1;
--extract( tTest.button[ test], tTest.ch[ 1], tTest.firstUnixDT[ test]);