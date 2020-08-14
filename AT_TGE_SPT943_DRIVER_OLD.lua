	local fdHour_1;		-- дескриптор файла часового архива теплового ввода 1
	local fdDate_1;		-- дескриптор файла суточного архива теплового ввода 1
	local fdMonth_1;	-- дескриптор файла месячного архива теплового ввода 1

	local fdHour_2;		-- дескриптор файла часового архива теплового ввода 2
	local fdDate_2;		-- дескриптор файла суточного архива теплового ввода 2
	local fdMonth_2;	-- дескриптор файла месячного архива теплового ввода 2

	local pathHour_1 = "C:/SPT943_ArchiveFiles/HourArchive_1.txt";
	local pathDate_1 = "C:/SPT943_ArchiveFiles/DateArchive_1.txt";
	local pathMonth_1 = "C:/SPT943_ArchiveFiles/MonthArchive_1.txt";
	
	local pathHour_2 = "C:/SPT943_ArchiveFiles/HourArchive_2.txt";
	local pathDate_2 = "C:/SPT943_ArchiveFiles/DateArchive_2.txt";
	local pathMonth_2 = "C:/SPT943_ArchiveFiles/MonthArchive_2.txt";

	function f1()
	
	-- ПАРАМЕТРЫ ЗАДАВАЕМЫЕ ПОЛЬЗОВАТЕЛЕМ:

	local userArchTypeHour = Core.ArchiveRequestControl.HourArchiveSelected;		-- тип архива заданный пользователем - часовой
	local userArchTypeDate = Core.ArchiveRequestControl.DateArchiveSelected;		-- тип архива заданный пользователем - суточный	
	local userArchTypeMonth = Core.ArchiveRequestControl.MonthArchiveSelected;	-- тип архива заданный пользователем - месячный

	-- ПРИМЕЧАНИЕ: дата выбранная пользователем из GUI поступает в формате epoch виде дробного числа: 0123456789.0
	-- десятую долю необходимо отрезать: 0123456789

	local userStartDate = tostring( Core.ArchiveRequestControl.StartDate - 10800);				-- СТАЛО
	local userStartDate = tonumber( string.sub(userStartDate, 1, 10));		-- СТАЛО
	Core.addLogMsg( "f1: userStartDate => " .. userStartDate);				-- СТАЛО
	
	local userEndDate = tostring( Core.ArchiveRequestControl.EndDate - 10800);					-- СТАЛО
	local userEndDate = tonumber( string.sub(userEndDate, 1, 10));			-- СТАЛО
	Core.addLogMsg( "f1: userEndDate => " .. userEndDate);					-- СТАЛО
	
	-- local userStartDate = Core.ArchiveRequestControl.StartDate - 10800; --РАБОТАЕТ  00:00
	-- local userEndDate = Core.ArchiveRequestControl.EndDate - 10800; --РАБОТАЕТ  00:00
	
	--	local userStartDate = Core.ArchiveRequestControl.StartDate; --БЫЛО 03:00
	--local userEndDate = Core.ArchiveRequestControl.EndDate; --БЫЛО 03:00
	

	-- коммуникационные параметры:
	local portName = "COM7";	-- имя порта
	local baudRate = 2400;		-- скорость обмена
	local dataBits = 8;			-- количество бит данных
	local stopBits = 1;			-- количество стоп-бит	
	local parity = "NONE";		-- паритет

	local serialPort;

	-- тип архива - часовой (respArchType = 0), суточный (respArchType = 1), месячный (respArchType = 3)
	local respArchType;		--	тип архива в ответе

	-- строка инициализация сеанса связи
	local initSessionStr = string.char( 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
								0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);

	--	строка запроса сеанса связи (СОКРАЩЁННЫЙ ФОРМАТ СООБЩЕНИЯ)
	local reqSessionShortStr = string.char( 0x10, 0xFF, 0x3F, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x16);
	--	строка запроса сеанса связи (БАЗОВЫЙ ФОРМАТ СООБЩЕНИЯ)
	local reqSessionFullStr = string.char( 0x10, 0xFF, 0x90, 0x00, 0x00, 0x05, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x00, 0xD9, 0x19);
	--	строка запроса изменения скорости обмена
	local reqBaudRateStr = string.char( 0x10, 0xFF, 0x90, 0x00, 0x00, 0x05, 0x00, 0x42, 0x03, 0x00, 0x00, 0x00, 0x7E, 0x39);

	-- ВЫЯСНИТЬ ЧТО ЭТО ЗА ЗАПРОС
	-- = string.char( 0x10, 0xFF, 0x90, 0x91, 0x00, 0x05, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x00, 0xDE, 0x76);
	 
	-- 1 запрос чтения параметра
	-- local reqParamStr_1 = string.char( 0x10, 0xFF, 0x90, 0x01, 0x00, 0x1F, 0x00, 0x72, 0x4A, 0x03, 0x00, 0x07, 0x00, 0x4A, 0x03, 0x00, 0x06, 0x00, 0x4A, 0x03, 0x00, 0x40, 0x20, 0x4A, 0x03, 0x00, 0x42, 0x20, 0x4A, 0x03, 0x00, 0x03, 0x00, 0x4A, 0x03, 0x00, 0x04, 0x00, 0x19, 0x28);							 
	-- 2 запрос чтения параметра
	--local reqParamStr_2 = string.char( 0x10, 0xFF, 0x90, 0x02, 0x00, 0x0B, 0x00, 0x72, 0x4A, 0x03, 0x00, 0x01, 0x04, 0x4A, 0x03, 0x00, 0x00, 0x04, 0x1F, 0x0C);
	-- 3 запрос чтения параметра
	--local reqParamStr_3 = string.char( 0x10, 0xFF, 0x90, 0x03, 0x00, 0x06, 0x00, 0x72, 0x4A, 0x03, 0x00, 0x00, 0x00, 0xD2, 0xA7);

--[[--------------------------------------------------------------------------------------------------------------
	@brief				- возвращает значение no бит из buf, начиная с бита startbit
	@param	- buf		- буфер с данными
	@param	- startbit	- первый бит 
	@param	- no		- количество бит
--------------------------------------------------------------------------------------------------------------]]--
	local function extractBit(buf, startbit, no)
	  local mask = ~(-1 << no);
	  return (buf >> startbit) & mask;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- преобразование числа формата 32 бит IEEE 754 в десятичное число
--------------------------------------------------------------------------------------------------------------]]--
	function ieee754Converter( hex)
		if hex >> 31 == 0 then
				sign = 1;
			else
				sign = -1;
		end
	  
		exponent = (hex >> 23)  & 0xFF;
	  
		if exponent ~= 0 then
				mantiss =  (hex & 0x7FFFFF) | 0x800000;
			else 
				mantiss = (hex & 0x7FFFFF) << 1;
		end
	  
		float = sign * (mantiss * 2^-23) * (2^(exponent-127));
	  
		return float;
	end
--[[--------------------------------------------------------------------------------------------------------------
	@brief						- открытие COM-порта
	@param	portName	string	- имя порта
	@param	baudRate	number	- скорость обмена
	@param	dataBits	number	- количество бит данных
	@param	stopBits	number	- количество стоп-бит  
	@param	parity		string	- паритет
--------------------------------------------------------------------------------------------------------------]]--
	function portOpen( portName, baudRate, dataBits, stopBits, parity)
		serialPort = SerialPort.open( portName, baudRate, dataBits, stopBits, parity);

		if serialPort == nil then
			Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия порта " .. "(" .. portName .. ")" .. "!";
			Core.addLogMsg( "portOpen: ошибка открытия порта " .. "(" .. portName .. ")" .. "!");
		return -1;
			else
				Core.ArchiveRequestControl.SPT943DriverMessage = "Порт открыт " .. "(" .. portName .. ")," .. " скорость обмена - " .. baudRate .. ".";
				Core.addLogMsg( "portOpen: порт открыт " .. "(" .. portName .. ")," .. " скорость обмена - " .. baudRate .. ".");
		end	 
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief							- инициализация сеанса связи
	@param	initSessionStr	string	- строка инициализация сеанса связи
--------------------------------------------------------------------------------------------------------------]]--
	function initSession( initSessionStr)
		serialPort:send( initSessionStr)
		--Core.addLogMsg( "initSession: отправлено " .. (string.len( initSessionStr)) .. " байт.");
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief					- запрос данных, приём данных (строка), упаковка численных значений символов принятого пакета в массив
	@param	reqStr	string	- запрос данных (строка)
	@return	packet	table   - принятый пакет (массив)
--------------------------------------------------------------------------------------------------------------]]--
	function reqResp( reqStr)

		local t1;					-- время начала отсчёта таймаутов
		local respLen;				-- размер принятых данных
		local respTimeout = 5;		-- время ожидания ответа от теплосчётчика
		local strPacket;			-- набор принятых символов
		local symTimeout = 0.01;	-- межсимвольный тайм-аут

		-- отправка запроса
		serialPort:send( reqStr);
		--Core.addLogMsg( "reqResp: отправлено " .. ( string.len( reqStr)) .. " байт.");
		
		-- ожидание ответа до истечения времени respTimeout 
		t1 = os.clock();		-- фиксируем время

		while os.clock() - t1 <= respTimeout and serialPort:recvBytesAvailable() <= 0 do
			-- ожидание времени истечения таймаута ответа  
		end
		
		respLen = serialPort:recvBytesAvailable();
		
		if	respLen <= 0 then
			Core.ArchiveRequestControl.SPT943DriverMessage = "Нет ответа от теплосчётчика!";
			Core.addLogMsg( "reqResp: нет ответа от теплосчётчика!");
			return -1;
		end

		-- Пришло сколько-то байт. Собираем их в пакет до срабатывания условия symTimeout.
		strPacket = serialPort:recv( respLen);
		t1 = os.clock();							-- фиксируем время
		
		local packet = {};							-- массив для хранения символов принятого сообщения
	  
		while os.clock() - t1 <= symTimeout do		-- пока разность (t2-t1) <= symTimeout
			respLen = serialPort:recvBytesAvailable();
		-- Если данные поступают, то добавляем их в пакет и сбрасываем время.

			if respLen > 0 then
				strPacket = strPacket .. serialPort:recv( respLen);
				t1 = os.clock();
			end
		end
		local b;
		for i = 1, (string.len( strPacket)) do
			b = string.byte( strPacket, i); 	-- получить численное значение символа
			table.insert( packet, b);			-- вставить численное значение символа в поле массива
		end
		--Core.addLogMsg( "reqResp: ОТВЕТ: принято " .. #packet .. " байт.");
		return packet;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief					- проверка контрольной суммы cs
	@param	packet	table   - принятый пакет (массив)
	@return -1				- при несовпадении cs
	@return	packet	table   - при совпадении cs
--------------------------------------------------------------------------------------------------------------]]--
	function checkCS( packet)

	local printCsOk = "checkCS: OK!";
	local printCsErr = "checkCS: ОШИБКА!";
	local printCalcCS = "checkCS: Вычисленная контрольная сумма: ";
	local printRespCS = "checkCS: Контрольная сумма в ответном сообщении: ";
	local calcCS;												-- вычисленная контрольная сумма
	local respCS;												-- контрольная сумма в ответном сообщении
	local lenPacket;											-- вычисленный размер строки

		lenPacket = #packet;						            -- вычисление размера строки
		--Core.addLogMsg( "checkCS: Принято " .. lenPacket.. " байт.");

		if lenPacket == 9 then
			calcCS = 0;											-- контрольная сумма CS
			for i = 2,7 do
				calcCS = calcCS + packet[i];					-- арифметическое сложение байтов 2..7
			end
			calcCS = calcCS & 0xFF;								-- обрезаем старший байт
			calcCS = calcCS ~ 0xFF;								-- побитное инвертирование
			--Core.addLogMsg( printCalcCS .. calcCS);

			respCS = packet[8];									-- извлекаем 8-ой байт (CS) из ответного сообщения
			--Core.addLogMsg( printRespCS .. respCS);

				if calcCS ~= respCS then
					Core.addLogMsg( printCsErr);
					return -1;									-- возвращает при несовпадении cs
					else
						--Core.addLogMsg( printCsOk);
						return packet;							-- возвращает при совпадении cs
				end
		end

		if lenPacket == 6 then
			calcCS = 0;											-- контрольная сумма CS
			for i = 2,4 do
				calcCS = calcCS + packet[i];					-- арифметическое сложение байтов 2..4
			end
			calcCS = calcCS & 0xFF;								-- обрезаем старший байт
			calcCS = calcCS ~ 0xFF;								-- побитное инвертирование
			--Core.addLogMsg( printCalcCS .. calcCS);

			respCS = packet[5];									-- извлекаем 5-ый байт (CS) из ответного сообщения
			--Core.addLogMsg( printRespCS .. respCS);

				if calcCS ~= respCS then
					Core.addLogMsg( printCsErr);
					return -1;									-- возвращает при несовпадении cs
					else
						--Core.addLogMsg( printCsOk);
						return packet;							-- возвращает при совпадении cs
				end
		end

		if lenPacket == 8 then
			calcCS = 0;											-- контрольная сумма CS
			for i = 2,6 do
				calcCS = calcCS + packet[i];					-- арифметическое сложение байтов 2..6
			end
			calcCS = calcCS & 0xFF;								-- обрезаем старший байт
			calcCS = calcCS ~ 0xFF;								-- побитное инвертирование
			--Core.addLogMsg( printCalcCS .. calcCS);

			respCS = packet[7];									-- извлекаем 7-ой байт (CS) из ответного сообщения
			--Core.addLogMsg( printRespCS .. respCS);

	  if lenPacket ~= 6 and lenPacket ~= 8 and lenPacket ~= 9 then
		Core.addLogMsg( "checkCS: ОШИБКА! Размер пакета дефективный."); 
		return -1;
	  end

				if calcCS ~= respCS then
					Core.addLogMsg( printCsErr);
					return -1;									-- возвращает при несовпадении cs
					else
						--Core.addLogMsg( printCsOk);
						return packet;							-- возвращает при совпадении cs
				end
		end	
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief					- проверка наличия кода ошибки 0x21 в ответном сообщении
	@param	packet	table	- принятый пакет
	@return -1				- при наличии ошибки	
	@return packet	table	- при отсутствии ошибки
--------------------------------------------------------------------------------------------------------------]]--
	function checkError( packet)
			local fnc;			-- код функции
			local errorCode;	-- код ошибки

			fnc = packet[3];
			errorCode = packet[4];

			if  fnc == 0x21 then
					if errorCode == 0x00 then
							Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка (0x21), нарушение структуры запроса (0x00).";
							Core.addLogMsg( "checkError: ОТВЕТ: ошибка (0x21), нарушение структуры запроса (0x00).");
							return -1;
						elseif errorCode == 0x01 then
							Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка (0x21), защита от записи (0x01).";
							Core.addLogMsg( "checkError: ОТВЕТ: ошибка (0x21), защита от записи (0x01).");
							return -1;
						elseif errorCode == 0x02 then
							Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка (0x21), недопустимые значения параметров запроса (0x02).";
							Core.addLogMsg( "checkError: ОТВЕТ: ошибка (0x21), недопустимые значения параметров запроса (0x02).");
							return -1;
					end
			end
				if fnc == 0x3F or fnc == 0x90 then
					--Core.addLogMsg( "checkError: ОК!");
					return packet
				end 
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief					- проверка CRC в принятом пакете
	@param packet	table	- принятый пакет
	@return	-1				- при несовпадении CRC
	@return	packet	table	- принятый пакет
--------------------------------------------------------------------------------------------------------------]]--
	function checkCRC( packet)
		local printCRCOk = "checkCRC: OK!";
		local printCRCErr = "checkCRC: ОШИБКА!";
		local printCalcCRC = "checkCRC: вычисленная контрольная сумма: ";
		local printRespCRC = "checkCRC: контрольная сумма в ответном сообщении: ";
		local calcCRC;								-- вычисленная CRC
		local respCRC;								-- CRC в ответном сообщении
		local lenPacket;							-- размер массива с ответным сообщением
		local cutPacket;							-- обрезанный пакет для расчёта CRC (без байта начала кадра 0x10 и двух последних байт CRC)
		local lenCutPacket;							-- размер обрезанного массива
	  
		lenPacket = #packet;						-- вычисление размера массива с ответным сообщением

	  -- извлечение контрольной суммы из ответного сообщения (младший и старший CRC поменялись местами за счёт перекрёстного присвоения)
	  local respCrcMSB = packet[ lenPacket - 1];	-- получить crcL - младший байт CRC и присвоить старшему (меняем местами)
	  local memCrcMSB = respCrcMSB;					-- запомнить crcL - младший байт CRC
	  local respCrcLSB = packet[ lenPacket];		-- получить crcH - старший байт CRC и присвоить младшему (меняем местами)
	  local memCrcLSB = respCrcLSB;					-- запомнить crcH - старший байт CRC
	  respCrcLSB = respCrcLSB << 8;					-- сдвинуть младший байт CRC влево на 8 бит
	  respCRC = respCrcLSB | respCrcMSB;                  
	  --Core.addLogMsg( string.format( printRespCRC .. "%X", respCRC));

	  -- формирование тела ответного сообщения (без байта начала кадра 0x10 и двух последних байт CRC)
		table.remove( packet);			-- удалить последний элемент таблицы (crcH - старший байт CRC)
		table.remove( packet);			-- удалить последний элемент таблицы (crcL - младший байт CRC)
		table.remove( packet, 1);		-- удалить первый элементы таблицы (soh - управляющий код начала сообщения)
		lenCutPacket = #packet			-- вычисление размера обрезанного массива
		calcCRC = 0;
		local i = 1;
		while lenCutPacket > 0 do

	  -- вычисление CRC тела ответного сообщения (без байта начала кадра 0x10 и двух последних байт CRC)
			calcCRC = calcCRC ~ packet[i] << 8;
			i = i + 1;
			for j = 0, 7 do
				if ( calcCRC & 0x8000) == 0x8000 then
					calcCRC = (( calcCRC << 1) ~ 0x1021) & 0xFFFF;
				else
					calcCRC = calcCRC << 1;
				end
			end
			lenCutPacket = lenCutPacket - 1;
		end
	  
	  -- меняем местами байты CRC
		local calcCrcLSB = extractBit( calcCRC, 0, 8);
		calcCrcLSB = calcCrcLSB << 8;
		local calcCrcMSB = extractBit( calcCRC, 8, 8);
		calcCRC = calcCrcLSB | calcCrcMSB;
		--Core.addLogMsg( string.format( printCalcCRC .. "%X", calcCRC));

		if calcCRC == respCRC then	
			--Core.addLogMsg( printCRCOk);
		table.insert ( packet, 1, 0x10);		-- вставить в таблицу soh - управляющий код начала сообщения
		table.insert ( packet, memCrcMSB);		-- вставить	 в таблицу crcL - младший байт CRC
		table.insert ( packet, memCrcLSB);		-- вставить	 в таблицу crcH - старший байт CRC
		return packet;
		end
	  
		if calcCRC ~= respCRC then
			Core.addLogMsg( printCRCErr);
			return -1;
		end
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief						- вычисление CRC в пакете запроса
	@param	tReqParam	table	- таблица с подготовленными параметрами запросов архивов
	@return CRC					- вычисленная CRC
--------------------------------------------------------------------------------------------------------------]]--
	function calcCRC( tReqParam)

	  local len =  #tReqParam;

	  local CRC = 0;
	  local i = 1;
	  while len > 0 do
		
		CRC = CRC ~ tReqParam[ i] << 8;
		i = i + 1;
		for J = 0, 7 do
		  if (CRC & 0x8000) == 0x8000 then
			CRC = ((CRC << 1) ~ 0x1021) & 0xFFFF;
		  else
			CRC = CRC << 1;
			
		  end
		end
		len = len - 1;
	  end
	--Core.addLogMsg("calcCRC: CRC: " .. CRC)
	return CRC;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка строки октетов
--------------------------------------------------------------------------------------------------------------]]--
	function octetStringHandler()
		Core.addLogMsg( "octetStringHandler: обработка строки октетов...");
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка отсутствия данных
--------------------------------------------------------------------------------------------------------------]]--
	function nullHandler()
		Core.addLogMsg( "nullHandler: обработка отсутствия данных...");
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка строки ASCII-символов
--------------------------------------------------------------------------------------------------------------]]--
	function ASCIIHandler()
		Core.addLogMsg( "ASCIIHandler: обработка ASCII-символов...");
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка даты архивной записи
--------------------------------------------------------------------------------------------------------------]]--
	function archdateHandler( packet, i, ch, c)

		local strH = "";	-- (Human) строка для записи её в архивный файл, опционально содержащая число.месяц.год часы:минуты 
		local strE = "";	-- (Epoch) строка для записи её в архивный файл в формате EPOCH
		local n;			-- кол-во байт, представляющих время
		local t = {};		-- таблица для элементов времени
	  
		Core.addLogMsg( "archdateHandler: обработка даты архивной записи...");

		n = packet[ i+1];	-- packet[ i+1] - 10-ый байт сообщения - кол-во байт, представляющих время

		if n == 0x00 then	-- полное отсутствие записей в архиве						
			Core.addLogMsg( "archdateHandler: ОТВЕТ: в архиве полностью отсутствуют записи.");
			return -1;
			elseif n == 0x02 and ch == 1 then	-- время - месяц/год представлено 2 байтами -->> месячные архивы
				-- strH = string.format("%02d.", packet[ i+3]) .. "20" .. packet[ i+2] .. "\n";	-- сформировать строку вида: 09.2017
				-- if c < 5 then
					-- fdMonth_1:write( strH);													-- записать строку в файл архива
				-- end
				respArchType = 3;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					fdMonth_1:write( strE, "\n");	-- записать строку в файл архива
				end

			elseif n == 0x02 and ch == 2 then	-- время - месяц/год представлено 2 байтами -->> месячные архивы
				-- strH = string.format("%02d.", packet[ i+3]) .. "20" .. packet[ i+2] .. "\n";	-- сформировать строку вида: 09.2017
				-- if c < 5 then
					-- fdMonth_2:write( strH);													-- записать строку в файл архива
				-- end
				respArchType = 3;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					fdMonth_2:write( strE, "\n");	-- записать строку в файл архива				
				end

			elseif n == 0x03 and ch == 1 then	-- время - число/месяц/год представлено 3 байтами -->> суточные архивы
				-- strH = string.format("%02d.%02d.", packet[ i+4], packet[ i+3]) .. "20" .. packet[ i+2] ..	"\n";	-- сформировать строку вида: 01.09.2017
				-- if c < 5 then
					-- fdDate_1:write( strH);																			-- записать строку в файл архива
				-- end
				respArchType = 1;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = 0;							
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					fdDate_1:write( strE, "\n");	-- записать строку в файл архива
				end

			elseif n == 0x03 and ch == 2 then	-- время - число/месяц/год представлено 3 байтами -->> суточные архивы
				-- strH = string.format("%02d.%02d.", packet[ i+4], packet[ i+3]) .. "20" .. packet[ i+2] ..	"\n";	-- сформировать строку вида: 01.09.2017
				-- if c < 5 then
					-- fdDate_2:write( strH);																			-- записать строку в файл архива
				-- end
				respArchType = 1;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = 0;							
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					fdDate_2:write( strE, "\n");	-- записать строку в файл архива
				end

			elseif n == 0x04 and ch == 1 then	-- время - число/месяц/год часы представлено 4 байтами -->> часовые архивы
				-- strH = string.format("%02d.%02d.", packet[ i+4], packet[ i+3]) .. "20" .. packet[ i+2] .. "\t" .. string.format("%02d:", packet[ i+5]) .. "00" .. "\n";	-- сформировать строку вида: 01.09.2017 00:00
				-- if c < 5 then
					-- fdHour_1:write( strH);																													  				-- записать строку в файл архива
				-- end
				respArchType = 0;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = packet[ i+5];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					fdHour_1:write( strE, "\n");	-- записать строку в файл архива
				end

			elseif n == 0x04 and ch == 2 then	-- время - число/месяц/год часы представлено 4 байтами -->> часовые архивы
				-- strH = string.format("%02d.%02d.", packet[ i+4], packet[ i+3]) .. "20" .. packet[ i+2] .. "\t" .. string.format("%02d:", packet[ i+5]) .. "00" .. "\n";	-- сформировать строку вида: 01.09.2017 00:00
				-- if c < 5 then
					-- fdHour_2:write(strH);																													  				-- записать строку в файл архива
				-- end
				respArchType = 0;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = packet[ i+5];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					fdHour_2:write( strE, "\n");	-- записать строку в файл архива
				end
		end
	local devTime = strE;
	return respArchType, devTime;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка текущего времени
--------------------------------------------------------------------------------------------------------------]]--
	function timeHandler()
	  local strH = "";																	-- строка с текущим временем
	  strH = string.format("%02d:%02d:%02d", packet[ 20], packet[ 19], packet[ 18]);	-- формирование строки с текущим временем
	  Core.addLogMsg( "dateHandler: ОТВЕТ: текущее время: " .. strH);
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка текущей календарной даты
--------------------------------------------------------------------------------------------------------------]]--
	function dateHandler( packet)

	  local tdw = { [0] = "Понедельник", 
					[1] = "Вторник",
					[2] = "Среда",
					[3] = "Четверг",
					[4] = "Пятница",
					[5] = "Суббота",
					[6] = "Воскресенье"};
	  
	  local strH = "";		-- строка с текущей календарной датой
	  local bdw;			-- байт сообщения содержащий день недели
	  
	  bdw = packet[ 14];	-- получить значение байта содержащий день недели
	  
	  for i = 0, 6 do
		if bdw == i then
		  bdw = tdw[ i];
		end
	  end
	  strH = string.format("%02d.%02d.", packet[ 11], packet[ 12]) .. "20" .. packet[ 13];	-- формирование строки с текущей календарной датой
	  Core.addLogMsg( "dateHandler: ОТВЕТ: текущая дата: " .. strH .. ", " .. bdw);
	end

-- --[[--------------------------------------------------------------------------------------------------------------
	-- @brief	- обработка числа с плавающей точкой IEEE 754 (Float)
-- --------------------------------------------------------------------------------------------------------------]]--
	-- function IEEFloatHandler( packet, i, respArchType, ch)
		-- Core.addLogMsg( "IEEFloatHandler: обработка числа с плавающей точкой IEEE 754 (Float)...");
			-- local n;								-- количество байт представляющие данные тепловой энергии
			-- local str = "";							-- строка с данными тепловой энергии
			
				-- n = packet[ i+1];					-- получить количество байт представляющие данные тепловой энергии
				-- for j = 1, n do
					-- str = str .. packet[ i+1+j];	-- сформировать строку с данными тепловой энергии
				-- end

			-- if respArchType == 3 and ch == 1 then			-- время - месяц/год представлены 2 байтами -->> месячные архивы
				-- fdMonth_1:write( str, "\n");				-- записать строку в файл месячного архива теплового ввода 1
				-- elseif respArchType == 3 and ch == 2 then
					-- fdMonth_2:write( str, "\n");			-- записать строку в файл месячного архива теплового ввода 2
				-- elseif respArchType == 1 and ch == 1 then	-- время - число/месяц/год представлены 3 байтами -->> суточные архивы
					-- fdDate_1:write( str, "\n");				-- записать строку в файл суточного архива теплового ввода 1
				-- elseif respArchType == 1 and ch == 2 then
					-- fdDate_2:write( str, "\n");				-- записать строку в файл суточного архива теплового ввода 2
				-- elseif respArchType == 0 and ch == 1 then	-- время - число/месяц/год часы представлены 4 байтами -->> часовые архивы
					-- fdHour_1:write( str, "\n");				-- записать строку в файл часового архива теплового ввода 1
				-- elseif respArchType == 0 and ch == 2 then
					-- fdHour_2:write( str, "\n");				-- записать строку в файл часового архива теплового ввода 2
			-- end
	-- end

--[[--------------------------------------------------------------------------------------------------------------0x62312142
	@brief	- обработка числа с плавающей точкой IEEE 754 (Float)
--------------------------------------------------------------------------------------------------------------]]--
	function IEEFloatHandler( packet, i, respArchType, ch)
		Core.addLogMsg( "IEEFloatHandler: обработка числа с плавающей точкой IEEE 754 (Float)...");
		local hex;		-- данные тепловой энергии считанные из прибора (IEEE 754)
		local float;	-- данные тепловой энергии для записи в файлы архива (float)		

		local a = packet[ i+5];
		a = a << 24;
		local b = packet[ i+4];
		b = b << 16;
		local c = packet[ i+3];
		c = c << 8;
		local d = packet[ i+2];
		hex = a | b | c | d;

		float = ieee754Converter( hex);
		float = string.format( "%.3f", float );

		if respArchType == 3 and ch == 1 then			-- время - месяц/год представлены 2 байтами -->> месячные архивы
			fdMonth_1:write( float, "\n");				-- записать строку в файл месячного архива теплового ввода 1
			elseif respArchType == 3 and ch == 2 then
				fdMonth_2:write( float, "\n");			-- записать строку в файл месячного архива теплового ввода 2
			elseif respArchType == 1 and ch == 1 then	-- время - число/месяц/год представлены 3 байтами -->> суточные архивы
				fdDate_1:write( float, "\n");			-- записать строку в файл суточного архива теплового ввода 1
			elseif respArchType == 1 and ch == 2 then
				fdDate_2:write( float, "\n");			-- записать строку в файл суточного архива теплового ввода 2
			elseif respArchType == 0 and ch == 1 then	-- время - число/месяц/год часы представлены 4 байтами -->> часовые архивы
				fdHour_1:write( float, "\n");			-- записать строку в файл часового архива теплового ввода 1
			elseif respArchType == 0 and ch == 2 then
				fdHour_2:write( float, "\n");			-- записать строку в файл часового архива теплового ввода 2
		end
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief		- обработка тэгов
	@return	-1	- в архиве отсутствует запись
	@return ret - время возвращённое прибором (epoch)
--------------------------------------------------------------------------------------------------------------]]--
	function tagHandler( tag, packet, i, ch, c)
	
		local devTime;

		if tag == 0x04 then -- строка октетов													OCTET STRING
				octetStringHandler()
			elseif tag == 0x05 then -- нет данных												NULL
				nullHandler();
			elseif tag == 0x16 then -- строка ASCII-символов									ASCIIString
				ASCIIHandler();
			elseif tag == 0x41 then -- беззнаковое целое (unsigned int)							IntU
				Core.addLogMsg( "tagHandler: обработка беззнакового целого...");
			elseif tag == 0x42 then -- целое со знаком (int)									IntS
				Core.addLogMsg( "tagHandler: обработка целого со знаком...");
			elseif tag == 0x43 then -- число с плавающей точкой IEEE 754 (Float)				IEEFloat
				IEEFloatHandler( packet, i, respArchType, ch);
			elseif tag == 0x44 then -- параметр с комбинированным значением (int + float)		MIXED
				Core.addLogMsg( "tagHandler: обработка параметра с комбинированным значением (int + float)...");
			elseif tag == 0x45 then -- оперативный параметр настроечной БД						Operative
				Core.addLogMsg( "tagHandler: обработка оперативного параметра настроечной БД...");
			elseif tag == 0x46 then -- подтверждение											ACK
				Core.addLogMsg( "tagHandler: обработка подтверждения...");
			elseif tag == 0x47 then -- текущее время											TIME
				timeHandler();
			elseif tag == 0x48 then -- текущая календарная дата									DATE
				dateHandler( packet);
			elseif tag == 0x49 then -- дата архивной записи										ARCHDATE
				local respArchType;
				respArchType, devTime = archdateHandler(  packet, i, ch, c);
			  if  respArchType == -1 then
				return -1;	-- в архиве полностью отсутствуют записи  (0x49, 0x00)
			  end
			elseif tag == 0x4A then -- номер параметра											PNUM
				Core.addLogMsg( "tagHandler: обработка номера параметра...");
			elseif tag == 0x4B then -- сборка флагов											FLAGS
				Core.addLogMsg( "tagHandler: обработка сборки флагов...");
			elseif tag == 0x55 then -- ошибка													ERR
				Core.addLogMsg( "tagHandler: обработка ошибки...");
		end
		return devTime;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief			- обработка ответных сообщений
	@param	packet	- принятый пакет
	@return -1		- ошибка открытия COM-порта
--------------------------------------------------------------------------------------------------------------]]--
	function packetHandler( packet, ch)

		local deviceCode = "";	-- код устройства
		local fnc;				-- код функции
		local byte3;			-- в зависимости от формата (сокращённый или базовый) сообщения: FRM – код формата сообщения ИЛИ FNC - код функции
		local tag;				-- тег
		local dl = 0;			-- размер последующих элементов данных
		local lenL;				-- размер тела сообщения (мл. байт)
		local lenH;				-- размер тела сообщения (ст. байт)
		local lenMsgBody;		-- размер тела сообщения
		local i = 9;			-- порядковый номер тэга даты архивной записи 0x49
		local devTime;			-- время возвращённое прибором 
	--
	--		0x3F ОБРАБОТКА ОТВЕТА НА ЗАПРОС ИНИЦИАЛИЗАЦИИ СЕАНСА (СОКРАЩЁННЫЙ ФОМАТ)
	--

		local byte3 = packet[ 3];	-- определение наличия кода формата сообщения --> 0x90 в 3-ом байте ответа (в сокращённом формате frm НЕ РАВЕН 0x90 )

		if byte3 == 0x3F then		-- обработка ответа на запрос сеанса связи (сокращённый формат)
			for i = 4, 5 do
				deviceCode = deviceCode .. " " .. string.format("%.2X", packet[ i]);
			end
			Core.ArchiveRequestControl.SPT943DriverMessage = "Код устройства: " .. deviceCode .. "," .. " идентификатор исполнения: " .. string.format("%.2X", packet[ 6]) .. ".";
			Core.addLogMsg( "packetHandler: ОТВЕТ: код устройства: " .. deviceCode .. "," .. " идентификатор исполнения: " .. string.format("%.2X", packet[ 6]) .. ".");
			--goto finish;
			return;
		end


		if byte3 == 0x90 then		-- формат сообщения - базовый
	--
	--		0x3F ОБРАБОТКА ОТВЕТА НА ЗАПРОС ИНИЦИАЛИЗАЦИИ СЕАНСА (БАЗОВЫЙ ФОМАТ)
	--

			fnc = packet[ 8];		-- определение кода функции в 8-ом байте ответа

			if fnc == 0x3F then
				for i = 9, 10 do
					deviceCode = deviceCode .. " " .. string.format("%.2X", packet[ i]);
				end
				Core.ArchiveRequestControl.SPT943DriverMessage = "Код устройства: " .. deviceCode .. "," .. " идентификатор исполнения: " .. string.format("%.2X", packet[ 11]) .. ".";
				Core.addLogMsg( "packetHandler: ОТВЕТ: код устройства: " .. deviceCode .. "," .. " идентификатор исполнения: " .. string.format("%.2X", packet[ 11]) .. ".");
				--goto finish;
				return;
			end

	--
	--		0x42 ОБРАБОТКА ОТВЕТА НА ЗАПРОС ИЗМЕНЕНИЯ СКОРОСТИ ОБМЕНА	 (БАЗОВЫЙ ФОМАТ)
	--

			if fnc == 0x42 then
				Core.ArchiveRequestControl.SPT943DriverMessage = "Скорость обмена теплосчётчика - 19200.";
				Core.addLogMsg( "packetHandler: ОТВЕТ: скорость обмена теплосчётчика - 19200.");
				serialPort:clearBuffers( );		-- очистить приёмный и передающий буфер
				serialPort:close();				-- уничтожить объект
				os.sleep(1)
				-- открытие COM-порта на скорости 19200
				local baudRate = 19200;		-- скорость обмена
				Core.ArchiveRequestControl.SPT943DriverMessage = "Открытие " .. portName .. " на скорости " ..baudRate .. "...";
				Core.addLogMsg( "portOpen: открытие COM-порта (19200)...");
				local ret = portOpen( portName, baudRate, dataBits, stopBits, parity);
				if  ret == -1 then				  
				  return -1;												-- ошибка открытия порта ==>> ВЫХОД ИЗ ПРОГРАММЫ
				end
				return;
			end

	--
	--		0x72 ОБРАБОТКА ОТВЕТА НА ЗАПРОС ЧТЕНИЯ ПАРАМЕТРА (БАЗОВЫЙ ФОМАТ)
	--

			if fnc == 0x72 then

				-- нахождение значения размера тела сообщения:

				lenL = packet[ 6];						-- получить значение размера тела сообщения (мл. байт)
				lenH = packet[ 7];						-- получить значение размера тела сообщения (ст. байт)
				lenH = lenH << 8;
				lenMsgBody = lenL | lenH;				-- получить значение размера тела сообщения
				lenMsgBody = lenMsgBody + 4;			-- размер тела сообщения уменьшаем на 1 (байт fnc) для упрощения цикла

				-- цикл получения значений тегов размеров последующих элементов данных и обработки данных:

				while lenMsgBody > 0 do
					tag = packet[ i];					-- получить значение тега в i-ом байте ответа
					dl = packet[ i+1];					-- получить размер последующих элементов данных в i+1-ом байте ответа

					tagHandler( tag, packet, i, ch, c)		-- обработка тегов

					i = i + dl + 2;						-- получить следующий номер байта
					dl = 2 + dl;
					lenMsgBody = lenMsgBody - dl;		-- вычислить остаток байт подлежащих обработке
				end
			end

	--
	--		0x61 ОБРАБОТКА ОТВЕТА НА ЗАПРОС ПОИСКА АРХИВНОЙ ЗАПИСИ (БАЗОВЫЙ ФОМАТ)
	--

			if fnc == 0x61 then

				local c = 0; 	-- счётчик вызовов обработки даты архивной записи
								-- запрещает запись времени в архивный файл в каждом пятом вызове  
	::up::
				while (1) do
					tag = packet[ i];					-- получить значение тега в i-ом байте ответа
					if tag ~= 0x30 then					-- тег НЕ является тегом последовательности
						dl = packet[ i+1];				-- получить размер последующих элементов данных в i+1-ом байте ответа
					
						if tag == 0x49 then
							c = c + 1;
						end 

						local ret = tagHandler( tag, packet, i, ch, c);	-- обработка тегов
						devTime = ret;			-- 

						if ret == -1 then					-- в архиве полностью отсутствуют записи (0x49, 0x00)
						  	return;
						end
			
						i = i + dl + 2;						-- получить следующий порядковый номер байта
		
					end

					if tag == 0x30 then						-- тег является тегом последовательности
						local quantity;
						local dl;
						local msb;							-- байт тега последовательности после операции & с 1000 0000

						if devTime and packet[ i+1] == 0x00 then
							Core.addLogMsg( "packetHandler: ОТВЕТ: конец архивной записи.");
							goto finish;							-- конец архивной записи (0x49, 0xXY, 0x30, 0x00)
						end
						
						msb = packet[ i+1] & 0x80;						-- проверка старшего бита на "1"								

						if msb == 0x80 then								-- ЕСЛИ старший бит == "1" ( составной способ кодирования)
							quantity = extractBit( packet[ i+1], 0, 7);	-- вычисляем сколькими байтами представлена длина последующих элементов данных (БАЙТ1 ... БАЙТN)
							dl = 1 + 1 + quantity ;						-- получить размер в байтах: БАЙТ последовательности (0x30) + ВЕДУЩИЙ БАЙТ + (БАЙТ1 ... БАЙТN)
						end

						if msb ~= 0x80 then								-- ЕСЛИ старший бит == "0" ( простой способ кодирования)
							quantity = 0;								-- количество байт определяющих длину последующих элементов данных в последовательности = 0
							dl = 2;										-- получить размер в байтах: БАЙТ последовательности (0x30) + ПРОСТОЙ БАЙТ
						end

						-- перебор строк в интервальном архиве до достижения строки с данными тепловой энергии	(строки 0 .. 15)
						for a = 1, 16 do
							i = i + dl;									-- получить порядковый номер параметра интервального архива
							dl = packet[ i+1]							-- получить количество байт первого параметра интервального архива
							dl = dl + 2;								-- получить количество байт: байт длины + количество байтов данных + байт тэга
											  
							if a == 16 then								-- достигли строки 15 в записи интервального архива с данными тепловой энергии
								IEEFloatHandler( packet, i, respArchType, ch)	-- обработка записи с данными тепловой энергии
		 
								-- перебор строк в интервальном архиве до достижения последней строки записи интервального архива (строки 16 .. 26)
								for b = 1, 11 do
									i = i + dl;							-- получить порядковый номер параметра интервального архива
									dl = packet[ i+1]					-- получить количество байт первого параметра интервального архива
									dl = dl + 2;						-- получить количество байт: байт длины + количество байтов данных + байт тэга	
								  
									if b == 11 then						-- достигли последней 26-ой строки в записи интервального архива
									  goto up;
									end
								end
							end
						end
						i = i + dl;						-- получить следующий порядковый номер байта
					end
				end
			end
		end
	::finish::
	return devTime; -- время возвращённое прибором
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief				- подготовка пакета для запроса архивных записей
	@param id			- индификатор сообщения										- передаётся "блоком управления"
	@param ch			- номер канала												- передаётся "блоком управления"
	@param rectype		- тип запрашиваемых архивов (часовой, суточный, месячный)	- передаётся "блоком управления"
	@param ArchiveRequestControl.StartDate	- начальная дата архива										- передаётся "блоком управления"
	@param endDate		- конечная дата архива										- передаётся "блоком управления"
	@return packet		- пакет готовый к передаче
--------------------------------------------------------------------------------------------------------------]]--
	function preparePacketReqArchive( id, ch, rectype, StartDate, endDate)
	  
	  local tHourDate = {};					  -- таблица с подготовленными параметрами запросов часовых и суточных архивов 
	  local tMonth = {};					  -- таблица с подготовленными параметрами запросов месячных архивов
	  local packet = "";					  -- строка запроса подготовленная к передаче
	  local len_tHourDate;					  -- размер таблицы с подготовленными параметрами запросов часовых и суточных архивов
	  local len_tMonth;						  -- размер таблицы с переменными параметрами запросов месячных архивов
	  
	  -- заполнение таблицы tHourDate:
	  
	  local dateTable;						  -- временная таблица, для хранения даты и времени
	  local temp;							  -- временная переменная
--------- запрос часового/месячного архива --------------------------------------------------------------------------------------------
	  if rectype == 0 or rectype == 1 then	  
		
		dateTable = os.date( "*t", StartDate);  -- заполнили временную таблицу значением НАЧАЛЬНОЙ даты

		temp = tostring( dateTable.year);	   -- получили строку "2017"
		temp = string.sub ( temp, 3);		   -- получили строку "17"
		temp = tonumber( temp);					-- получили число 17 

		local startYY = temp;				   -- записали год (начало)
		local startMH = dateTable.month;	   -- записали месяц (начало)
		local startDD = dateTable.day;		   -- записали число (начало)
		local startHH = dateTable.hour;		   -- записали час (начало)	   

		dateTable = os.date( "*t", endDate);	   -- заполнили временную таблицу значением КОНЕЧНОЙ даты

		temp = tostring( dateTable.year);	   -- получили строку "2017"
		temp = string.sub ( temp, 3);		   -- получили строку "17"
		temp = tonumber( temp);				   -- получили число 17 

		local endYY = temp;					   -- записали год (конец)
		local endMH = dateTable.month;		   -- записали месяц (конец)
		local endDD = dateTable.day;			   -- записали число (конец)
		local endHH = dateTable.hour		   -- записали час (конец)	  

		tHourDate[1] = 0x10;	   -- soh						управляющий код начала сообщения, всегда 0x10
		tHourDate[2] = 0xFF;	   -- nt						сетевой номер абонента-адресата, 0xFF - безадресное обращение к абоненту
		tHourDate[3] = 0x90;	   -- frm						код формата сообщения
		tHourDate[4] = id;		   -- id			задаётся	индификатор сообщения
		tHourDate[5] = 0x00;	   -- atr						зарезервировано (0x00)
		tHourDate[6] = 0x1C;	   -- lenL						длина тела сообщения, младший байт
		tHourDate[7] = 0x00;	   -- lenH						длина тела сообщения, старший байт
		tHourDate[8] = 0x61;	   -- func						код запроса поиска архивной записи, всегда 0x61
		tHourDate[9] = 0x04;	   -- octetStringTag			тег строка октетов
		tHourDate[10] = 0x05;	   -- dl_1						длина последующих элементов данных
		tHourDate[11] = 0xFF;	   -- noL						номер архивного раздела, младший байт
		tHourDate[12] = 0xFF;	   -- noH						номер архивного раздела, старший байт
		tHourDate[13] = ch;		   -- ch			задаётся	номер канала  (1 или 2)
		tHourDate[14] = rectype;   -- rectype		задаётся	определяет тип запрашиваемых архивов и формат их вывода
		tHourDate[15] = 0x50;	   -- n							максимальное количество включаемых в ответ записей
		tHourDate[16] = 0x49;	   -- archDateTag				тег даты архивной записи
		tHourDate[17] = 0x08;	   -- dl_2						длина последующих сегментов данных
		tHourDate[18] = startYY;   -- yy			задаётся	год относительно начала тысячелетия (начало)
		tHourDate[19] = startMH;   -- mh			задаётся	месяц (начало)
		tHourDate[20] = startDD;   -- dd			задаётся	день (начало)
		tHourDate[21] = startHH;   -- hh			задаётся	час (начало)
		tHourDate[22] = 0x00;	   -- mm						минута (начало)
		tHourDate[23] = 0x00;	   -- ss						секунда (начало)
		tHourDate[24] = 0x00;	   -- ms_l						миллисекунда, младший байт (начало)
		tHourDate[25] = 0x00;	   -- ms_h						миллисекунда, старший байт (начало)
		tHourDate[26] = 0x49;	   -- archDateTag				тег даты архивной записи
		tHourDate[27] = 0x08;	   -- dl_3						длина последующих сегментов данных
		tHourDate[28] = endYY;	   -- yy			задаётся	год относительно начала тысячелетия (конец)
		tHourDate[29] = endMH;	   -- mh			задаётся	месяц (конец)
		tHourDate[30] = endDD;	   -- dd			задаётся	день (конец)
		tHourDate[31] = endHH;	   -- hh			задаётся	час (конец)
		tHourDate[32] = 0x00;	   -- mm						минута (конец)
		tHourDate[33] = 0x00;	   -- ss						секунда (конец)
		tHourDate[34] = 0x00;	   -- ms_l						миллисекунда, младший байт (конец)
		tHourDate[35] = 0x00;	   -- ms_h						миллисекунда, старший байт (конец)
		tHourDate[36] = 0x00;	   -- crcL		вычисляется		CRC16, младший байт
		tHourDate[37] = 0x00;	   -- crcH		вычисляется		CRC16, старший байт	 

		table.remove( tHourDate);			-- удалить последний элемент таблицы (crcH - старший байт CRC)
		table.remove( tHourDate);			-- удалить последний элемент таблицы (crcL - младший байт CRC)
		table.remove( tHourDate, 1);		-- удалить первый элементы таблицы (soh - управляющий код начала сообщения)
	 
		local CRC = calcCRC( tHourDate);	-- вычислить CRC
		
		local crcL = CRC >> 8;				-- получить crcH - младший байт CRC
		local crcH = CRC & 0xFF;			-- получить crcL - старший байт CRC
		table.insert ( tHourDate, 1, 0x10);	-- вставить в таблицу soh - управляющий код начала сообщения
		table.insert ( tHourDate, crcL);		-- вставить	 в таблицу crcL - младший байт CRC
		table.insert ( tHourDate, crcH);		-- вставить	 в таблицу crcH - старший байт CRC
		
		-- формирование строки запроса архивной записи для отправки в COM-порт:

		len_tHourDate = #tHourDate;
		for i = 1, len_tHourDate do
		  packet = packet .. string.char( tHourDate[ i]);
		end

--------- запрос месячного архива --------------------------------------------------------------------------------------------
 		  elseif rectype == 3 then
		  -- 10 FF 90 04 00 10 00 61 04 05 FF FF 01 03 50 49 02 11 01 49 02 11 09 31 D0

			-- заполнение таблицы tMonth:

			dateTable = os.date( "*t", StartDate);	-- заполнили временную таблицу значением НАЧАЛЬНОЙ даты 

			temp = tostring( dateTable.year);		-- получили строку "2017"
			temp = string.sub ( temp, 3);			-- получили строку "17"
			temp = tonumber( temp);					-- получили число 17 

			startYY = temp;							-- записали год (начало)
			startMH = dateTable.month;				-- записали месяц (начало)

			dateTable = os.date( "*t", endDate);		-- заполнили временную таблицу значением КОНЕЧНОЙ даты

			temp = tostring( dateTable.year);		-- получили строку "2017"
			temp = string.sub ( temp, 3);			-- получили строку "17"
			temp = tonumber( temp);					-- получили число 17

			endYY = temp;							-- записали год (конец)
			endMH = dateTable.month;				-- записали месяц (конец)
			 
			tMonth[1] = 0x10;		  -- soh						управляющий код начала сообщения, всегда 0x10
			tMonth[2] = 0xFF;		  -- nt							сетевой номер абонента-адресата, 0xFF - безадресное обращение к абоненту
			tMonth[3] = 0x90;		  -- frm						код формата сообщения
			tMonth[4] = id;			  -- id				задаётся	индификатор сообщения
			tMonth[5] = 0x00;		  -- atr						зарезервировано (0x00)
			tMonth[6] = 0x10;		  -- lenL						длина тела сообщения, младший байт
			tMonth[7] = 0x00;		  -- lenH						длина тела сообщения, старший байт
			tMonth[8] = 0x61;		  -- func						код запроса поиска архивной записи, всегда 0x61
			tMonth[9] = 0x04;		  -- octetStringTag				тег строка октетов
			tMonth[10] = 0x05;		  -- dl_1						длина последующих элементов данных
			tMonth[11] = 0xFF;		  -- noL						номер архивного раздела, младший байт
			tMonth[12] = 0xFF;		  -- noH						номер архивного раздела, старший байт
			tMonth[13] = ch;		  -- ch							номер канала
			tMonth[14] = 0x03;		  -- rectype					определяет тип запрашиваемых архивов и формат их вывода	 (3 - месячные)
			tMonth[15] = 0x50;		  -- n							максимальное количество включаемых в ответ записей
			tMonth[16] = 0x49;		  -- archDateTag				тег даты архивной записи
			tMonth[17] = 0x02;		  -- dl_2						длина последующих сегментов данных
			tMonth[18] = startYY;	  -- yy				задаётся	год относительно начала тысячелетия
			tMonth[19] = startMH;	  -- mh				задаётся	месяц
			tMonth[20] = 0x49;		  -- archDateTag				тег даты архивной записи
			tMonth[21] = 0x02;		  -- dl_3						длина последующих сегментов данных
			tMonth[22] = endYY;		  -- yy				задаётся	год относительно начала тысячелетия
			tMonth[23] = endMH;		  -- mh				задаётся	месяц
			tMonth[24] = 0x00;		  -- crcL		вычисляется		CRC16, младший байт
			tMonth[25] = 0x00;		  -- crcH		вычисляется		CRC16, старший байт
				  
			table.remove( tMonth);		-- удалить последний элемент таблицы (crcH - старший байт CRC)
			table.remove( tMonth);		-- удалить последний элемент таблицы (crcL - младший байт CRC)
			table.remove( tMonth, 1);	-- удалить первый элементы таблицы (soh - управляющий код начала сообщения)			
			
			local CRC = calcCRC( tMonth);		-- вычислить CRC
			
			local crcL = CRC >> 8;				-- получить crcH - младший байт CRC
			local crcH = CRC & 0xFF;			-- получить crcL - старший байт CRC
			table.insert (tMonth, 1, 0x10);		-- вставить в таблицу soh - управляющий код начала сообщения
			table.insert (tMonth, crcL);		-- вставить  в таблицу crcL - младший байт CRC
			table.insert (tMonth, crcH);		-- вставить  в таблицу crcH - старший байт CRC			   
			  
			  -- формирование строки запроса архивной записи для отправки в COM-порт:
			  len_tMonth = #tMonth;
			  for i = 1, len_tMonth do
				packet = packet .. string.char( tMonth[ i]);
			  end
	  end
	return packet;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief						- цикл для инкремента id (0..255), задания ch (1/2), задания rectype (0,1,3), StartDate и endDate
	@param	userArchTypeHour	- тип архива заданный пользователем - часовой
	@param	userArchTypeDate	- тип архива заданный пользователем - суточный
	@param	userArchTypeMonth	- тип архива заданный пользователем - месячный
	@param	userStartDate		- НАЧАЛЬНАЯ дата заданная пользователем
	@param	userEndDate			- КОНЕЧНАЯ дата заданная пользователем
--------------------------------------------------------------------------------------------------------------]]--
	function bu( userArchTypeHour, userArchTypeDate, userArchTypeMonth, userStartDate, userEndDate)

		local id = 1;				-- индификатор сообщения
		local ch = 1;				-- номер канала
		local rectype;				-- тип архива
		local StartDate;			-- НАЧАЛЬНАЯ дата
		local endDate;				-- КОНЕЧНАЯ дата
		local ret;					-- возвращаемое значение функции
		local packet;				-- пакет
		local c = 1;				-- счётчик вызовов
		local tryConnection = 3;	-- количество подключений (запросов) к теплосчётчику
		local devTime;

		if (userArchTypeHour == 0 and userArchTypeDate == 0 and userArchTypeMonth == 0) or (userArchTypeHour == nil and userArchTypeDate == nil and userArchTypeMonth == nil) then
			Core.ArchiveRequestControl.SPT943DriverMessage = "ВНИМАНИЕ! Не заданы типы архивных записей.";
			Core.addLogMsg( "bu: " .. "ВНИМАНИЕ! Не заданы типы архивных записей.");
			return -1;
		end

		if userStartDate == nil or userEndDate == nil then
			Core.ArchiveRequestControl.SPT943DriverMessage = "ВНИМАНИЕ! Не заданы начальная и/или конечная даты архивных записей.";
			Core.addLogMsg( "bu: " .. "ВНИМАНИЕ! Не заданы начальная и/или конечная даты архивных записей.");
			return -1;
		end
--------------------------------------------------------------------------------------
		if userArchTypeHour == true then -- задан тип часового архива
			
			rectype = 0;
			StartDate = userStartDate;
			endDate = userEndDate;
			Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС часового архива с " .. os.date( "%d.%m.%Y %H:%M", StartDate) .. " по " .. os.date( "%d.%m.%Y %H:%M", endDate) .. "...";
			Core.addLogMsg( "bu: " .. "ЗАПРОС часового архива с " .. os.date( "%d.%m.%Y %H:%M", StartDate) .. " по " .. os.date( "%d.%m.%Y %H:%M", endDate) .. "...");
			
			fdHour_1 = io.open( pathHour_1, "a+");								-- открыть файл часового архива ТВ1 на дозапись
			if fdHour_1 == nil then												-- проверка открытия файла часового архива ТВ1
				--Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла часового архива ТВ1!";
				Core.addLogMsg( "bu: ошибка открытия файла часового архива ТВ1!");
				return -1;
			end

			fdHour_1:setvbuf( "full", 1024);                       				-- задать режим файла - полная буферизация

			fdHour_2 = io.open( pathHour_2, "a+");								-- открыть файл часового архива ТВ2 на дозапись
			if fdHour_2 == nil then												-- проверка открытия файла часового архива ТВ2
				--Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла часового архива ТВ2!";
				Core.addLogMsg( "bu: ошибка открытия файла часового архива ТВ2!");
				return -1;
			end

			fdHour_2:setvbuf( "full", 1024);                       				-- задать режим файла - полная буферизация			
--------------------------------------------------------------------------------------			
			while 1 do
				Core.addLogMsg( "bu: ch: " .. ch);
				Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: " .. os.date("%d.%m.%Y %H:%M", StartDate));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей часового архива ТВ1
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, StartDate, endDate);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей часового архива ТВ1
----------------------------------------------------------------------------------]]--
::rrH::     
				ret = reqResp( packet);
				if ret == -1 then
					Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС часового архива ТВ1, попытка " .. c .. " из " .. tryConnection .. "..."
					Core.addLogMsg( "bu: ЗАПРОС часового архива ТВ1, попытка " .. c .. " из " .. tryConnection .. "...");
					c = c + 1;
					if c <= 3 then
					os.sleep( 1);
					goto rrH;															-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
							else 
							Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов часового архива ТВ1 исчерпан!"
							Core.addLogMsg( "bu: лимит запросов часового архива ТВ1 исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then
				  goto rrH;																		-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				ret = checkError( packet);
				if ret == -1 then
				  goto rrH;																		-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса часового архива ТВ1
----------------------------------------------------------------------------------]]--
				devTime = packetHandler( packet, ch);
--------------------------------------------------------------------------------------
				id = id + 1;		-- увеличить на 1 индификатор сообщения
				if id == 256 then	-- при переполнении обнулить id
					id = 0;
				end
--------------------------------------------------------------------------------------
				if ch == 1 then		-- задать номера канала (1/2)
					ch = 2;
					elseif ch == 2 then
						ch = 1;
				end
--------------------------------------------------------------------------------------
				Core.addLogMsg( "bu: ch: " .. ch);
				Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: " .. os.date("%d.%m.%Y %H:%M", StartDate));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей часового архива ТВ2
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, StartDate, endDate);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей часового архива ТВ2
----------------------------------------------------------------------------------]]--
::rrH1::     
				ret = reqResp( packet);
				if ret == -1 then
					Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС часового архива ТВ2, попытка " .. c .. " из " .. tryConnection .. "...";
					Core.addLogMsg( "bu: ЗАПРОС часового архива ТВ2, попытка " .. c .. " из " .. tryConnection .. "...");
					c = c + 1;
					if c <= 3 then
					os.sleep( 1);
					goto rrH1;															-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
							else 
							Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов часового архива ТВ2 исчерпан!";
							Core.addLogMsg( "bu: лимит запросов часового архива ТВ2 исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then
				  goto rrH1;																		-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				ret = checkError( packet);
				if ret == -1 then
				  goto rrH1;																		-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса часового архива ТВ2
----------------------------------------------------------------------------------]]--
				devTime = packetHandler( packet, ch);
				if devTime == nil or devTime >= endDate then
					Core.addLogMsg( "bu: обработка запроса часового архива ТВ1, Архив начинается с даты: " .. tostring(devTime));
					fdHour_1:flush();				-- записать выходной буфер файла на диск
					fdHour_1:close();				-- закрыть дескриптор файла
					fdHour_2:flush();				-- записать выходной буфер файла на диск
					fdHour_2:close();				-- закрыть дескриптор файла
					break;
				end
--------------------------------------------------------------------------------------				
				id = id + 1;		-- увеличить на 1 индификатор сообщения
				if id == 256 then	-- при переполнении обнулить id
					id = 0;
				end
--------------------------------------------------------------------------------------
				if ch == 1 then		-- задать номера канала (1/2)
					ch = 2;
					elseif ch == 2 then
						ch = 1;
				end
--------------------------------------------------------------------------------------
				StartDate = devTime;
--------------------------------------------------------------------------------------
				if StartDate >= endDate then	-- ЕСЛИ НАЧАЛЬНАЯ дата сравнялась с КОНЕЧНОЙ датой прервать цикл
					Core.ArchiveRequestControl.SPT943DriverMessage = "Чтение часового архива завершено.";
					Core.addLogMsg( "bu: " .. "Чтение часового архива завершено.");
					fdHour_1:flush();				-- записать выходной буфер файла на диск
					fdHour_1:close();				-- закрыть дескриптор файла
					fdHour_2:flush();				-- записать выходной буфер файла на диск
					fdHour_2:close();				-- закрыть дескриптор файла
					break;
				end
			end
		end
--------------------------------------------------------------------------------------
		if userArchTypeDate == true then -- задан тип суточного архива

			rectype = 1;
			StartDate = userStartDate;
			endDate = userEndDate;
			Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС суточного архива ТВ1 с " .. os.date( "%d.%m.%Y %H:%M", StartDate) .. " по " .. os.date( "%d.%m.%Y %H:%M", endDate) .. "...";
			Core.addLogMsg( "bu: " .. "ЗАПРОС суточного архива ТВ1 с " .. os.date( "%d.%m.%Y %H:%M", StartDate) .. " по " .. os.date( "%d.%m.%Y %H:%M", endDate) .. "...");

			fdDate_1 = io.open( pathDate_1, "a+");									-- открыть файл суточного архива ТВ1 на дозапись
			if fdDate_1 == nil then													-- проверка открытия файла суточного архива ТВ1
				--Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла суточного архива ТВ1!";
				Core.addLogMsg( "bu: ошибка открытия файла суточного архива ТВ1!");
				return -1;
			end

			fdDate_1:setvbuf( "full", 1024);                       					-- задать режим файла - полная буферизация	

			fdDate_2 = io.open( pathDate_2, "a+");									-- открыть файл суточного архива ТВ2 на дозапись
			if fdDate_2 == nil then													-- проверка открытия файла суточного архива ТВ2
				--Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла суточного архива ТВ2!";
				Core.addLogMsg( "bu: ошибка открытия файла суточного архива ТВ2!");
				return -1;
			end

			fdDate_2:setvbuf( "full", 1024);                       					-- задать режим файла - полная буферизация			
--------------------------------------------------------------------------------------			
			while 1 do
				Core.addLogMsg( "bu: ch: " .. ch);
				Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: " .. os.date("%d.%m.%Y %H:%M", StartDate));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей суточного архива ТВ1
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, StartDate, endDate);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей суточного архива ТВ1
----------------------------------------------------------------------------------]]--
::rrD::     
				ret = reqResp( packet);
				if ret == -1 then				 	  
					c = c + 1;
					Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС суточного архива ТВ1, попытка " .. c .. " из " .. tryConnection .. "...";
					Core.addLogMsg( "bu: ЗАПРОС суточного архива ТВ1, попытка " .. c .. " из " .. tryConnection .. "...");
						if c <= 3 then										 
							os.sleep( 1);
							goto rrD;								-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
							else 
							Core.addLogMsg( "bu: лимит запросов суточного архива ТВ1 исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then											  
				  goto rrD;											-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				ret = checkError( packet);
				if ret == -1 then										  
				  goto rrD;											-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса суточного архива ТВ1
----------------------------------------------------------------------------------]]--
				devTime = packetHandler( packet, ch);
--------------------------------------------------------------------------------------
				id = id + 1;		-- увеличить на 1 индификатор сообщения
				if id == 256 then	-- при переполнении обнулить id
					id = 0;
				end
--------------------------------------------------------------------------------------
				if ch == 1 then		-- задать номера канала (1/2)
					ch = 2;
					elseif ch == 2 then
						ch = 1;
				end
--------------------------------------------------------------------------------------
				Core.addLogMsg( "bu: ch: " .. ch);
				Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: " .. os.date("%d.%m.%Y %H:%M", StartDate));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей суточного архива ТВ2
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, StartDate, endDate);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей суточного архива ТВ2
----------------------------------------------------------------------------------]]--
::rrD1::     
				ret = reqResp( packet);
				if ret == -1 then				 	  
					c = c + 1;
					Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС суточного архива ТВ2, попытка " .. c .. " из " .. tryConnection .. "...";
					Core.addLogMsg( "bu: ЗАПРОС суточного архива ТВ2, попытка " .. c .. " из " .. tryConnection .. "...");
						if c <= 3 then										 
							os.sleep( 1);
							goto rrD1;								-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
							else 
							Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов суточного архива ТВ2 исчерпан!";
							Core.addLogMsg( "bu: лимит запросов суточного архива ТВ2 исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then											  
				  goto rrD1;											-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				ret = checkError( packet);
				if ret == -1 then										  
				  goto rrD1;											-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса суточного архива ТВ2
----------------------------------------------------------------------------------]]--
				devTime = packetHandler( packet, ch);
				if devTime == nil or devTime >= endDate then
					Core.addLogMsg( "bu: обработка запроса суточного архива ТВ1, Архив начинается с даты: " .. tostring(devTime));
					fdDate_1:flush();				-- записать выходной буфер файла на диск
					fdDate_1:close();				-- закрыть дескриптор файла
					fdDate_2:flush();				-- записать выходной буфер файла на диск
					fdDate_2:close();				-- закрыть дескриптор файла
					break;
				end
--------------------------------------------------------------------------------------				
				id = id + 1;		-- увеличить на 1 индификатор сообщения
				if id == 256 then	-- при переполнении обнулить id
					id = 0;
				end
--------------------------------------------------------------------------------------
				if ch == 1 then		-- задать номера канала (1/2)
					ch = 2;
					elseif ch == 2 then
						ch = 1;
				end
--------------------------------------------------------------------------------------
				StartDate = devTime;
--------------------------------------------------------------------------------------
				if StartDate >= endDate then	-- ЕСЛИ НАЧАЛЬНАЯ дата сравнялась с КОНЕЧНОЙ датой прервать цикл
					Core.ArchiveRequestControl.SPT943DriverMessage = "Чтение суточного архива завершено.";
					Core.addLogMsg( "bu: " .. "Чтение суточного архива завершено.");
					fdDate_1:flush();				-- записать выходной буфер файла на диск
					fdDate_1:close();				-- закрыть дескриптор файла
					fdDate_2:flush();				-- записать выходной буфер файла на диск
					fdDate_2:close();				-- закрыть дескриптор файла
					break;
				end
			end
		end
--------------------------------------------------------------------------------------
		if userArchTypeMonth == true then -- задан тип месячного архива
		
			rectype = 3;
			StartDate = userStartDate;
			endDate = userEndDate;
			Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС месячного архива с " .. os.date( "%d.%m.%Y %H:%M", StartDate) .. " по " .. os.date( "%d.%m.%Y %H:%M", endDate) .. "...";
			Core.addLogMsg( "bu: " .. "ЗАПРОС месячного архива с " .. os.date( "%d.%m.%Y %H:%M", StartDate) .. " по " .. os.date( "%d.%m.%Y %H:%M", endDate) .. "...");
			
			fdMonth_1 = io.open( pathMonth_1, "a+");									-- открыть файл месячного архива ТВ1 на дозапись
			if fdMonth_1 == nil then												-- проверка открытия файла месячного архива ТВ1
				--Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла месячного архива ТВ1!";
				Core.addLogMsg( "bu: ошибка открытия файла месячного архива ТВ1!");
				return -1;
			end

			fdMonth_1:setvbuf( "full", 1024);                       				-- задать режим файла - полная буферизация	

			fdMonth_2 = io.open( pathMonth_2, "a+");									-- открыть файл месячного архива ТВ2 на дозапись
			if fdMonth_2 == nil then												-- проверка открытия файла месячного архива ТВ2
				--Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла месячного архива ТВ2!";
				Core.addLogMsg( "bu: ошибка открытия файла месячного архива ТВ2!");
				return -1;
			end

			fdMonth_2:setvbuf( "full", 1024);                       				-- задать режим файла - полная буферизация
--------------------------------------------------------------------------------------			
			while 1 do
				Core.addLogMsg( "bu: ch: " .. ch);
				Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: " .. os.date("%d.%m.%Y %H:%M", StartDate));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей месячного архива ТВ1
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, StartDate, endDate);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей месячного архива ТВ1
----------------------------------------------------------------------------------]]--
::rrM::       
				ret = reqResp( packet);
				if ret == -1 then				 	  
					c = c + 1;
					Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС месячного архива ТВ1, попытка " .. c .. " из " .. tryConnection .. "...";
					Core.addLogMsg( "bu: ЗАПРОС месячного архива ТВ1, попытка " .. c .. " из " .. tryConnection .. "...");
						if c <= 3 then										 
						os.sleep( 1);
						goto rrM;								-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
							else 
							Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов месячного архива ТВ1 исчерпан!";
							Core.addLogMsg( "bu: лимит запросов месячного архива ТВ1 исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then											  
				  goto rrM;											-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				if checkError( packet) == -1 then										  
				  goto rrM;						-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
				end
--[[----------------------------------------------------------------------------------
	обработка запроса месячного архива ТВ1
----------------------------------------------------------------------------------]]--
				devTime = packetHandler( packet, ch);
--------------------------------------------------------------------------------------
				id = id + 1;		-- увеличить на 1 индификатор сообщения
				if id == 256 then	-- при переполнении обнулить id
					id = 0;
				end
--------------------------------------------------------------------------------------
				if ch == 1 then		-- задать номера канала (1/2)
					ch = 2;
					elseif ch == 2 then
						ch = 1;
				end
--------------------------------------------------------------------------------------
				Core.addLogMsg( "bu: ch: " .. ch);
				Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: " .. os.date("%d.%m.%Y %H:%M", StartDate));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей месячного архива ТВ2
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, StartDate, endDate);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей месячного архива ТВ2
----------------------------------------------------------------------------------]]--
::rrM1::       
				ret = reqResp( packet);
				if ret == -1 then				 	  
					c = c + 1;
					Core.ArchiveRequestControl.SPT943DriverMessage = "ЗАПРОС месячного архива ТВ2, попытка " .. c .. " из " .. tryConnection .. "...";
					Core.addLogMsg( "bu: ЗАПРОС месячного архива ТВ2, попытка " .. c .. " из " .. tryConnection .. "...");
						if c <= 3 then										 
						os.sleep( 1);
						goto rrM1;								-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
							else 
							Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов месячного архива ТВ2 исчерпан!";
							Core.addLogMsg( "bu: лимит запросов месячного архива ТВ2 исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then											  
				  goto rrM1;											-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				if checkError( packet) == -1 then										  
				  goto rrM1;						-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
				end
--[[----------------------------------------------------------------------------------
	обработка запроса месячного архива ТВ2
----------------------------------------------------------------------------------]]--
				devTime = packetHandler( packet, ch);
				if devTime == nil or devTime >= endDate then
					Core.addLogMsg( "bu: обработка запроса месячного архива ТВ1, Архив начинается с даты: " .. tostring(devTime));
					fdMonth_1:flush();				-- записать выходной буфер файла на диск
					fdMonth_1:close();				-- закрыть дескриптор файла
					fdMonth_2:flush();				-- записать выходной буфер файла на диск
					fdMonth_2:close();				-- закрыть дескриптор файла
					break;
				end
--------------------------------------------------------------------------------------
				id = id + 1;		-- увеличить на 1 индификатор сообщения
				if id == 256 then	-- при переполнении обнулить id
					id = 0;
				end
--------------------------------------------------------------------------------------
				if ch == 1 then		-- задать номера канала (1/2)
					ch = 2;
					elseif ch == 2 then
						ch = 1;
				end
--------------------------------------------------------------------------------------
				StartDate = devTime + 86400;	-- прибавить одни сутки
--------------------------------------------------------------------------------------
				if StartDate >= endDate then					-- ЕСЛИ НАЧАЛЬНАЯ дата сравнялась с КОНЕЧНОЙ датой прервать цикл
					Core.ArchiveRequestControl.SPT943DriverMessage = "Чтение месячного архива завершено.";
					Core.addLogMsg( "bu: " .. "Чтение месячного архива завершено.");
					fdMonth_1:flush();							-- записать выходной буфер файла на диск
					fdMonth_1:close();							-- закрыть дескриптор файла
					fdMonth_2:flush();							-- записать выходной буфер файла на диск
					fdMonth_2:close();							-- закрыть дескриптор файла
					break;
				end
			end
		end
	end

--**********************************************************
--********************	  ENTRY	  **************************
--**********************************************************

	local ret;					-- возвращаемое значение функции
	local packet;           	-- пакет
	local c = 1;                -- счётчик вызовов
	local tryConnection = 3;	-- количество подключений (запросов) к теплосчётчику

	--local fdLogMsg;		-- дескриптор файла журнала
	--local pathFdLogMsg = "C:/!Projects/SPT943/ArchiveFiles/LogMsg.txt";
	
	--fdLogMsg, err = io.open( pathFdLogMsg, "a+");	-- открыть файл часового архива ТВ1 в режиме чтения
	--if fdLogMsg then
	
--[[----------------------------------------------------------------------------------
	открытие COM-порта
----------------------------------------------------------------------------------]]--
	Core.ArchiveRequestControl.SPT943DriverMessage = "Открытие " .. portName .. " на скорости " .. baudRate .. "...";
	Core.addLogMsg( "portOpen: открытие COM-порта (2400)...");
	ret = portOpen( portName, baudRate, dataBits, stopBits, parity);
	if  ret == -1 then				  
	  goto quit;																	-- ошибка открытия порта ==>> ВЫХОД ИЗ ПРОГРАММЫ
	end
--[[----------------------------------------------------------------------------------
	инициализация сеанса связи ==> посылка FF,FF...FF
----------------------------------------------------------------------------------]]--
	Core.ArchiveRequestControl.SPT943DriverMessage = "Инициализация сеанса связи..."
	Core.addLogMsg( "initSession: инициализация сеанса связи...");
	initSession( initSessionStr);
	os.sleep( 1.5);		
--[[----------------------------------------------------------------------------------
	запрос сеанса связи (сокращённый формат сообщения) ==> посылка 10 FF 3F 00 00 00 00 C1 16
	@param	reqSessionShortStr	string	- запрос данных (строка)
	@return	packet	            table   - принятый пакет (массив)
----------------------------------------------------------------------------------]]--
::reqSessionShort::																-- МЕТКА ::reqSessionShort::

	Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос сеанса связи (сокращённый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: ЗАПРОС сеанса связи (сокращённый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...");
	ret = reqResp( reqSessionShortStr);
	if  ret == -1 then				  
		c = c + 1;  
		Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос сеанса связи (сокращённый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: ЗАПРОС сеанса связи (сокращённый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...");
			if c <= 3 then										 
				os.sleep( 1);
				goto reqSessionShort;												-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
				else 
				Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов сеанса связи исчерпан!";
				Core.addLogMsg( "reqResp: лимит запросов сеанса связи исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
				goto quit;
			end														
	end
	packet = ret;

-- ожидаемый ответ: 10 FF 3F 54 2B 0A 38 16

--[[----------------------------------------------------------------------------------
	проверка контрольной суммы
	@param	packet	table	- принятый пакет (массив)
	@return -1				- при несовпадении cs
	@return	packet	table   - при совпадении cs
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkCS: проверка контрольной суммы...");
	ret = checkCS( packet);
	if ret == -1 then												
	  goto reqSessionShort;															-- контрольные суммы не совпали ==>> ПОВТОР ЗАПРОСА
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
	@param	packet	table	- принятый пакет
	@return -1				      - при наличии ошибки	
	@return packet	table	- при отсутствии ошибки
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
	  goto reqSessionShort;															-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
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
::reqSessionFull_1::																-- МЕТКА ::reqSessionFull_1::

	Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...");
	ret = reqResp( reqSessionFullStr);
	if ret == -1 then				 	  
		c = c + 1;
		Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...");
			if c <= 3 then										 
				os.sleep( 1);
				goto reqSessionFull_1;												-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
				else 
				Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов сеанса связи исчерпан!"
				Core.addLogMsg( "reqResp: лимит запросов сеанса связи исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
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
	  goto reqSessionFull_1;															-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
	  goto reqSessionFull_1;															-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
	end
	packet = ret;										
--[[----------------------------------------------------------------------------------
	обработка запроса сеанса связи (базовый формат сообщения) 
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "packetHandler: обработка запроса сеанса связи (базовый формат сообщения)...");
	packetHandler( packet, ch);
-- ---- --[[----------------------------------------------------------------------------------
-- --	-- запрос изменения скорости обмена ==> посылка  10 FF 90 91 00 05 00 42 03 00 00 00 79 56
-- ---- ----------------------------------------------------------------------------------]]--
::reqChBaudRate::																-- МЕТКА ::reqChBaudRate::
	Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос изменения скорости обмена, попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: ЗАПРОС изменения скорости обмена, попытка " .. c .. " из " .. tryConnection .. "...");
	ret = reqResp( reqBaudRateStr);
	if ret == -1 then
		Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос изменения скорости обмена, попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: ЗАПРОС изменения скорости обмена, попытка " .. c .. " из " .. tryConnection .. "...");
			 c = c + 1;
			 if c <= 3 then															-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
				 os.sleep( 1);
				 goto reqChBaudRate; 
				 else 
				 Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов изменения скорости обмена исчерпан.";
				 Core.addLogMsg( "reqResp: лимит запросов изменения скорости обмена исчерпан.")	-->> ВЫХОД ИЗ ПРОГРАММЫ
				 goto quit;
			 end
	end
	packet = ret;
 -- -- ожидаемый ответ: 10 FF 90 91 00 01 00 42 B8 B8
				
-- --[[----------------------------------------------------------------------------------
	-- проверка CRC
-- ----------------------------------------------------------------------------------]]-- 
	--Core.addLogMsg( "checkCRC: проверка CRC...");
	ret = checkCRC( packet);
	if ret == -1 then											  
	  goto reqChBaudRate;																-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
	end
	packet = ret;
-- --[[----------------------------------------------------------------------------------
	-- проверка наличия кода ошибки (0x21) в ответном сообщении
-- ----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
	  goto reqChBaudRate;																-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
	end
	packet = ret;
-- --[[----------------------------------------------------------------------------------
	-- обработка запроса изменения скорости обмена (базовый формат сообщения) 
-- ----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "packetHandler: обработка запроса изменения скорости обмена...");
	ret = packetHandler( packet, ch);
	if ret == -1 then																	-- ошибка открытия COM-порта -->> ВЫХОД ИЗ ПРОГРАММЫ
		goto quit;
	end
--[[----------------------------------------------------------------------------------
	ВТОРОЙ запрос сеанса связи (базовый формат сообщения) ==> посылка	10 FF 90 00 00 05 00 3F 00 00 00 00 D9 19
----------------------------------------------------------------------------------]]--
::reqSessionFull_2::																-- МЕТКА ::reqSessionFull_2::

	Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
	Core.addLogMsg( "reqResp: ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...");
	ret = reqResp( reqSessionFullStr);
	if ret == -1 then				 	  
		c = c + 1;
		Core.ArchiveRequestControl.SPT943DriverMessage = "Запрос сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...";
		Core.addLogMsg( "reqResp: ЗАПРОС сеанса связи (базовый формат сообщения), попытка " .. c .. " из " .. tryConnection .. "...");
			if c <= 3 then										 
				os.sleep( 1);
				goto reqSessionFull_2;												-- нет ответа от теплосчётчика ==>> ПОВТОР ЗАПРОСА 
				else 
				Core.ArchiveRequestControl.SPT943DriverMessage = "Лимит запросов сеанса связи исчерпан!";
				Core.addLogMsg( "reqResp: лимит запросов сеанса связи исчерпан!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
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
	  goto reqSessionFull_2;															-- CRC не совпали ==>> ПОВТОР ЗАПРОСА
	end
	packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "checkError: проверка наличия кода ошибки (0x21)...");
	ret = checkError( packet);
	if ret == -1 then										  
	  goto reqSessionFull_2;															-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР ЗАПРОСА
	end
	packet = ret;										
--[[----------------------------------------------------------------------------------
	обработка запроса сеанса связи (базовый формат сообщения) 
----------------------------------------------------------------------------------]]--
	--Core.addLogMsg( "packetHandler: обработка запроса сеанса связи (базовый формат сообщения)...");
	packetHandler( packet, ch);
	
-- КОД НИЖЕ ПОКА НЕ РАЗРАБАТЫВАТЬ:
-- 1 запрос чтения параметра
-- ответ
-- ОБРАБОТКА

-- 2 запрос чтения параметра
-- ответ
-- ОБРАБОТКА

-- 3 запрос чтения параметра
-- ответ
-- ОБРАБОТКА
-- КОД ВЫШЕ ПОКА НЕ РАЗРАБАТЫВАТЬ:

	ret = bu( userArchTypeHour, userArchTypeDate, userArchTypeMonth, userStartDate, userEndDate);
	if ret == -1 then
		goto quit;
	end
	
	serialPort:clearBuffers( ); -- очистить приёмный и передающий буфер
	serialPort:close();			-- уничтожить объект
::quit::																			  -- МЕТКА ВЫХОД ИЗ ПРОГРАММЫ
	Core.ArchiveRequestControl.SPT943DriverMessage = "ВЫХОД.";
	Core.addLogMsg( "ВЫХОД.");
	return q;
--**********************************************************
--********************	  EXIT	  **************************
--**********************************************************

end
Core.ArchiveRequestControl.StartRequestEnabled = true;
function f2()
	if Core.ArchiveRequestControl.StartRequest == true then
		Core.ArchiveRequestControl.StartRequestEnabled = false;
		f1();
		Core.ArchiveRequestControl.StartRequestEnabled = true;
	end
end
--[[
function f2()
	if Core.StartRequest == true then
		Core.StartRequestEnable = false;

		fdHour_1 = io.open( pathHour_1, "w+");								-- открыть файл часового архива ТВ1 и стереть данные
			if fdHour_1 == nil then											-- проверка открытия файла часового архива ТВ1
				Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла часового архива ТВ1!";
				Core.addLogMsg( "bu: ошибка открытия файла часового архива ТВ1!");
				return -1;
			end
		fdHour_1:close();

		fdHour_2 = io.open( pathHour_2, "w+");								-- открыть файл часового архива ТВ2 и стереть данные
			if fdHour_2 == nil then											-- проверка открытия файла часового архива ТВ2
				Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла часового архива ТВ2!";
				Core.addLogMsg( "bu: ошибка открытия файла часового архива ТВ2!");
				return -1;
			end
		fdHour_2:close();

		fdDate_1 = io.open( pathDate_1, "w+");								-- открыть файл суточного архива ТВ1 и стереть данные
			if fdDate_1 == nil then											-- проверка открытия файла суточного архива ТВ1
				Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла суточного архива ТВ1!";
				Core.addLogMsg( "bu: ошибка открытия файла суточного архива ТВ1!");
				return -1;
			end
		fdDate_1:close();

		fdDate_2 = io.open( pathDate_2, "w+");								-- открыть файл суточного архива ТВ2 и стереть данные
			if fdDate_2 == nil then											-- проверка открытия файла суточного архива ТВ2
				Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла суточного архива ТВ2!";
				Core.addLogMsg( "bu: ошибка открытия файла суточного архива ТВ2!");
				return -1;
			end
		fdDate_2:close();

		fdMonth_1 = io.open( pathMonth_1, "w+");							-- открыть файл месячного архива ТВ1 и стереть данные
			if fdMonth_1 == nil then										-- проверка открытия файла месячного архива ТВ1
				Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла месячного архива ТВ1!";
				Core.addLogMsg( "bu: ошибка открытия файла месячного архива ТВ1!");
				return -1;
			end
		fdMonth_1:close();

		fdMonth_2 = io.open( pathMonth_2, "w+");							-- открыть файл месячного архива ТВ2 и стереть данные
			if fdMonth_2 == nil then										-- проверка открытия файла месячного архива ТВ2
				Core.ArchiveRequestControl.SPT943DriverMessage = "Ошибка открытия файла месячного архива ТВ2!";
				Core.addLogMsg( "bu: ошибка открытия файла месячного архива ТВ2!");
				return -1;
			end
		fdMonth_2:close();

		f1();
		if Core.ArchiveRequestControl.CancelRequest == true then
			Core.addLogMsg( "Обмен с прибором отменён пользователем.");
			goto e;
		end
	end
		::e::
		Core.StartRequestEnable = true;
end

-- function f2()
	-- if Core.StartRequest == true then
		-- Core.StartRequestEnable = false;
		-- local ret;
		-- while ( 1) do
			-- ret = f1();
			-- if ret == q or Core.ArchiveRequestControl.CancelRequest == true then
				-- break;
			-- end
		-- end
		-- if  Core.ArchiveRequestControl.CancelRequest == true then
			-- Core.addLogMsg( "Обмен с прибором отменён пользователем.");
		-- end
		-- Core.StartRequestEnable = true;
	-- end
-- end
--]]

--Core.onExtChange( {"StartRequest", "ArchiveRequestControl.CancelRequest"}, f2);
Core.onExtChange( {"ArchiveRequestControl.StartRequest"}, f2);
Core.waitEvents();