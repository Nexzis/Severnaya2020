local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

--[[
   
   hdm: неизвестно
   @param
   @return
   
]]--
function hdm( archiveType, button, ch, firstUnixDT, lastUnixDT)
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
		Core.Header_Text = "Часовой отчёт с " .. firstHumanDT .. " по " .. lastHumanDT;
--		print ("Часовой отчёт с " .. firstHumanDT .. " по " .. lastHumanDT);
		elseif button == 'd' then
		Core.Header_Text = "Суточный отчёт с " .. firstHumanDT .. " по " .. lastHumanDT;
--		print ("Суточный отчёт с " .. firstHumanDT .. " по " .. lastHumanDT);
		elseif button == 'm' then
		Core.Header_Text = "Месячный отчёт с " .. firstHumanDT .. " по " .. lastHumanDT;
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
	
	local wait = 0.15
	
	for i = 1, #tTime do
		Core.SPT943.I_ROW = i - 1;
		Core.SPT943.I_COLUMN = 0;
		Core.SPT943.I_TEXT = os.date( "%d.%m.%Y %H:%M", tTime[ i]);		-- записать в таблицу значения time 
		Core.SPT943.EI_SET = true;
		os.sleep( wait);
		
		Core.SPT943.I_ROW = i - 1;
		Core.SPT943.I_COLUMN = ch;
		Core.SPT943.I_TEXT = tData[ i];		-- записать в таблицу значения data
		Core.SPT943.EI_SET = true;
		os.sleep( wait);
	end
	
	con:close();
	env:close();
	Core.addLogMsg( "hdm: выход")
end

--======================================================================================================
-- ПРОВЕРКА: 
--======================================================================================================

--	  local tTest = { archiveType = {[ 1] = "HourArchive_1", [ 2] = "DateArchive_1", [ 3] = "MonthArchive_1"},
--                    firstUnixDT = { [ 1] = 1550728800, [ 2] = 1475614800, [ 3] = 1451509200},  -- 21.02.2019 09:00 / 05.10.2016 00:00 / 31.12.2015 00:00
--                    lastUnixDT = { [ 1] = 1551564000, [ 2] = 1478206800, [ 3] = 1454101200},
--                    ch = { [ 1] = 1, [ 2] = 2},
--                    button = { [ 1] = 'h', [ 2] = 'd', [ 3] = 'm'}
--				  };
--	  local ch = 1;
--	  local test = 1;

--    hdm( tTest.archiveType[ test],  tTest.button[ ch], tTest.ch[ ch], tTest.firstUnixDT[ test], tTest.lastUnixDT[ test]);
