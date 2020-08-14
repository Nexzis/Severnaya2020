
function init()
	Core.addLogMsg( "init: вход");
			Core.DateEditor_Start.I_VISIBLE = false;
			Core.DateEditor_Last.I_VISIBLE = false;
			Core.DTEditor_Start.I_VISIBLE = true;
			Core.DTEditor_Last.I_VISIBLE = true;
			Core.YearSelectComboBox.I_VISIBLE = false;
			Core.YearSelectComboBox.I_INDEX = 1;
			
			local currentUnixDT = ( os.time());	-- получить текущее значение времени
			t = os.date( "*t", currentUnixDT);
			Core.DTEditor_Start.I_DT = os.time{year = t.year, month = t.month, day = 1, hour = 0, minute = 0};		-- сформировать начало текущего месяца
			Core.DTEditor_Last.I_DT = os.time{year = t.year, month = t.month, day = 1, hour = 23, minute = 0};;
			Core.DateEditor_Start.I_DATE = os.time{year = t.year, month = t.month, day = 1, hour = 0, minute = 0};	-- сформировать начало текущего месяца
			Core.DateEditor_Last.I_DATE = os.time{year = t.year, month = t.month, day = t.day, hour = 0, minute = 0};
	Core.addLogMsg( "init: выход");
end
