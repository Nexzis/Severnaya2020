--[[
   name: cbUploadData
   @param
   @return
]]--
function cbUploadData( client)
	if Core[client.."Button[0].O_PRESSED"] == true then
		uploadData( client);
	end
end
--[[
   name: cbArchiveSelectCombobox
   @param
   @return
]]--
function cbArchiveSelectCombobox( client)
	if Core[client.."ComboBox[0].O_TEXT"] == "Часовой архив" then
			Core[client.."DateEditor[0].I_VISIBLE"] = false;
			Core[client.."DateEditor[1].I_VISIBLE"] = false;
			Core[client.."DateTimeEditor[0].I_VISIBLE"] = true;
			Core[client.."DateTimeEditor[1].I_VISIBLE"] = true;
			Core[client.."ComboBox[1].I_VISIBLE"] = false;
		elseif Core[client.."ComboBox[0].O_TEXT"] == "Суточный архив" then
			Core[client.."DateEditor[0].I_VISIBLE"] = true;
			Core[client.."DateEditor[1].I_VISIBLE"] = true;
			Core[client.."DateTimeEditor[0].I_VISIBLE"] = false;
			Core[client.."DateTimeEditor[1].I_VISIBLE"] = false;
			Core[client.."ComboBox[1].I_VISIBLE"] = false;
		elseif Core[client.."ComboBox[0].O_TEXT"] == "Месячный архив" then
			Core[client.."DateEditor[0].I_VISIBLE"] = true;
			Core[client.."DateEditor[1].I_VISIBLE"] = true;
			Core[client.."DateTimeEditor[0].I_VISIBLE"] = false;
			Core[client.."DateTimeEditor[1].I_VISIBLE"] = false;
			Core[client.."ComboBox[1].I_VISIBLE"] = false;
		elseif Core[client.."ComboBox[0].O_TEXT"] == "Квартальный архив" then
			Core[client.."DateEditor[0].I_VISIBLE"] = false;
			Core[client.."DateEditor[1].I_VISIBLE"] = false;
			Core[client.."DateTimeEditor[0].I_VISIBLE"] = false;
			Core[client.."DateTimeEditor[1].I_VISIBLE"] = false;
			Core[client.."ComboBox[1].I_VISIBLE"] = true;
		elseif Core[client.."ComboBox[0].O_TEXT"] == "Годовой архив" then
			Core[client.."DateEditor[0].I_VISIBLE"] = false;
			Core[client.."DateEditor[1].I_VISIBLE"] = false;
			Core[client.."DateTimeEditor[0].I_VISIBLE"] = false;
			Core[client.."DateTimeEditor[1].I_VISIBLE"] = false;
			Core[client.."ComboBox[1].I_VISIBLE"] = false;
	end
end


--[[--------------------------------------------------------------------------------------------------------------
	@brief							- отображение отчёта в формате HTML по форме "ГАЗ"
	@param	- GasTemplateChanged	- событие - изменён элемент списка отчётов по форме "ГАЗ" 
	@param	- GasTemplateIndex		- индекс выбранного отчёта в списке
	@param	- GasTemplate[i]		- показать отчёт по форме "ГАЗ" (report engine configuration)
--------------------------------------------------------------------------------------------------------------]]--
function cbGazTemplateComboBox( client)
	if Core[client.."GasTemplateReports.GasTemplateChanged"] == true then
		for i = 0, 7 do
			if Core[client.."GasTemplateReports.GasTemplateIndex"] == i then
				Core[client.."GasTemplateReports.GasTemplate[" .. i .. "]"] = true;
			end
		end
	end
end

--[[
   name: cbContentReady
   @param
   @return
]]--
function cbContentReady( client)
	Core.addLogMsg( "cbContentReady: вход")
	if Core[client.."EO_CONTENT_READY"] == true then
		Core[client.."I_FILE_MODE"] = 'a';
		Core[client.."I_FILE_PATH"] = "D:/I_LOVE_SONATA/" .. os.getenv("USERNAME") .. Core[client.."O_FILE_NAME"] .. ".xls";
		Core[client.."RESET_CONTENT_READY"] = true;
		Core[client.."RESET_GET_CONTENT"] = true;
		os.sleep(0.5);
		Core[client.."RESET_CONTENT_READY"] = false;
		Core[client.."RESET_GET_CONTENT"] = false;
	end
	Core.addLogMsg( "cbContentReady: выход")
end



