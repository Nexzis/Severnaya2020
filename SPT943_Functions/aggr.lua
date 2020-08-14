local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

function aggr( archiveType, ch, firstUnixDT, lastUnixDT)
	Core.addLogMsg( "aggr: вход")
	luasql = require "luasql.sqlite3";
	env = assert (luasql.sqlite3());
	con = env:connect( dataBasePath, NOCREATE);

	cur, err = con:execute( [[SELECT
							MIN(data) AS min,
							MAX(data) AS max,
							AVG(data) AS avg,
							SUM(data) AS sum
							FROM ]] .. archiveType .. 
							[[ WHERE unixDT >= ]] .. tostring( firstUnixDT) .. 
							[[ AND unixDT <= ]] ..  tostring( lastUnixDT) .. [[;]]);

	t = cur:fetch( {}, 'n');
	local i = 0;
	local j = Core.SPT943.O_ROW_COUNT - 4;
	for k, v in pairs( t) do
		Core.SPT943.I_ROW = j;
		Core.SPT943.I_COLUMN = ch;
		Core.SPT943.I_TEXT = v;		-- записать значения в табло
		Core.SPT943.EI_SET = true;
		os.sleep(0.15);
		j = j + 1;
	end
	env:close();
Core.addLogMsg( "aggr: выход")
end

--======================================================================================================
-- ПРОВЕРКА:
--======================================================================================================

--luasql = require "luasql.sqlite3";
--env = assert (luasql.sqlite3());
--con = env:connect('/home/germes/Dropbox/SPT943DB/SPT943.sqlite');

--local tTest = { archiveType = {	[ 1] = "HourArchive_1", [ 2] = "DateArchive_1", [ 3] = "MonthArchive_1"},
--				ch = {	[ 1] = 1, [ 2] = 2},
--				firstUnixDT = {	[ 1] = 1510628400,
--								[ 2] = 1475614800,
--								[ 3] = 1451509200},
--				lastUnixDT = {  [ 1] = tostring( 1510628400 + 82800),
--								[ 2] = tostring( 1475614800 + 2592000),
--								[ 3] = tostring( 1475614800 + 2592000)}
--								};
--local test = 1;
    
--aggr( tTest.archiveType[ test],  tTest.ch[ 1], tTest.firstUnixDT[ test], tTest.lastUnixDT[ test]);
