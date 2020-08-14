	-- тип архива - часовой (respArchType = 0), суточный (respArchType = 1), месячный (respArchType = 3)
	local respArchType;		--	тип архива в ответе
--sql
	local tUnixDT_1 = {}; 		-- буфер для хранения времени в формате unix epoch (number)	ТВ1 sql
	local tUnixDT_2 = {}; 		-- буфер для хранения времени в формате unix epoch (number)	ТВ2 sql
	local tData_1 = {};			-- буфер для хранения значений данных (string) ТВ1				sql
	local tData_2 = {};			-- буфер для хранения значений данных (string) ТВ2				sql
--sql

--[[--------------------------------------------------------------------------------------------------------------
	@brief				- возвращает последнюю дату архива
--------------------------------------------------------------------------------------------------------------]]--	
	function readLastDate( archiveType)
		luasql = require "luasql.sqlite3";

		env, err = assert ( luasql.sqlite3());
		-- Core.addLogMsg("assert env ==> " .. tostring(env));
		-- Core.addLogMsg("assert err ==> " .. tostring(err));

		con, err = env:connect( dataBasePath);
		-- Core.addLogMsg("connect con ==> " .. tostring(con));
		-- Core.addLogMsg("connect err ==> " .. tostring(err));
		cur, err = con:execute( 'SELECT unixDT FROM ' .. archiveType .. ' ORDER BY unixDT DESC LIMIT 1;');	-- извлечь время из последней строки
		-- Core.addLogMsg("execute cur ==> " .. tostring(cur));
		-- Core.addLogMsg("execute err ==> " .. tostring(err));
		tLast = cur:fetch( {}, 'a');
		local str = tLast.unixDT;
		cur:close();
		con:close();
		env:close();
		return str;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief				- возвращает значение no бит из buf, начиная с бита startbit
	@param	- buf		- буфер с данными
	@param	- startbit	- первый бит 
	@param	- no		- количество бит
--------------------------------------------------------------------------------------------------------------]]--
	function extractBit(buf, startbit, no)
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
			Core.SPT943_Driver_Msg = "Ошибка открытия порта " .. "(" .. portName .. ")" .. "!";
			Core.addLogMsg( "portOpen: error opening port " .. "(" .. portName .. ")" .. "!");
		return -1;
			else
				Core.SPT943_Driver_Msg = "Порт открыт " .. "(" .. portName .. ")," .. " скорость обмена - " .. baudRate .. ".";
				Core.addLogMsg( "portOpen: port open " .. "(" .. portName .. ")," .. " exchange rate - " .. baudRate .. ".");
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
			Core.SPT943_Driver_Msg = "Нет ответа от устройства!";
			Core.addLogMsg( "reqResp: no response from the device!");
			return -1;
		end

		-- Пришло сколько-то байт. Собираем их в пакет до срабатывания условия symTimeout.
		strPacket = serialPort:recv( respLen);
		t1 = os.clock();							-- фиксируем время
		
		local packet = {};							-- массив для хранения символов принятого сообщения
	  
		while os.clock() - t1 <= symTimeout do		-- пока разность (t2-t1) <= symTimeout
			respLen = serialPort:recvBytesAvailable();
		-- ≈сли данные поступают, то добавляем их в пакет и сбрасываем время.

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

		lenPacket = #packet;									-- вычисление размера строки
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
							Core.SPT943_Driver_Msg = "Ошибка (0x21), нарушение структуры запроса (0x00).";
							Core.addLogMsg( "checkError: error (0x21), violation of the request structure (0x00).");
							return -1;
						elseif errorCode == 0x01 then
							Core.SPT943_Driver_Msg = "Ошибка (0x21), защита от записи (0x01).";
							Core.addLogMsg( "checkError: error (0x21), write protection (0x01).");
							return -1;
						elseif errorCode == 0x02 then
							Core.SPT943_Driver_Msg = "Ошибка (0x21), недопустимые значения параметров запроса (0x02).";
							Core.addLogMsg( "checkError: error (0x21), invalid request parameter values (0x02).");
							return -1;
					end
			end
				if fnc == 0x3F or fnc == 0x90 then
					--Core.addLogMsg( "checkError: О !");
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
	  
		--Core.addLogMsg( "archdateHandler: processing the date of an archive entry...");

		n = packet[ i+1];	-- packet[ i+1] - 10-ый байт сообщения - кол-во байт, представляющих время

		if n == 0x00 then	-- полное отсутствие записей в архиве						
			Core.addLogMsg( "archdateHandler: there are no records in the archive.");
			return -1;
			elseif n == 0x02 and ch == 1 then	-- время - месяц/год представлено 2 байтами -->> месячные архивы
				respArchType = 3;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					table.insert( tUnixDT_1, strE);	-- sql
				end

			elseif n == 0x02 and ch == 2 then	-- время - месяц/год представлено 2 байтами -->> месячные архивы
				respArchType = 3;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					table.insert( tUnixDT_2, strE);	-- sql
				end

			elseif n == 0x03 and ch == 1 then	-- время - число/месяц/год представлено 3 байтами -->> суточные архивы
				respArchType = 1;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = 0;							
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					table.insert( tUnixDT_1, strE);	-- sql
				end

			elseif n == 0x03 and ch == 2 then	-- время - число/месяц/год представлено 3 байтами -->> суточные архивы
				respArchType = 1;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = 0;							
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					table.insert( tUnixDT_2, strE);	-- sql
				end

			elseif n == 0x04 and ch == 1 then	-- время - число/месяц/год часы представлено 4 байтами -->> часовые архивы
				respArchType = 0;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = packet[ i+5];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					strE = tonumber( string.sub(strE, 1, 10));
					table.insert( tUnixDT_1, strE);	-- sql
					Core.addLogMsg( "tUnixDT_1[1] ==> " .. tostring( tUnixDT_1[1]));
					Core.addLogMsg( "tUnixDT_1[2] ==> " .. tostring( tUnixDT_1[2]));
					Core.addLogMsg( "tUnixDT_1[3] ==> " .. tostring( tUnixDT_1[3]));
					Core.addLogMsg( "tUnixDT_1[4] ==> " .. tostring( tUnixDT_1[4]));
				end

			elseif n == 0x04 and ch == 2 then	-- время - число/месяц/год часы представлено 4 байтами -->> часовые архивы
				respArchType = 0;
				-- получить время в формате EPOCH
				t.year = ("20" .. packet[ i+2]);	
				t.month = packet[ i+3];				
				t.day = packet[ i+4];				
				t.hour = packet[ i+5];				
				strE = os.time(t) - 10800;			-- сформировать строку  в формате EPOCH					
				if c < 5 then
					strE = tonumber( string.sub(strE, 1, 10));
					table.insert( tUnixDT_2, strE);	-- sql
					Core.addLogMsg( "tUnixDT_2[1] ==> " .. tostring( tUnixDT_2[1]));
					Core.addLogMsg( "tUnixDT_2[2] ==> " .. tostring( tUnixDT_2[2]));
					Core.addLogMsg( "tUnixDT_2[3] ==> " .. tostring( tUnixDT_2[3]));
					Core.addLogMsg( "tUnixDT_2[4] ==> " .. tostring( tUnixDT_2[4]));
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
	  Core.addLogMsg( "dateHandler: current time: " .. strH);
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка текущей календарной даты
--------------------------------------------------------------------------------------------------------------]]--
	function dateHandler( packet)

		local tdw = { [0] = "Понедельник", 
					[1] = "Вторник",
					[2] = "Среда",
					[3] = "четверг",
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
		Core.addLogMsg( "dateHandler: current date: " .. strH .. ", " .. bdw);
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief	- обработка числа с плавающей точкой IEEE 754 (Float)
--------------------------------------------------------------------------------------------------------------]]--
	function IEEFloatHandler( packet, i, respArchType, ch)
		--Core.addLogMsg( "IEEFloatHandler: floating point processing IEEE 754 (Float)...");
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
				table.insert( tData_1, float);			-- sql
			elseif respArchType == 3 and ch == 2 then
				table.insert( tData_2, float);			-- sql
			elseif respArchType == 1 and ch == 1 then	-- время - число/месяц/год представлены 3 байтами -->> суточные архивы
				table.insert( tData_1, float);			-- sql
			elseif respArchType == 1 and ch == 2 then
				table.insert( tData_2, float);			-- sql
			elseif respArchType == 0 and ch == 1 then	-- время - число/месяц/год часы представлены 4 байтами -->> часовые архивы
				table.insert( tData_1, float);			-- sql
			elseif respArchType == 0 and ch == 2 then
				table.insert( tData_2, float);			-- sql
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
				--Core.addLogMsg( "tagHandler: обработка сборки флагов...");
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
			Core.SPT943_Driver_Msg = "Код устройства: " .. deviceCode .. "," .. " идентификатор исполнения: " .. string.format("%.2X", packet[ 6]) .. ".";
			Core.addLogMsg( "packetHandler: device code: " .. deviceCode .. "," .. " performance identifier: " .. string.format("%.2X", packet[ 6]) .. ".");
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
				Core.SPT943_Driver_Msg = "Код устройства: " .. deviceCode .. "," .. " идентификатор исполнения: " .. string.format("%.2X", packet[ 11]) .. ".";
				Core.addLogMsg( "packetHandler: device code: " .. deviceCode .. "," .. " performance identifier: " .. string.format("%.2X", packet[ 11]) .. ".");
				--goto finish;
				return;
			end

	--
	--		0x42 ОБРАБОТКА ОТВЕТА НА ЗАПРОС ИЗМЕНЕНИЯ СКОРОСТИ ОБМЕНА	 (БАЗОВЫЙ ФОМАТ)
	--

			if fnc == 0x42 then
				Core.SPT943_Driver_Msg = "Скорость обмена теплосчётчика - 19200.";
				Core.addLogMsg( "packetHandler: device exchange rate - 19200.");
				serialPort:clearBuffers( );		-- очистить приёмный и передающий буфер
				serialPort:close();				-- уничтожить объект
				os.sleep(1)
				-- открытие COM-порта на скорости 19200
				local baudRate = 19200;		-- скорость обмена
				Core.SPT943_Driver_Msg = "Открытие " .. portName .. " на скорости " ..baudRate .. "...";
				Core.addLogMsg( "portOpen: opening a COM port (19200)...");
				local ret = portOpen( portName, baudRate, dataBits, stopBits, parity);
				if  ret == -1 then				  
				  return -1;												-- error opening port ==>> ВЫХОД ИЗ ПРОГРАММЫ
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

					tagHandler( tag, packet, i, ch, c)	-- обработка тегов

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
							--Core.addLogMsg( "packetHandler: end of archive recording.");
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
	@param startDT	- начальная дата архива										- передаётся "блоком управления"
	@param endDT		- конечная дата архива										- передаётся "блоком управления"
	@return packet		- пакет готовый к передаче
--------------------------------------------------------------------------------------------------------------]]--
	function preparePacketReqArchive( id, ch, rectype, startDT, endDT)
	  
	  local tHourDate = {};					  -- таблица с подготовленными параметрами запросов часовых и суточных архивов 
	  local tMonth = {};					  -- таблица с подготовленными параметрами запросов месячных архивов
	  local packet = "";					  -- строка запроса подготовленная к передаче
	  local len_tHourDate;					  -- размер таблицы с подготовленными параметрами запросов часовых и суточных архивов
	  local len_tMonth;						  -- размер таблицы с переменными параметрами запросов месячных архивов
	  
	  -- заполнение таблицы tHourDate:
	  
	  local dateTable;						  -- временная таблица, для хранения даты и времени
	  local temp;							  -- временная переменная

--------- запрос часового архива --------------------------------------------------------------------------------------------

		dateTable = os.date( "*t", startDT);  -- заполнили временную таблицу значением НАЧАЛЬНОЙ даты

		temp = tostring( dateTable.year);	   -- получили строку "2017"
		temp = string.sub ( temp, 3);		   -- получили строку "17"
		temp = tonumber( temp);					-- получили число 17 

		local startYY = temp;				   -- записали год (начало)
		local startMH = dateTable.month;	   -- записали месяц (начало)
		local startDD = dateTable.day;		   -- записали число (начало)
		local startHH = dateTable.hour;		   -- записали час (начало)	   

		dateTable = os.date( "*t", endDT);	   -- заполнили временную таблицу значением  КОНЕЧНОЙ даты

		temp = tostring( dateTable.year);	   -- получили строку "2017"
		temp = string.sub ( temp, 3);		   -- получили строку "17"
		temp = tonumber( temp);				   -- получили число 17 

		local endYY = temp;					   -- записали год (конец)
		local endMH = dateTable.month;		   -- записали месяц (конец)
		local endDD = dateTable.day;			-- записали число (конец)
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
		return packet;
	end

--[[--------------------------------------------------------------------------------------------------------------
	@brief						- цикл для инкремента id (0..255), задания ch (1/2), задания rectype (0,1,3), startDT и endDT
	@param	userArchTypeHour	- тип архива заданный пользователем - часовой
	@param	userArchTypeDate	- тип архива заданный пользователем - суточный
	@param	userArchTypeMonth	- тип архива заданный пользователем - месячный
	@param	startDT				- НАЧАЛЬНАЯ дата заданная пользователем
	@param	endDT				- КОНЕЧНАЯ дата заданная пользователем
--------------------------------------------------------------------------------------------------------------]]--
	function bu( archiveType, startDT, endDT, dataBasePath)

		local id = 1;				-- индификатор сообщения
		local ch = 1;				-- номер канала
		local rectype;				-- тип архива
		local startDT;				-- НАЧАЛЬНАЯ дата
		local endDT;				-- КОНЕЧНАЯ дата
		local ret;					-- возвращаемое значение функции
		local packet;				-- пакет
		local c = 1;				-- счётчик вызовов
		local tryConnection = 3;	-- количество подключений (запросов) к теплосчётчику
		local devTime;				-- время прибора
		local strRU;				-- строка (часть сообщения) на русском языке
		local strEN;				-- строка (часть сообщения) на английском языке
		local archiveType_1;		-- имя таблицы в БД теплового ввода 1
		local archiveType_2;		-- имя таблицы в БД теплового ввода 2

--------------------------------------------------------------------------------------
		-- -- определение типа архива - часовой (respArchType = 0), суточный (respArchType = 1), месячный (respArchType = 3)
			if archiveType == "HourArchive_1" then
				rectype = 0;
				archiveType_1 = "HourArchive_1";
				archiveType_2 = "HourArchive_2";
				strRU = " часового ";
				strEN = " hourly ";
			end
			
			if archiveType == "DateArchive_1" then
				rectype = 1;
				archiveType_1 = "DateArchive_1";
				archiveType_2 = "DateArchive_2";
				strRU = " суточного ";
				strEN = " daily ";
			end
			
			if archiveType == "MonthArchive_1" then
				rectype = 3;
				archiveType_1 = "MonthArchive_1";
				archiveType_2 = "MonthArchive_2";
				strRU = " месячного ";
				strEN = " monthly ";
			end
			
			Core.SPT943_Driver_Msg = "ЗАПРОС" .. strRU .. "архива с " .. os.date( "%d.%m.%Y %H:%M", startDT) .. " по " .. os.date( "%d.%m.%Y %H:%M", endDT) .. "...";
			Core.addLogMsg( "bu: request" .. strEN .. "archive from " .. os.date( "%d.%m.%Y %H:%M", startDT) .. " to " .. os.date( "%d.%m.%Y %H:%M", endDT) .. "...");

--------------------------------------------------------------------------------------			
			while 1 do
				-- Core.addLogMsg( "bu: ch: " .. ch);
				-- Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: startDT: " .. os.date("%d.%m.%Y %H:%M", startDT));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей часового(суточного, месячного) архива TB1
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, startDT, endDT);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей часового(суточного, месячного) архива TB1
----------------------------------------------------------------------------------]]--
::label1::     
				ret = reqResp( packet);
				if ret == -1 then
					Core.SPT943_Driver_Msg = "ЗАПРОС" .. strRU .. "архива TB1, попытка " .. c .. " из " .. tryConnection .. "..."
					Core.addLogMsg( "bu: request the" .. strEN .. "TB1 archive, attempt " .. c .. " from " .. tryConnection .. "...");
					c = c + 1;
					if c <= 3 then
					os.sleep( 1);
					goto label1;															-- no response from the device ==>> ПОВТОР запроса 
							else 
							Core.SPT943_Driver_Msg = "Лимит" .. strRU .. "часового архива TB1 исчерпан!"
							Core.addLogMsg( "bu: request limit of the" .. strEN .. "TB1 archive has been exhausted!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then
				  goto label1;																		-- CRC не совпали ==>> ПОВТОР запроса
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				ret = checkError( packet);
				if ret == -1 then
				  goto label1;																		-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР запроса
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса часового(суточного, месячного) архива TB1
----------------------------------------------------------------------------------]]--
				Core.addLogMsg( "bu: обработка запроса" .. strRU .. "архива TB1");
				devTime = packetHandler( packet, ch);
				Core.addLogMsg( "bu: devTime: " .. os.date("%d.%m.%Y %H:%M", devTime));

-- sql====================================
				luasql = require "luasql.sqlite3";
				env, err = assert ( luasql.sqlite3());
				Core.addLogMsg("bu 1 assert env ==> " .. tostring(env));
				Core.addLogMsg("bu 1 assert err ==> " .. tostring(err));
				con, err = env:connect( dataBasePath);
				Core.addLogMsg("bu 1 connect con ==> " .. tostring(con));
				Core.addLogMsg("bu 1 connect err ==> " .. tostring(err));
				
				for i = 1, #tUnixDT_1 do
					unixDT = tostring( tUnixDT_1[ i]);
					data = tostring( tData_1[ i]);
					cur, err = con:execute( "INSERT INTO " .. archiveType_1 .. " VALUES(" .. unixDT .. "," .. data .. ");");
					Core.addLogMsg("bu 1 execute con ==> " .. tostring(con));
					Core.addLogMsg("bu 1 execute err ==> " .. tostring(err));
				end
				con:close();
				env:close();
-- sql====================================
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
				-- Core.addLogMsg( "bu: ch: " .. ch);
				-- Core.addLogMsg( "bu: id: " .. id);
				Core.addLogMsg( "bu: startDT: " .. os.date("%d.%m.%Y %H:%M", startDT));
--[[----------------------------------------------------------------------------------
	подготовка пакета для запроса архивных записей часового(суточного, месячного) архива TB2
----------------------------------------------------------------------------------]]--
				ret = preparePacketReqArchive( id, ch, rectype, startDT, endDT);
				packet = ret;
--[[----------------------------------------------------------------------------------
	запрос архивных записей часового(суточного, месячного) архива TB2
----------------------------------------------------------------------------------]]--
::label2::     
				ret = reqResp( packet);
				if ret == -1 then
					Core.SPT943_Driver_Msg = "ЗАПРОС" .. strRU .. "архива TB1, попытка " .. c .. " из " .. tryConnection .. "..."
					Core.addLogMsg( "bu: request the" .. strEN .. "TB1 archive, attempt " .. c .. " from " .. tryConnection .. "...");
					c = c + 1;
					if c <= 3 then
					os.sleep( 1);
					goto label2;															-- no response from the device ==>> ПОВТОР запроса 
							else 
							Core.SPT943_Driver_Msg = "Лимит запросов" .. strRU .. "архива TB2 исчерпан!";
							Core.addLogMsg( "bu: request limit of the" .. strEN .. "TB1 archive has been exhausted!");	-->> ВЫХОД ИЗ ПРОГРАММЫ
							return -1;
						end
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка CRC
----------------------------------------------------------------------------------]]-- 
				ret = checkCRC( packet);
				if ret == -1 then
				  goto label2;																		-- CRC не совпали ==>> ПОВТОР запроса
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	проверка наличия кода ошибки (0x21) в ответном сообщении
----------------------------------------------------------------------------------]]--
				ret = checkError( packet);
				if ret == -1 then
				  goto label2;																		-- в ответе присутствует код ошибки (0x21) ==>> ПОВТОР запроса
				end
				packet = ret;
--[[----------------------------------------------------------------------------------
	обработка запроса часового(суточного, месячного) архива TB2
----------------------------------------------------------------------------------]]--
				Core.addLogMsg( "bu: обработка запроса" .. strRU .. "архива TB2");
				devTime = packetHandler( packet, ch);
				Core.addLogMsg( "bu: devTime: " .. os.date("%d.%m.%Y %H:%M", devTime));

-- sql====================================
				luasql = require "luasql.sqlite3";
				env, err = assert ( luasql.sqlite3());
				Core.addLogMsg("bu 2 assert env ==> " .. tostring(env));
				Core.addLogMsg("bu 2 assert err ==> " .. tostring(err));
				con, err = env:connect( dataBasePath);
				Core.addLogMsg("bu 2 connect con ==> " .. tostring(con));
				Core.addLogMsg("bu 2 connect err ==> " .. tostring(err));
				for i = 1, #tUnixDT_2 do
					unixDT = tostring( tUnixDT_2[ i]);
					data = tostring( tData_2[ i]);
					cur, err = con:execute( "INSERT INTO " .. archiveType_2 .. " VALUES(" .. unixDT .. "," .. data .. ");");
					Core.addLogMsg("bu 2 execute con ==> " .. tostring(con));
					Core.addLogMsg("bu 2 execute err ==> " .. tostring(err));
				end
				con:close();
				env:close();

				tUnixDT_1 = {};	--sql
				tUnixDT_2 = {};	--sql
				tData_1 = {};	--sql
				tData_2 = {};	--sql
-- sql====================================

				if devTime == nil or devTime >= endDT then
					Core.addLogMsg( "bu: devTime: devTime == nil or devTime >= endDT");
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
				startDT = devTime;
--------------------------------------------------------------------------------------
				if startDT >= endDT then	-- ЕСЛИ НАЧАЛЬНАЯ дата сравнялась с КОНЕЧНОЙ датой прервать цикл
					Core.SPT943_Driver_Msg = "Чтение" .. strRU .. "архива завершено.";
					Core.addLogMsg( "bu:" .. strRU .. "archive reading completed.");
					break;
				end
			end
	end
