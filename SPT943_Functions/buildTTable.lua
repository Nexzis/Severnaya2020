--[[--------------------------------------------------------------------------------------------------------------
	@brief	- управление количеством строк в таблице
--------------------------------------------------------------------------------------------------------------]]--

function buildTTable( rowCount)
	Core.addLogMsg( "buildTTable: вход")
	local wait = 0.5;
	-- вычислить разность между фактическим и необходимым количеством строк и понять добавить строки или удалить
	-- rowCount необходимое количество строк
	-- local diff = Core.SPT943.O_ROW_COUNT - rowCount;
	-- Core.addLogMsg( "buildTTable: Core.SPT943.O_ROW_COUNT: " .. Core.SPT943.O_ROW_COUNT);
	-- Core.addLogMsg( "buildTTable: rowCount: " .. rowCount);
	
	-- if Core.SPT943.O_ROW_COUNT ~= 0 then
		-- Core.SPT943.EI_REMOVE_ROWS = true;
	-- end
	
	Core.addLogMsg( "buildTTable: необходимо вставить " .. rowCount + 4 .. " строк");
	
	for i = 1, rowCount + 4 do 
		Core.addLogMsg( "buildTTable: i = " .. i);
		Core.SPT943.EI_ADD_ROW = true;
		os.sleep( wait);
		Core.SPT943.EI_ADD_ROW = false;
	end

		-- if diff > 0 then	-- удалить строки
		-- Core.addLogMsg( "buildTTable: diff > 0 разность: " .. diff);
		-- for i = diff - 1, 0, -1  do
			-- Core.addLogMsg( "i: " .. i);
			-- Core.SPT943.I_ROW = i;
			-- Core.SPT943.EI_REMOVE_ROW = true;
			-- os.sleep( wait);
		-- end
	-- end
	
	-- if diff < 0 then	-- добавить строки
		-- diff = math.abs( diff);
		-- Core.addLogMsg( "buildTTable: diff < 0 разность: " .. diff);
		-- for i = 0, diff - 1 do
			-- Core.addLogMsg( "i: " .. i);
			-- Core.SPT943.EI_ADD_ROW = true;
			-- os.sleep( wait);
		-- end
	-- end
	
	-- if diff > 0 then	-- удалить строки
		-- Core.addLogMsg( "buildTTable: diff > 0 разность: " .. diff);
		-- for i = 0, diff - 5 do
			-- Core.addLogMsg( "i: " .. i);
			-- Core.SPT943.I_ROW = i;
			-- Core.SPT943.EI_REMOVE_ROW = true;
			-- os.sleep( wait);
		-- end
	-- end
	
	-- if diff < 0 then	-- добавить строки
		-- diff = math.abs( diff);
		-- Core.addLogMsg( "buildTTable: diff < 0 разность: " .. diff);
		-- for i = 0, diff + 3 do
			-- Core.addLogMsg( "i: " .. i);
			-- Core.SPT943.EI_ADD_ROW = true;
			-- os.sleep( wait);
		-- end
	-- end

	Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 4;
	Core.SPT943.I_COLUMN = 0;
	Core.SPT943.I_TEXT = "МИНИМУМ"
	Core.SPT943.EI_SET = true;
	os.sleep( wait);
	Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 3;
	Core.SPT943.I_COLUMN = 0;
	Core.SPT943.I_TEXT = "МАКСИМУМ"
	Core.SPT943.EI_SET = true;
	os.sleep( wait);
	Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 2;
	Core.SPT943.I_COLUMN = 0;
	Core.SPT943.I_TEXT = "СРЕДНЕЕ"
	Core.SPT943.EI_SET = true;
	os.sleep( wait);
	Core.SPT943.I_ROW = Core.SPT943.O_ROW_COUNT - 1;
	Core.SPT943.I_COLUMN = 0;
	Core.SPT943.I_TEXT = "СУММА"
	Core.SPT943.EI_SET = true;
	os.sleep( wait);
	
	Core.addLogMsg( "buildTTable: вставлено " .. Core.SPT943.O_ROW_COUNT .. " строк(и)");
	Core.addLogMsg( "buildTTable: выход")
end
