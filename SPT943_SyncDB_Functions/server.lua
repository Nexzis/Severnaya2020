 --server.lua

require ( "./SPT943_lualib/stringParsing");
require ( "./SPT943_lualib/selectCountAsNum");
require ( "./SPT943_lualib/selectFrom");
require ( "./SPT943_lualib/clientSession");

function server( host, port)
	socket = require( "socket");
	Core.addLogMsg("server: binding to host " .. host .. " and port " .. port .. "...");
	local sckHnd = socket.bind( host, port);

	if sckHnd then
			local sckList = {}
			local coList = {}
			local loop = true
			sckHnd:settimeout(250)
			sckList[1] = sckHnd
			while loop do
				Core.addLogMsg('server: waiting for connection or data from')
				for j, hnd in ipairs(sckList) do
					Core.addLogMsg( j .. ': ' .. tostring(hnd) .. ', ' .. tostring(coList[hnd]))
				end
				local readTbl, writeTbl, status = socket.select(sckList)
				for K, sckHnd in ipairs(readTbl) do
					if sckHnd == sckList[1] then -- Server socket
						local clientHnd, status = sckHnd:accept()
							if clientHnd then
									local newPos = #sckList + 1
									sckList[newPos] = clientHnd
									coList[clientHnd] = coroutine.wrap(clientSession)
									coList[clientHnd](clientHnd)
								elseif status ~= "timeout" then
									Core.addLogMsg("server: " .. status)
									loop = false
							end
						else -- Client connection
							local cmd = coList[sckHnd]()
							if ".quit" == cmd then
									coList[sckHnd] = nil
									sckHnd:close()
									local l, pos = #sckList
										while l > 1 do
											if sckHnd == sckList[l] then
													table.remove(sckList, l)
													l = 1 -- Terminate search (Прекратить поиск)
												else
													l = l - 1
											end
										end
								elseif ".shutdown" == cmd then
									Core.addLogMsg("server: shutting down server")
									loop = false
							end
					end
				end
			end
			for J, sckHnd in ipairs(sckList) do
				sckHnd:close()
			end
		else
			Core.addLogMsg("server: error creating server socket")
	end
end
