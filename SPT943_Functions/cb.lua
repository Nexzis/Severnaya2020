--[[
   name: cbTTtableError
   @param
   @return
]]--
function cbTTtableError()
	if Core.SPT943.EO_ERROR == true then
		Core.addLogMsg("cbTTtableError: Ошибка в блоке TTable: " .. Core.SPT943.O_ERROR_INFO .. ".");
		Core.SPT943.RESET_ERROR = true;
		os.sleep(0.1);
		Core.SPT943.RESET_ERROR = false;
	end
end

--[[
   name: cbUploadData
   @param
   @return
]]--
function cbUploadData()
	if Core.UploadData.O_PRESSED == true then
		uploadData();
	end
end
--[[
   name: cbArchiveSelectCombobox
   @param
   @return
]]--
function cbArchiveSelectCombobox()
	if Core.ArchiveSelectComboBox.O_TEXT == "Часовой архив" then
			Core.DateEditor_Start.I_VISIBLE = false;
			Core.DateEditor_Last.I_VISIBLE = false;
			Core.DTEditor_Start.I_VISIBLE = true;
			Core.DTEditor_Last.I_VISIBLE = true;
			Core.YearSelectComboBox.I_VISIBLE = false;
		elseif
			Core.ArchiveSelectComboBox.O_TEXT == "Суточный архив" then
			Core.DateEditor_Start.I_VISIBLE = true;
			Core.DateEditor_Last.I_VISIBLE = true;
			Core.DTEditor_Start.I_VISIBLE = false;
			Core.DTEditor_Last.I_VISIBLE = false;
			Core.YearSelectComboBox.I_VISIBLE = false;
		elseif
			Core.ArchiveSelectComboBox.O_TEXT == "Месячный архив" then
			Core.DateEditor_Start.I_VISIBLE = true;
			Core.DateEditor_Last.I_VISIBLE = true;
			Core.DTEditor_Start.I_VISIBLE = false;
			Core.DTEditor_Last.I_VISIBLE = false;
			Core.YearSelectComboBox.I_VISIBLE = false;
		elseif
			Core.ArchiveSelectComboBox.O_TEXT == "Квартальный архив" then
			Core.DateEditor_Start.I_VISIBLE = false;
			Core.DateEditor_Last.I_VISIBLE = false;
			Core.DTEditor_Start.I_VISIBLE = false;
			Core.DTEditor_Last.I_VISIBLE = false;
			Core.YearSelectComboBox.I_VISIBLE = true;
		elseif
			Core.ArchiveSelectComboBox.O_TEXT == "Годовой архив" then
			Core.DateEditor_Start.I_VISIBLE = false;
			Core.DateEditor_Last.I_VISIBLE = false;
			Core.DTEditor_Start.I_VISIBLE = false;
			Core.DTEditor_Last.I_VISIBLE = false;
			Core.YearSelectComboBox.I_VISIBLE = false;
	end
end

--[[
   name: cbAddRow
   @param
   @return
]]--
function cbAddRow()
	if Core.SPT943.EO_ROW_ADDED == true then
		Core.addLogMsg( "cbAddRow: true");
		Core.SPT943.EI_ADD_ROW = false;
		Core.SPT943.RESET_ROW_ADDED = true;
		os.sleep(0.05);
		Core.SPT943.RESET_ROW_ADDED = false;
	end
end

--[[
   name: cbRemoveRow
   @param
   @return
]]--
function cbRemoveRow()
	if Core.SPT943.EO_ROW_REMOVED == true then
		Core.addLogMsg( "cbRemoveRow: true");
		Core.SPT943.EI_REMOVE_ROW = false;
		Core.SPT943.RESET_ROW_REMOVED = true;
		os.sleep(0.05);
		Core.SPT943.RESET_ROW_REMOVED = false;
	end
end

--[[
   name: cbRemoveRows
   @param
   @return
]]--
function cbRemoveRows()
	if Core.SPT943.EO_ROWS_REMOVED == true then
		Core.addLogMsg( "cbRemoveRows: true");
		Core.SPT943.EI_REMOVE_ROWS = false;
		Core.SPT943.RESET_ROWS_REMOVED = true;
		os.sleep(0.05);
		Core.SPT943.RESET_ROWS_REMOVED = false;
	end
end

--[[
   name: cbSetDone
   @param
   @return
]]--
function cbSetDone()
	if Core.SPT943.EO_SET_DONE == true then
		Core.addLogMsg( "cbSetDone: true");
		Core.SPT943.EI_SET = false;
		Core.SPT943.RESET_SET_DONE = true;
		os.sleep(0.05);
		Core.SPT943.RESET_SET_DONE = false;
	end
end

--[[--------------------------------------------------------------------------------------------------------------
	@brief							- отображение отчёта в формате HTML по форме "ГАЗ"
	@param	- GasTemplateChanged	- событие - изменён элемент списка отчётов по форме "ГАЗ" 
	@param	- GasTemplateIndex		- индекс выбранного отчёта в списке
	@param	- GasTemplate[i]		- показать отчёт по форме "ГАЗ" (report engine configuration)
--------------------------------------------------------------------------------------------------------------]]--
function cbGazTemplateComboBox()
	if Core.Reports.GasTemplateChanged == true then
		for i = 0, 7 do
			if Core.Reports.GasTemplateIndex == i then
				Core.Reports.GasTemplate[i] = true;
			end
		end
	end
end

--[[
   name: cbFileOpen
   @param
   @return
]]--
function cbContentReady()
	Core.addLogMsg( "cbContentReady: вход")
	if Core.SPT943.EO_CONTENT_READY == true then
		Core.FILE.I_MODE = 'a';
		Core.FILE.I_PATH = "C:/Users/Asue/Desktop/" .. Core.FILE.O_FILE_NAME .. ".xls";
		Core.FILE.EI_OPEN = true;
		Core.SPT943.RESET_CONTENT_READY = true;
		Core.SPT943.RESET_GET_CONTENT = true;
		os.sleep(0.05);
		Core.SPT943.RESET_CONTENT_READY = false;
		Core.SPT943.RESET_GET_CONTENT = false;
	end
	Core.addLogMsg( "cbContentReady: выход")
end

--[[
   name: cbFileOpened
   @param
   @return
]]--
function cbFileOpened()
	Core.addLogMsg( "cbFileOpened: вход")
	if Core.FILE.EO_OPENED == true then		-- если файл открылся
		Core.FILE.EI_WRITE = true;			-- записать данные в файл
		Core.FILE.EI_OPEN = false;
		Core.FILE.RESET_OPENED = true;
		os.sleep(0.05);
		Core.FILE.RESET_OPENED = false;
	end
	Core.addLogMsg( "cbFileOpened: выход")
end

--[[
   name: cbFileWritten
   @param
   @return
]]--
function cbFileWritten()
	Core.addLogMsg( "cbFileWritten: вход")
	if Core.FILE.EO_WRITTEN == true then		-- если файл записан
		Core.FILE.EI_FLUSH = true;				-- сбросить буфер записи на диск
		Core.FILE.RESET_WRITTEN = true;
		os.sleep(0.05);
		Core.FILE.RESET_WRITTEN = false;
	end
	Core.addLogMsg( "cbFileWritten: выход")
end

--[[
   name: cbFileFlushed
   @param
   @return
]]--
function cbFileFlushed()
	Core.addLogMsg( "cbFileFlushed: вход")
	if Core.FILE.EO_FLUSHED == true then		-- если буфер записи сброшен на диск
		Core.FILE.EI_CLOSE = true;				-- закрыть файл
		Core.FILE.RESET_FLUSHED = true;
		os.sleep(0.05);
		Core.FILE.RESET_FLUSHED = false;
	end
	Core.addLogMsg( "cbFileFlushed: выход")
end

--[[
   name: cbFileClosed
   @param
   @return
]]--
function cbFileClosed()
	Core.addLogMsg( "cbFileClosed: вход")
	if Core.FILE.EO_CLOSED == true then
		Core.FILE.RESET_CLOSED = true;
		os.sleep(0.05);
		Core.FILE.RESET_CLOSED = false;
	end
	Core.addLogMsg( "cbFileClosed: выход")
end