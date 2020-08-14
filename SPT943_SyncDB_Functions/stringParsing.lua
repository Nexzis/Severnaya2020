-- массив с именами таблиц в БД
local tTables = { [1] = "HourArchive_1",
                  [2] = "HourArchive_2",
                  [3] = "DateArchive_1",
                  [4] = "DateArchive_2",
                  [5] = "MonthArchive_1",
                  [6] = "MonthArchive_2"
		};


function stringParsing( str)
	local subStr1;
	for i = 1, #tTables do
		subStr1 = string.match( str, tTables[ i]);
		if subStr1 ~= nil then
			break;
		end
	end
	local strLen = string.len ( str);
	local subStr1Len = string.len ( subStr1);
	local subStr2 = string.sub ( str, subStr1Len + 2)
	--Core.addLogMsg( subStr1);
	--Core.addLogMsg( subStr2);
	return subStr1, subStr2;
end


