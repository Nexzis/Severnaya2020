--[[--------------------------------------------------------------------------------------------------------------
	@brief	- управление количеством строк в таблице
--------------------------------------------------------------------------------------------------------------]]--

function buildTTable( rowCount, client)
	Core.addLogMsg( "buildTTable: вход")
	
	Core[client.."Message"] = "Идёт выборка данных";
	Core[client.."MessageVisible"] = true;
	
	local wait = 0.5;
	-- вычислить разность между фактическим и необходимым количеством строк и понять добавить строки или удалить
	-- rowCount необходимое количество строк
	-- local diff = Core[client..O_ROW_COUNT - rowCount;
	-- Core.addLogMsg( "buildTTable: Core[client..O_ROW_COUNT: " .. Core[client..O_ROW_COUNT);
	-- Core.addLogMsg( "buildTTable: rowCount: " .. rowCount);

	--if Core[client..O_ROW_COUNT ~= 0 then
		Core[client.."EI_REMOVE_ROWS"] = true;
		os.sleep( wait);
		if Core[client.."EO_ERROR"] == true then
				Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при удалении строк: " .. Core[client.."O_ERROR_INFO"] .. ".");
				Core[client.."Message"] = "Ошибка в блоке TTable при удалении строк: " .. Core[client.."O_ERROR_INFO"] .. ".";
				Core[client.."RESET_ERROR"] = true;
				os.sleep( wait);
				Core[client.."RESET_ERROR"] = false;
				return -1;
			elseif Core[client.."EO_ROWS_REMOVED"] == true then
				Core[client.."EI_REMOVE_ROWS"] = false;
				Core[client.."RESET_ROWS_REMOVED"] = true;
				os.sleep( wait);
				Core[client.."RESET_ROWS_REMOVED"] = false;
		end
	--end
	
	Core.addLogMsg( "buildTTable: необходимо вставить " .. rowCount + 4 .. " строк");

	for i = 1, rowCount + 4 do
		Core.addLogMsg( "buildTTable: i = " .. i);
		Core[client.."EI_ADD_ROW"] = true;
		--while Core[client.."EO_ROW_ADDED"] == false and Core[client.."EO_ERROR"] == false do os.sleep(0.1) end
		os.sleep( wait);
		
		if Core[client.."EO_ERROR"] == true then
				Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при добавлении строк: " .. Core[client.."O_ERROR_INFO"] .. ".");
				Core[client.."Message"] = "Ошибка в блоке TTable при удалении строк: " .. Core[client.."O_ERROR_INFO"] .. ".";
				Core[client.."RESET_ERROR"] = true;
				os.sleep( wait);
				Core[client.."RESET_ERROR"] = false;
				return -1;
			elseif Core[client.."EO_ROW_ADDED"] == true then
				Core[client.."EI_ADD_ROW"] = false;
				os.sleep( wait);
				Core[client.."EO_ROW_ADDED"] = true;
		end
	end

		-- if diff > 0 then	-- удалить строки
		-- Core.addLogMsg( "buildTTable: удалить строки, разность: " .. diff);
		-- for i = diff - 1, 0, -1  do
			-- Core.addLogMsg( "i: " .. i);
			-- Core[client..I_ROW = i;
			-- Core[client..EI_REMOVE_ROW = true;
			-- os.sleep(wait);
		-- end
	-- end
	
	-- if diff < 0 then	-- добавить строки
		-- diff = math.abs( diff);
		-- Core.addLogMsg( "buildTTable: добавить строки, разность: " .. diff);
		-- for i = 0, diff - 1 do
			-- Core.addLogMsg( "i: " .. i);
			-- Core[client..EI_ADD_ROW = true;
			-- os.sleep(wait);
		-- end
	-- end

		-- if diff > 0 then	-- удалить строки
		-- Core.addLogMsg( "buildTTable: удалить строки, разность: " .. diff);
		-- for i = 0, diff - 5 do
			-- Core.addLogMsg( "i: " .. i);
			-- Core[client..I_ROW = i;
			-- Core[client..EI_REMOVE_ROW = true;
			-- os.sleep(wait);
		-- end
	-- end
	
	-- if diff < 0 then	-- добавить строки
		-- diff = math.abs( diff);
		-- Core.addLogMsg( "buildTTable: добавить строки, разность: " .. diff);
		-- for i = 0, diff + 3 do
			-- Core.addLogMsg( "i: " .. i);
			-- Core[client..EI_ADD_ROW = true;
			-- os.sleep(wait);
		-- end
	-- end

	Core[client.."I_ROW"] = Core[client.."O_ROW_COUNT"] - 4;
	Core[client.."I_COLUMN"] = 0;
	Core[client.."I_TEXT"] = "МИНИМУМ:"
	Core[client.."EI_SET"] = true;
	os.sleep( 1);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."Message"] = "Ошибка в блоке TTable при удалении строк: " .. Core[client.."O_ERROR_INFO"] .. ".";
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
	Core[client.."I_COLUMN"] = 0;
	Core[client.."I_TEXT"] = "МАКСИМУМ:"
	Core[client.."EI_SET"] = true;
	os.sleep( 1);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."Message"] = "Ошибка в блоке TTable при удалении строк: " .. Core[client.."O_ERROR_INFO"] .. ".";
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
	Core[client.."I_COLUMN"] = 0;
	Core[client.."I_TEXT"] = "СРЕДНЕЕ:"
	Core[client.."EI_SET"] = true;
	os.sleep( 1);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."Message"] = "Ошибка в блоке TTable при удалении строк: " .. Core[client.."O_ERROR_INFO"] .. ".";
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
	Core[client.."I_COLUMN"] = 0;
	Core[client.."I_TEXT"] = "СУММА:"
	Core[client.."EI_SET"] = true;
	os.sleep( 1);
	if Core[client.."EO_ERROR"] == true then
			Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable при записи в ячейку: " .. Core[client.."O_ERROR_INFO"] .. ".");
			Core[client.."Message"] = "Ошибка в блоке TTable при удалении строк: " .. Core[client.."O_ERROR_INFO"] .. ".";
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
	
	Core.addLogMsg( "buildTTable: вставлено " .. Core[client.."O_ROW_COUNT"] .. " строк(и)");
	Core.addLogMsg( "buildTTable: выход")
end
