local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943Client.sqlite";

function aggr( archiveType, ch, firstUnixDT, lastUnixDT, client)
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
	local wait = 0.5;
	t = cur:fetch( {}, 'n');
	local i = 0;
	local j = Core[client.."O_ROW_COUNT"] - 4;
	for k, v in pairs( t) do
		Core[client.."I_ROW"] = j;
		Core[client.."I_COLUMN"] = ch;
		Core[client.."I_TEXT"] = v;		-- записать значения в табло
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
	env:close();
	Core.addLogMsg( "aggr: выход")
end
