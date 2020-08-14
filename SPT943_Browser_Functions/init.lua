
function init( client)
	Core.addLogMsg( "init: вход");
			Core[client.."DateEditor[0].I_VISIBLE"] = false;		-- редактор даты начала периода
			Core[client.."DateEditor[1].I_VISIBLE"] = false;		-- редактор даты конца периода
			Core[client.."DateTimeEditor[0].I_VISIBLE"] = true;
			Core[client.."DateTimeEditor[1].I_VISIBLE"] = true;
			Core[client.."ComboBox[1].I_VISIBLE"] = false;
			Core[client.."ComboBox[1].I_INDEX"] = 1;
			
			t = os.date( "*t", os.time());-- получить текущее значение времени
			Core[client.."DateTimeEditor[0].I_DT"] = os.time{year = t.year, month = t.month, day = 1, hour = 0, minute = 0};	-- сформировать начало текущего месяца
			Core[client.."DateTimeEditor[1].I_DT"] = os.time{year = t.year, month = t.month, day = 1, hour = 23, minute = 0};;
			Core[client.."DateEditor[0].I_DATE"] = os.time{year = t.year, month = t.month, day = 1, hour = 0, minute = 0};		-- сформировать начало текущего месяца
			Core[client.."DateEditor[1].I_DATE"] = os.time{year = t.year, month = t.month, day = t.day, hour = 0, minute = 0};
	Core.addLogMsg( "init: выход");
end
