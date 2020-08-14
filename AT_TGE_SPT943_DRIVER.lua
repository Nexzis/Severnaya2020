-- 04-07-2019
	package.cpath = "D:/Actual_version/Sonata_WINDOWS-X86_20190515_r9095/sqlite3.dll";
	local dataBasePath = "C:/SPT943_ArchiveFiles/SPT943.sqlite";
	require "./SPT943_Functions/parameters";
	require "./SPT943_Functions/driver";

function main()
	local serialPort;
	local archiveType;
	local startDT;
	local endDT;
	local t;
	local str;
	
	-- строка инициализация сеанса связи
	local initSessionStr = string.char( 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);
	--	строка запроса сеанса связи (СОКРАЩЁННЫЙ ФОРМАТ СООБЩЕНИЯ)
	local reqSessionShortStr = string.char( 0x10, 0xFF, 0x3F, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x16);
	--	строка запроса сеанса связи (БАЗОВЫЙ ФОРМАТ СООБЩЕНИЯ)
	local reqSessionFullStr = string.char( 0x10, 0xFF, 0x90, 0x00, 0x00, 0x05, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x00, 0xD9, 0x19);
	--	строка запроса изменения скорости обмена
	local reqBaudRateStr = string.char( 0x10, 0xFF, 0x90, 0x00, 0x00, 0x05, 0x00, 0x42, 0x03, 0x00, 0x00, 0x00, 0x7E, 0x39);

--**********************************************************
--********************	  ENTRY	  **************************
--**********************************************************

	local ret;					-- возвращаемое значение функции
	local packet;				-- пакет
	local c = 1;				-- счётчик вызовов
	local tryConnection = 3;	-- количество подключений (запросов) к теплосчётчику

--[[----------------------------------------------------------------------------------
	открытие COM-порта
----------------------------------------------------------------------------------]]--
	Core.SPT943_Driver_Msg = "Открытие " .. portName .. " на скорости " .. baudRate .. "...";
	Core.addLogMsg( "portOpen: opening a COM port (2400)...");
	ret = portOpen( portName, baudRate, dataBits, stopBits, parity);
	if  ret == -1 then				  
	  goto quit;																	-- error opening port ==>> ВЫХОД ИЗ ПРОГРАММЫ
	end
--[[----------------------------------------------------------------------------------
	инициализация сеанса связи ==> посылка FF,FF...FF
----------------------------------------------------------------------------------]]--
	Core.SPT943_Driver_Msg = "Инициализация сеанса связи..."
	Core.addLogMsg( "initSession: session initialization...");
	initSession( initSessionStr);
	os.sleep( 1.5);		
--[[----------------------------------------------------------------------------------
	запрос сеанса связи (сокращённый формат сообщения) ==> посылка 10 FF 3F 00 00 00 00 C1 16
	@param	reqSessionShortStr	string	- запрос данных (строка)
	@return	packet	            table   - принятый пакет (массив)
----------------------------------------------------------------------------------]]--
::reqSessionShort::																-- МЕТКА ::reqSessionShort::

	Core.SPT943_Driver_Msg = "ЗАПРОС сеанса связи (сокращённый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: session request (abbreviated message format), attempt " .. c .. " off " .. tryConnection .. "...");
	ret = reqResp( reqSessionShortStr);
	if  ret == -1 then				  
		c = c + 1;  
		Core.SPT943_Driver_Msg = "ЗАПРОС сеанса связи (сокращённый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: session request (abbreviated message format), attempt " .. c .. " off " .. tryConnection .. "...");
			if c <= 3 then										 
					os.sleep( 1);
					goto reqSessionShort;												-- no response from the device ==>> ПОВТОР запроса 
				else 
					Core.SPT943_Driver_Msg = "Лимит запросов сеанса связи исчерпан!";
					Core.addLogMsg( "reqResp: session request limit exhausted!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
					serialPort:clearBuffers( ); -- очистить приёмный и передающий буфер
					serialPort:close();			-- уничтожить объект
					goto quit;
			end
	end
	packet = ret;

-- ожидаемый ответ: 10 FF 3F 54 2B 0A 38 16

--[[----------------------------------------------------------------------------------
	проверка контрольной суммы
	@param	packet	table	- принятый пакет (массив)
	@return -1				- при несовпадении cs
	@return	packet	table	д- при совпадении cs
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkCS: проверка контрольной суммы...");
	ret = checkCS( packet);
	if ret == -1 then												
		goto reqSessionShort;															-- контрольные суммы не совпали ==>> ПОВТОР запроса
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
	@param	packet	table	- принятый пакет
	@return -1				- при наличии ошибки	
	@return packet	table	- при отсутствии ошибки
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
		goto reqSessionShort;															-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР запроса
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса сеанса связи (сокращённый формат сообщения)
	@param	packet	- принятый пакет
	@return 0
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "packetHandler: обработка запроса сеанса связи (сокращённый формат сообщения)...");
	packetHandler( packet, ch);
--[[----------------------------------------------------------------------------------
	ПЕРВЫЙ запрос сеанса связи (базовый формат сообщения) ==> посылка	10 FF 90 00 00 05 00 3F 00 00 00 00 D9 19
----------------------------------------------------------------------------------]]--
Core.addLogMsg("TEST")
::reqSessionFull_1::																-- МЕТКА ::reqSessionFull_1::

	Core.SPT943_Driver_Msg = "ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: session request (basic message format), attempt " .. c .. " off " .. tryConnection .. "...");
	ret = reqResp( reqSessionFullStr);
	if ret == -1 then				 	  
		c = c + 1;
		Core.SPT943_Driver_Msg = "ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: session request (basic message format), attempt " .. c .. " off " .. tryConnection .. "...");
		if c <= 3 then										 
				os.sleep( 1);
				goto reqSessionFull_1;												-- no response from the device ==>> ПОВТОР запроса 
			else 
				Core.SPT943_Driver_Msg = "Лимит запросов сеанса связи исчерпан!"
				Core.addLogMsg( "reqResp: session request limit exhausted!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
				serialPort:clearBuffers( ); -- очистить приёмный и передающий буфер
				serialPort:close();			-- уничтожить объект
				goto quit;
		end
	end
	packet = ret;

-- ожидаемый ответ: 10 FF 90 00 00 04 00 3F 54 2B 0A 86 B6
								
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkCRC: проверка CRC...");
	ret = checkCRC( packet);
	if ret == -1 then											  
	  goto reqSessionFull_1;															-- CRC не совпали ==>> ПОВТОР запроса
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
	  goto reqSessionFull_1;															-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР запроса
	end
	packet = ret;										
--[[----------------------------------------------------------------------------------
	обработка запроса сеанса связи (базовый формат сообщения) 
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "packetHandler: обработка запроса сеанса связи (базовый формат сообщения)...");
	packetHandler( packet, ch);
--[[----------------------------------------------------------------------------------
	запрос изменения скорости обмена ==> посылка  10 FF 90 91 00 05 00 42 03 00 00 00 79 56
----------------------------------------------------------------------------------]]--
::reqChBaudRate::																-- МЕТКА ::reqChBaudRate::
	Core.SPT943_Driver_Msg = "ЗАПРОС изменения скорости обмена, попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: exchange rate change request, attempt " .. c .. " off " .. tryConnection .. "...");
	ret = reqResp( reqBaudRateStr);
	if ret == -1 then
		Core.SPT943_Driver_Msg = "ЗАПРОС изменения скорости обмена, попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: exchange rate change request, attempt " .. c .. " off " .. tryConnection .. "...");
		 c = c + 1;
		 if c <= 3 then															-- no response from the device ==>> ПОВТОР запроса 
				os.sleep( 1);
				goto reqChBaudRate; 
			else 
				Core.SPT943_Driver_Msg = "Лимит запросов изменения скорости обмена исчерпан.";
				Core.addLogMsg( "reqResp: limit of requests for exchange rate change has been exhausted.")	-->> ВЫХОД ИЗ ПРОГРАММЫ
				serialPort:clearBuffers( ); -- очистить приёмный и передающий буфер
				serialPort:close();			-- уничтожить объект
				goto quit;
		 end
	end
	packet = ret;
-- ожидаемый ответ: 10 FF 90 91 00 01 00 42 B8 B8
				
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
	--Core.addLogMsg( "checkCRC: проверка CRC...");
	ret = checkCRC( packet);
	if ret == -1 then											  
	  goto reqChBaudRate;																-- CRC не совпали ==>> ПОВТОР запроса
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
	  goto reqChBaudRate;																-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР запроса
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса изменения скорости обмена (базовый формат сообщения) 
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "packetHandler: обработка запроса изменения скорости обмена...");
	ret = packetHandler( packet, ch);
	if ret == -1 then																	-- ошибка открытия COM-порта -->> ВЫХОД ИЗ ПРОГРАММЫ
		goto quit;
	end
--[[----------------------------------------------------------------------------------
	ВТОРОЙ запрос сеанса связи (базовый формат сообщения) ==> посылка	10 FF 90 00 00 05 00 3F 00 00 00 00 D9 19
----------------------------------------------------------------------------------]]--
::reqSessionFull_2::																-- МЕТКА ::reqSessionFull_2::

	Core.SPT943_Driver_Msg = "ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: session request (basic message format), attempt " .. c .. " off " .. tryConnection .. "...");
	ret = reqResp( reqSessionFullStr);
	if ret == -1 then				 	  
		c = c + 1;
		Core.SPT943_Driver_Msg = "ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: session request (basic message format), attempt " .. c .. " off " .. tryConnection .. "...");
		if c <= 3 then										 
				os.sleep( 1);
				goto reqSessionFull_2;												-- no response from the device ==>> ПОВТОР запроса 
			else 
				Core.SPT943_Driver_Msg = "Лимит запросов сеанса связи исчерпан!";
				Core.addLogMsg( "reqResp: session request limit exhausted!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
				serialPort:clearBuffers( ); -- очистить приёмный и передающий буфер
				serialPort:close();			-- уничтожить объект
				goto quit;
		end
	end
	packet = ret;

-- ожидаемый ответ: 10 FF 90 00 00 04 00 3F 54 2B 0A 86 B6
								
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkCRC: проверка CRC...");
	ret = checkCRC( packet);
	if ret == -1 then											  
		goto reqSessionFull_2;															-- CRC не совпали ==>> ПОВТОР запроса
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
		goto reqSessionFull_2;															-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР запроса
	end
	packet = ret;										
--[[----------------------------------------------------------------------------------
	обработка запроса сеанса связи (базовый формат сообщения) 
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "packetHandler: обработка запроса сеанса связи (базовый формат сообщения)...");
	packetHandler( packet, ch);

-- сформировать начальную и конечную даты часового архива
	archiveType = "HourArchive_1";				-- задать тип архива
	ret = readLastDate( archiveType);			-- получить последнюю дату часового архива
	t = os.date( "*t", (ret));
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: latest hour's archive date => " .. str);
	startDT = tonumber( ret) + 3600;		-- последнюю дату часового архива УВЕЛИЧИТЬ на 01 час
	t = os.date( "*t", (startDT));
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: hour's startDT => " .. str);
	t = os.date( "*t")
	endDT = os.time( t);					-- текущее системное время в формате EPOCH
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: hour's endDT => " .. str);
-- получить часовой архив
	ret = bu( archiveType, startDT, endDT, dataBasePath);
	if ret == -1 then
		goto quit;
	end

-- сформировать начальную и конечную даты суточного архива
	archiveType = "DateArchive_1";
	ret = readLastDate( archiveType);			-- получить последнюю дату суточного архива
	t = os.date( "*t", (ret));
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: latest date's archive date => " .. str);
	startDT = tonumber( ret) + 86400;		-- последнюю дату архива УВЕЛИЧИТЬ на 24 часа
	t = os.date( "*t", (startDT));
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: date's startDT => " .. str);
	t = os.date( "*t")
	endDT = os.time( t);					-- текущее системное время в формате EPOCH
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: date's endDT => " .. str);
-- получить суточный архив
	ret = bu( archiveType, startDT, endDT, dataBasePath);
	if ret == -1 then
		goto quit;
	end

-- сформировать начальную и конечную даты месячного архива
	archiveType = "MonthArchive_1";
	ret = readLastDate( archiveType);			-- получить последнюю дату месячного архива
	t = os.date( "*t", (ret));
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: latest month's archive date => " .. str);
	startDT = tonumber( ret) + 2678400;	-- последнюю дату архива УВЕЛИЧИТЬ на 01 месяц
	t = os.date( "*t", (startDT));
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: month's startDT => " .. str);
	t = os.date( "*t")
	endDT = os.time( t);					-- текущее системное время в формате EPOCH
	str = string.format( "%02d.%02d.", t.day, t.month) .. t.year .. " " .. string.format( "%02d:%02d", t.hour, t.min);	 -- формирование строки вида: 01.09.2017 00:00
	Core.addLogMsg( "main: month's endDT => " .. str);
-- получить месячный архив
	ret = bu( archiveType, startDT, endDT, dataBasePath);
	if ret == -1 then
		goto quit;
	end

	serialPort:clearBuffers( ); -- очистить приёмный и передающий буфер
	serialPort:close();			-- уничтожить объект
::quit::																			  -- МЕТКА ВЫХОД ИЗ ПРОГРАММЫ
	Core.SPT943_Driver_Msg = "ВЫХОД.";
	Core.addLogMsg( "EXIT.");

--**********************************************************
--**********************	  EXIT	  **********************
--**********************************************************

end

function f1()
	if Core.TimerRequestControl.StartRequest == true and Core["@RESERVED"] == false then
		main();
	end
end
Core.onExtChange( {"TimerRequestControl.StartRequest"}, f1);
Core.waitEvents();
