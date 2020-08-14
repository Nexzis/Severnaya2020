COM_CONFIG = {
	['PORT_NAME']	= 'COM3';
	['BAUD_RATE']	= 9600;
	['DATA_BITS']	= 7;
	['STOP_BITS']	= 1;
	['PARITY']		= 'EVEN';
	['TIMEOUT']		= 0;
	['INVERSE_RTS']	= false;
}
DEVICES = {
	['2'] = { 
		['DEVICE_NUMBER']						= '2';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_1_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ T5 КТП ВОС';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '2W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении - местный';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10101;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10101;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_2.READ_UST';
													'Device_2.WRITE_UST';
													'Device_2.COMMANDS_ALL';
													'Device_2.WRITE_ALLOW_COMMANDS';
													'Device_2.WRITE_COMMAND_VIKL';
													'Device_2.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_2.READ_INPUT_AND_OTPUT';
													'Device_2.READ_ST_EVENT';
													'Device_2.READ_REG_COMM';
													'Device_2.WRITE_COMMAND_VKL';
												};
			};
	['1'] = { 
		['DEVICE_NUMBER']						= '1';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_1_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ T5 КТП ВОС';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '1W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_1_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_1.READ_UST';
													'Device_1.WRITE_UST';
													'Device_1.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_1.READ_INPUT_AND_OTPUT';
													'Device_1.READ_ST_EVENT';
													'Device_1.READ_REG_COMM';
												};
			};
	['6'] = { 
		['DEVICE_NUMBER']						= '6';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_3_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Ячейка 1_3';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '6W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10101;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10101;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_6.READ_UST';
													'Device_6.WRITE_UST';
													'Device_6.COMMANDS_ALL';
													'Device_6.WRITE_ALLOW_COMMANDS';
													'Device_6.WRITE_COMMAND_VKL';
													'Device_6.WRITE_COMMAND_VIKL';
													'Device_6.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_6.READ_INPUT_AND_OTPUT';
													'Device_6.READ_ST_EVENT';
													'Device_6.READ_REG_COMM';
												};
			};
	['5'] = { 
		['DEVICE_NUMBER']						= '5';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_3_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Ячейка 1_3';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '5W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_3_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_5.READ_UST';
													'Device_5.WRITE_UST';
													'Device_5.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_5.READ_INPUT_AND_OTPUT';
													'Device_5.READ_ST_EVENT';
													'Device_5.READ_REG_COMM';
												};
			};
	['17'] = { 
		['DEVICE_NUMBER']						= '17';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_6_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ T3 КТП вспомогательной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '17W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_17.READ_UST';
													'Device_17.WRITE_UST';
													'Device_17.COMMANDS_ALL';
													'Device_17.WRITE_ALLOW_COMMANDS';
													'Device_17.WRITE_COMMAND_VKL';
													'Device_17.WRITE_COMMAND_VIKL';
													'Device_17.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_17.READ_INPUT_AND_OTPUT';
													'Device_17.READ_ST_EVENT';
													'Device_17.READ_REG_COMM';
												};
			};
	['16'] = { 
		['DEVICE_NUMBER']						= '16';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_6_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ T3 КТП вспомогательной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '16W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_6_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_16.READ_UST';
													'Device_16.WRITE_UST';
													'Device_16.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_16.READ_INPUT_AND_OTPUT';
													'Device_16.READ_ST_EVENT';
													'Device_16.READ_REG_COMM';
												};
			};
	['28'] = { 
		['DEVICE_NUMBER']						= '28';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_12_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ T1 КТП основной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '28W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_28.READ_UST';
													'Device_28.WRITE_UST';
													'Device_28.COMMANDS_ALL';
													'Device_28.WRITE_ALLOW_COMMANDS';
													'Device_28.WRITE_COMMAND_VKL';
													'Device_28.WRITE_COMMAND_VIKL';
													'Device_28.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_28.READ_INPUT_AND_OTPUT';
													'Device_28.READ_ST_EVENT';
													'Device_28.READ_REG_COMM';
												};
			};
	['27'] = { 
		['DEVICE_NUMBER']						= '27';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_1_12_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ T1 КТП основной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '27W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_1_12_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_27.READ_UST';
													'Device_27.WRITE_UST';
													'Device_27.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_27.READ_INPUT_AND_OTPUT';
													'Device_27.READ_ST_EVENT';
													'Device_27.READ_REG_COMM';
												};
			};
	['23'] = { 
		['DEVICE_NUMBER']						= '23';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_VV1_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Ввод1';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '23W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_23.READ_UST';
													'Device_23.WRITE_UST';
													'Device_23.COMMANDS_ALL';
													'Device_23.WRITE_ALLOW_COMMANDS';
													'Device_23.WRITE_COMMAND_VKL';
													'Device_23.WRITE_COMMAND_VIKL';
													'Device_23.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_23.READ_INPUT_AND_OTPUT';
													'Device_23.READ_ST_EVENT';
													'Device_23.READ_REG_COMM';
												};
			};
	['22'] = { 
		['DEVICE_NUMBER']						= '22';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_VV1_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Ввод1';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '22W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV1_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_22.READ_UST';
													'Device_22.WRITE_UST';
													'Device_22.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_22.READ_INPUT_AND_OTPUT';
													'Device_22.READ_ST_EVENT';
													'Device_22.READ_REG_COMM';
												};
			};
	['30'] = { 
		['DEVICE_NUMBER']						= '30';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_SV_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Секционный выключатель';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '30W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_30.READ_UST';
													'Device_30.WRITE_UST';
													'Device_30.COMMANDS_ALL';
													'Device_30.WRITE_ALLOW_COMMANDS';
													'Device_30.WRITE_COMMAND_VKL';
													'Device_30.WRITE_COMMAND_VIKL';
													'Device_30.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_30.READ_INPUT_AND_OTPUT';
													'Device_30.READ_ST_EVENT';
													'Device_30.READ_REG_COMM';
												};
			};
	['29'] = { 
		['DEVICE_NUMBER']						= '29';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_SV_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Секционный выключатель';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '29W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_SV_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_29.READ_UST';
													'Device_29.WRITE_UST';
													'Device_29.COMMANDS';
													'Device_29.READ_REG_COMM';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_29.READ_INPUT_AND_OTPUT';
													'Device_29.READ_ST_EVENT';
												};
			};
}
GROUPS = {
	['Device_2.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_TS1_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SS1_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SS2_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SS3_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_TS2_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_TS3_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_APV_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RPV_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RPO_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RFK_VV_DP';
									};
			};
	['Device_2.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_2.READ_UST'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E4';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_2.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E4';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_2.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_TESTS';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_TESTS';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS';
										'Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_2.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_2.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_2.WRITE_ALLOW_COMMANDS.SPAC_1_1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_2.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_2.WRITE_COMMAND_VKL.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_2.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_2.WRITE_COMMAND_VIKL.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_2.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '2';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_RPO_DP';
										'Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_RPV_DP';
										'Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_1.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '1';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_IL1_AI';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_IL2_AI';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_IL3_AI';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_I0_AI';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_BS1_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_BS2_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_BS3_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS1_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS1_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS2_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS3_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS2_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS3_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS4_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS4_DP';
										'Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_1.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '1';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_1.READ_UST'] = { 
		['DEVICE_NUMBER']			= '1';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S3';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S4';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S5';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S6';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S7';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S8';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S9';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S10';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S11';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S12';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S13';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S14';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S15';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S16';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S17';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S18';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S19';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S20';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S21';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S22';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S23';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S24';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S25';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S26';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S27';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S28';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S29';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S30';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S31';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S32';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S33';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S34';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_1.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '1';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_1.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '1';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_1.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '1';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_1_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_Imax_15m';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ADDRESS';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_6.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_TS1_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SS1_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SS2_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SS3_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_TS2_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_TS3_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_APV_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_RPV_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_RPO_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_6.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_6.READ_UST'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_6.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_6.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_TESTS';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_ADDRESS';
										'Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_6.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_ADDRESS';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_6.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_6.WRITE_ALLOW_COMMANDS.SPAC_1_3_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_6.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_6.WRITE_COMMAND_VKL.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_6.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_6.WRITE_COMMAND_VIKL.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_6.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '6';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_RPO_DP';
										'Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_RPV_DP';
										'Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_5.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '5';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_IL1_AI';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_IL2_AI';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_IL3_AI';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_I0_AI';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_BS1_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_BS2_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_BS3_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS1_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS1_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS2_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS3_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS2_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS3_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS4_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS4_DP';
										'Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_5.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '5';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_5.READ_UST'] = { 
		['DEVICE_NUMBER']			= '5';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S3';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S4';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S5';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S6';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S7';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S8';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S9';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S10';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S11';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S12';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S13';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S14';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S15';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S16';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S17';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S18';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S19';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S20';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S21';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S22';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S23';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S24';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S25';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S26';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S27';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S28';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S29';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S30';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S31';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S32';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S33';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S34';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_5.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '5';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_5.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '5';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_5.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '5';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_3_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_Imax_15m';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ADDRESS';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_17.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_TS1_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SS1_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SS2_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SS3_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_TS2_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_TS3_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_APV_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_RPV_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_RPO_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_17.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_17.READ_UST'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_17.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_17.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_TESTS';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_ADDRESS';
										'Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_17.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_ADDRESS';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_17.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_17.WRITE_ALLOW_COMMANDS.SPAC_1_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_17.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_17.WRITE_COMMAND_VKL.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_17.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_17.WRITE_COMMAND_VIKL.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_17.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '17';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_RPO_DP';
										'Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_RPV_DP';
										'Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_16.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '16';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_IL1_AI';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_IL2_AI';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_IL3_AI';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_I0_AI';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_BS1_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_BS2_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_BS3_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS1_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS1_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS2_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS3_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS2_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS3_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS4_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS4_DP';
										'Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_16.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '16';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_16.READ_UST'] = { 
		['DEVICE_NUMBER']			= '16';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S3';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S4';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S5';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S6';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S7';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S8';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S9';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S10';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S11';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S12';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S13';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S14';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S15';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S16';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S17';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S18';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S19';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S20';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S21';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S22';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S23';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S24';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S25';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S26';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S27';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S28';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S29';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S30';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S31';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S32';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S33';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S34';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_16.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '16';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_16.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '16';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_16.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '16';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_6_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_Imax_15m';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ADDRESS';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_28.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_TS1_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SS1_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SS2_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SS3_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_TS2_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_TS3_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_APV_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_RPV_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_RPO_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_28.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_28.READ_UST'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_28.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_28.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_TESTS';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_ADDRESS';
										'Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_28.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_ADDRESS';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_28.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_28.WRITE_ALLOW_COMMANDS.SPAC_1_12_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_28.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_28.WRITE_COMMAND_VKL.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_28.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_28.WRITE_COMMAND_VIKL.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_28.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '28';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_RPO_DP';
										'Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_RPV_DP';
										'Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_27.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '27';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_IL1_AI';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_IL2_AI';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_IL3_AI';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_I0_AI';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_BS1_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_BS2_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_BS3_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS1_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS1_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS2_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS3_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS2_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS3_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS4_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS4_DP';
										'Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_27.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '27';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_27.READ_UST'] = { 
		['DEVICE_NUMBER']			= '27';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S3';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S4';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S5';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S6';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S7';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S8';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S9';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S10';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S11';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S12';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S13';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S14';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S15';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S16';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S17';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S18';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S19';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S20';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S21';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S22';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S23';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S24';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S25';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S26';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S27';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S28';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S29';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S30';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S31';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S32';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S33';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S34';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_27.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '27';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_27.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '27';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_27.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '27';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_1_12_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_Imax_15m';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ADDRESS';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_23.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_TS1_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SS1_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SS2_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SS3_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_TS2_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_TS3_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_APV_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_RPV_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_RPO_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_23.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_23.READ_UST'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_23.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_23.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_TESTS';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_ADDRESS';
										'Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_23.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_ADDRESS';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_23.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_23.WRITE_ALLOW_COMMANDS.SPAC_VV1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_23.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_23.WRITE_COMMAND_VKL.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_23.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_23.WRITE_COMMAND_VIKL.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_23.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '23';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_RPO_DP';
										'Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_RPV_DP';
										'Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_22.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '22';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_IL1_AI';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_IL2_AI';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_IL3_AI';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_I0_AI';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_BS1_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_BS2_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_BS3_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS1_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS1_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS2_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS3_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS2_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS3_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS4_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS4_DP';
										'Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_22.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '22';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_22.READ_UST'] = { 
		['DEVICE_NUMBER']			= '22';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S3';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S4';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S5';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S6';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S7';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S8';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S9';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S10';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S11';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S12';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S13';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S14';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S15';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S16';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S17';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S18';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S19';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S20';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S21';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S22';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S23';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S24';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S25';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S26';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S27';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S28';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S29';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S30';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S31';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S32';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S33';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S34';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_22.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '22';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_22.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '22';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_22.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '22';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV1_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_Imax_15m';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ADDRESS';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_30.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_TS1_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SS1_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SS2_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SS3_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_TS2_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_TS3_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_APV_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_RPV_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_RPO_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_30.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_30.READ_UST'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_30.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_30.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_TESTS';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_ADDRESS';
										'Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_30.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_ADDRESS';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_30.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_30.WRITE_ALLOW_COMMANDS.SPAC_SV_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_30.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_30.WRITE_COMMAND_VKL.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_30.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_30.WRITE_COMMAND_VIKL.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_30.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '30';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_RPO_DP';
										'Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_RPV_DP';
										'Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_29.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '29';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_IL1_AI';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_IL2_AI';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_IL3_AI';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_I0_AI';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_BS1_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_BS2_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_BS3_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS1_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS1_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS2_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS3_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS2_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS3_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS4_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS4_DP';
										'Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_29.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '29';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_29.READ_UST'] = { 
		['DEVICE_NUMBER']			= '29';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S3';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S4';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S5';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S6';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S7';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S8';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S9';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S10';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S11';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S12';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S13';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S14';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S15';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S16';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S17';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S18';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S19';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S20';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S21';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S22';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S23';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S24';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S25';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S26';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S27';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S28';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S29';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S30';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S31';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S32';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S33';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S34';
										'Device_29.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_MAIN_RES_UST';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
									};
			};
	['Device_29.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '29';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_29.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '29';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_29.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '29';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_READ_REG_COMM_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_SV_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_Imax_15m';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ADDRESS';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
}

VCHANNELS = {
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '2R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '2R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '2R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '2R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '2R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '2R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '2R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '2R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '2R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '2R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '2R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '2R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '2R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '2R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '2R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '2R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '2R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '2R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '2R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '2R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '2R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '2R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '2R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '2R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '2R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '2R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '2R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '2R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '2R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '2R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '2R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '2R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '2R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '2R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '2R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '2R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '2R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '2R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '2R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '2R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '2R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '2R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '2R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '2R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '2R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '2R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '2R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '2R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '2R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '2R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '2R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '2R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '2R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '2R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '2R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '2R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '2R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '2R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '2R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '2R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '2R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '2R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '2R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '2R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '2R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '2R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '2R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '2R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '2R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '2R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '2R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '2R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '2R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '2R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '2R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '2R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '2R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '2R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '2R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '2R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '2R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '2R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '2R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '2R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '2R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '2R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '2R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '2R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '2R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '2R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '2R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '2R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '2R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '2R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '2R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '2R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '2R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '2R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '2R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '2W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '2W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '2W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '2W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '2W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '2W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '2W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '2W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '2W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '2W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '2W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '2W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '2W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '2W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '2W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '2W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '2W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '2W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '2W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '2W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '2W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '2W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '2W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '2W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '2W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '2W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '2W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '2W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '2W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '2W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '2W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '2W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '2W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '2W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '2W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '2W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '2W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '2W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '2W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '2W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '2W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '2W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '2W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '2W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '2W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '2W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '2W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '2W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '2W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '2W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '2W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '2W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '2W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '2W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '2W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '2W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '2W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '2W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '2W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '2W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '2W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '2W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '2W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '2W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '2W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '2W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '2W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '2W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '2W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '2W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '2W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '2W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '2W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '2W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '2W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '2W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '2W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '2W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '2W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '2W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '2W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '2W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '2W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.COMMANDS_ALL.SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '2W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '2R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '2R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '2R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '2R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '2R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '2R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '2R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '2R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '2R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '2R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '2R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '2R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '2R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '2R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '2R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '2R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '2R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '2R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '2R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '2R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '2R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_ALLOW_COMMANDS.SPAC_1_1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '2W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_COMMAND_VKL.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '2W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.WRITE_COMMAND_VIKL.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '2W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '2R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '2R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '2R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '2R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '2R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '2R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_2.READS_OUTS_ALLOW.SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '2R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '1R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '1R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '1R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '1R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '1R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '1R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '1R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '1R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '1R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '1R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '1R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '1R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '1R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '1R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '1R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '1R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '1R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '1R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '1R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '1R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '1R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '1R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '1R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '1R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '1R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '1R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '1R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_INPUT_AND_OTPUT.SPAC_1_1_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '1R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '1R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '1R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '1R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_ST_EVENT.SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '1R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '1R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '1R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '1R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '1R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '1R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '1R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '1R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '1R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '1R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '1R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '1R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '1R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '1R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '1R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '1R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '1R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '1R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '1R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '1R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '1R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '1R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '1R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '1R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '1R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '1R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '1R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '1R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '1R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '1R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '1R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '1R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '1R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '1R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '1R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '1R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '1R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '1R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '1R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '1R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '1R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '1R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '1R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '1R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '1R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '1R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '1R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '1R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '1R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '1R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '1R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '1R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '1R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '1R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '1R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '1R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '1R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '1R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '1R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '1R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '1R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '1R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '1R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '1R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '1R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '1R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '1R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '1R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '1R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '1R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_UST.SPAC_1_1_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '1R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '1W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '1W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '1W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '1W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '1W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '1W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '1W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '1W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '1W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '1W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '1W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '1W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '1W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '1W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '1W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '1W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '1W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '1W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '1W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '1W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '1W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '1W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '1W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '1W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '1W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '1W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '1W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '1W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '1W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '1W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '1W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '1W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '1W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '1W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.WRITE_UST.SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '1W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '1R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '1R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '1R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '1R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '1R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '1R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '1R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '1R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '1R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '1R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '1R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '1R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '1R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '1R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '1R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '1R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '1R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '1R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '1R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '1R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '1R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '1R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '1R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '1R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '1R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '1R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '1R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '1R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '1R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '1R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '1R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '1R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '1R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '1R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '1R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '1R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '1R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '1R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '1R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '1R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '1R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '1R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '1R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '1R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '1R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '1R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '1R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '1R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '1R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '1R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '1R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '1R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '1R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '1R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '1R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '1R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '1R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '1R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '1R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '1R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '1R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '1R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '1R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_1.READ_REG_COMM.SPAC_1_1_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_1_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '1R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '6R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '6R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '6R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '6R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '6R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '6R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '6R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '6R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '6R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '6R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '6R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '6R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '6R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '6R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '6R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '6R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '6R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '6R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '6R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '6R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '6R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '6R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '6R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '6R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '6R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '6R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '6R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '6R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '6R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '6R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '6R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '6R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '6R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '6R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '6R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '6R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '6R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '6R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '6R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '6R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '6R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '6R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '6R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '6R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '6R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '6R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '6R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '6R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '6R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '6R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '6R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '6R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '6R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '6R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '6R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '6R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '6R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '6R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '6R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '6R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '6R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '6R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '6R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '6R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '6R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '6R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '6W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '6W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '6W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '6W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '6W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '6W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '6W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '6W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '6W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '6W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '6W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '6W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '6W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '6W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '6W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '6W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '6W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '6W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '6W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '6W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '6W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '6W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '6W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '6W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '6W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '6W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '6W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '6W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '6W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '6W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '6W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '6W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '6W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '6W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '6W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '6W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '6W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '6W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '6W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '6W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '6W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.COMMANDS_ALL.SPAC_1_3_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '6W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '6R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '6R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '6R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '6R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '6R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '6R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '6R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '6R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '6R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '6R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '6R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '6R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '6R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '6R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '6R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '6R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '6R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '6R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '6R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '6R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '6R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_ALLOW_COMMANDS.SPAC_1_3_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '6W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_COMMAND_VKL.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '6W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.WRITE_COMMAND_VIKL.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '6W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '6R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '6R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '6R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '6R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '6R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '6R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_6.READS_OUTS_ALLOW.SPAC_1_3_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '6R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '5R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '5R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '5R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '5R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '5R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '5R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '5R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '5R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '5R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '5R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '5R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '5R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '5R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '5R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '5R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '5R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '5R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '5R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '5R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '5R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '5R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '5R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '5R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '5R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '5R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '5R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '5R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_INPUT_AND_OTPUT.SPAC_1_3_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '5R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '5R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '5R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '5R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_ST_EVENT.SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '5R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '5R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '5R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '5R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '5R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '5R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '5R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '5R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '5R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '5R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '5R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '5R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '5R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '5R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '5R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '5R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '5R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '5R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '5R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '5R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '5R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '5R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '5R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '5R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '5R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '5R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '5R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '5R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '5R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '5R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '5R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '5R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '5R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '5R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '5R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '5R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '5R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '5R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '5R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '5R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '5R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '5R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '5R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '5R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '5R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '5R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '5R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '5R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '5R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '5R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '5R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '5R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '5R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '5R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '5R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '5R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '5R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '5R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '5R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '5R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '5R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '5R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '5R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '5R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '5R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '5R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '5R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '5R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '5R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '5R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_UST.SPAC_1_3_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '5R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '5W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '5W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '5W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '5W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '5W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '5W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '5W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '5W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '5W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '5W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '5W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '5W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '5W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '5W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '5W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '5W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '5W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '5W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '5W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '5W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '5W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '5W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '5W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '5W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '5W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '5W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '5W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '5W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '5W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '5W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '5W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '5W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '5W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '5W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.WRITE_UST.SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '5W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '5R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '5R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '5R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '5R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '5R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '5R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '5R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '5R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '5R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '5R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '5R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '5R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '5R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '5R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '5R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '5R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '5R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '5R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '5R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '5R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '5R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '5R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '5R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '5R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '5R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '5R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '5R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '5R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '5R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '5R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '5R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '5R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '5R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '5R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '5R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '5R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '5R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '5R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '5R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '5R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '5R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '5R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '5R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '5R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '5R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '5R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '5R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '5R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '5R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '5R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '5R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '5R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '5R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '5R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '5R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '5R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '5R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '5R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '5R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '5R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '5R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '5R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '5R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_5.READ_REG_COMM.SPAC_1_3_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_3_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '5R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '17R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '17R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '17R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '17R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '17R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '17R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '17R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '17R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '17R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '17R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '17R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '17R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '17R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '17R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '17R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '17R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '17R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '17R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '17R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '17R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '17R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '17R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '17R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '17R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '17R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '17R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '17R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '17R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '17R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '17R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '17R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '17R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '17R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '17R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '17R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '17R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '17R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '17R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '17R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '17R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '17R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '17R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '17R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '17R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '17R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '17R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '17R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '17R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '17R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '17R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '17R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '17R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '17R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '17R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '17R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '17R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '17R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '17R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '17R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '17R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '17R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '17R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '17R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '17R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '17R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '17R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '17W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '17W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '17W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '17W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '17W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '17W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '17W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '17W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '17W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '17W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '17W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '17W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '17W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '17W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '17W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '17W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '17W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '17W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '17W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '17W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '17W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '17W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '17W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '17W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '17W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '17W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '17W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '17W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '17W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '17W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '17W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '17W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '17W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '17W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '17W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '17W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '17W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '17W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '17W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '17W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '17W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.COMMANDS_ALL.SPAC_1_6_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '17W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '17R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '17R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '17R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '17R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '17R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '17R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '17R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '17R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '17R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '17R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '17R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '17R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '17R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '17R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '17R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '17R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '17R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '17R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '17R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '17R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '17R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_ALLOW_COMMANDS.SPAC_1_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '17W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_COMMAND_VKL.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '17W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.WRITE_COMMAND_VIKL.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '17W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '17R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '17R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '17R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '17R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '17R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '17R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_17.READS_OUTS_ALLOW.SPAC_1_6_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '17R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '16R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '16R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '16R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '16R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '16R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '16R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '16R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '16R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '16R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '16R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '16R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '16R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '16R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '16R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '16R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '16R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '16R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '16R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '16R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '16R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '16R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '16R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '16R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '16R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '16R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '16R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '16R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_INPUT_AND_OTPUT.SPAC_1_6_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '16R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '16R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '16R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '16R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_ST_EVENT.SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '16R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '16R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '16R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '16R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '16R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '16R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '16R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '16R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '16R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '16R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '16R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '16R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '16R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '16R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '16R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '16R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '16R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '16R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '16R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '16R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '16R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '16R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '16R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '16R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '16R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '16R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '16R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '16R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '16R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '16R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '16R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '16R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '16R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '16R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '16R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '16R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '16R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '16R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '16R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '16R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '16R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '16R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '16R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '16R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '16R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '16R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '16R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '16R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '16R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '16R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '16R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '16R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '16R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '16R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '16R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '16R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '16R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '16R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '16R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '16R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '16R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '16R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '16R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '16R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '16R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '16R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '16R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '16R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '16R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '16R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_UST.SPAC_1_6_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '16R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '16W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '16W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '16W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '16W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '16W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '16W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '16W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '16W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '16W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '16W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '16W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '16W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '16W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '16W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '16W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '16W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '16W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '16W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '16W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '16W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '16W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '16W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '16W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '16W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '16W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '16W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '16W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '16W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '16W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '16W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '16W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '16W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '16W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '16W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.WRITE_UST.SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '16W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '16R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '16R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '16R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '16R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '16R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '16R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '16R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '16R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '16R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '16R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '16R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '16R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '16R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '16R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '16R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '16R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '16R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '16R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '16R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '16R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '16R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '16R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '16R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '16R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '16R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '16R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '16R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '16R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '16R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '16R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '16R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '16R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '16R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '16R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '16R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '16R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '16R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '16R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '16R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '16R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '16R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '16R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '16R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '16R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '16R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '16R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '16R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '16R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '16R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '16R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '16R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '16R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '16R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '16R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '16R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '16R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '16R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '16R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '16R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '16R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '16R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '16R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '16R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_16.READ_REG_COMM.SPAC_1_6_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_6_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '16R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '28R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '28R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '28R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '28R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '28R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '28R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '28R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '28R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '28R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '28R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '28R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '28R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '28R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '28R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '28R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '28R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '28R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '28R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '28R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '28R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '28R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '28R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '28R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '28R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '28R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '28R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '28R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '28R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '28R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '28R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '28R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '28R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '28R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '28R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '28R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '28R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '28R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '28R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '28R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '28R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '28R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '28R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '28R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '28R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '28R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '28R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '28R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '28R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '28R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '28R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '28R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '28R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '28R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '28R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '28R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '28R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '28R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '28R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '28R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '28R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '28R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '28R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '28R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '28R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '28R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '28R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '28W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '28W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '28W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '28W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '28W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '28W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '28W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '28W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '28W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '28W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '28W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '28W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '28W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '28W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '28W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '28W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '28W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '28W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '28W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '28W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '28W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '28W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '28W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '28W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '28W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '28W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '28W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '28W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '28W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '28W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '28W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '28W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '28W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '28W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '28W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '28W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '28W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '28W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '28W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '28W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '28W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.COMMANDS_ALL.SPAC_1_12_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '28W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '28R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '28R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '28R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '28R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '28R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '28R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '28R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '28R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '28R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '28R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '28R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '28R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '28R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '28R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '28R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '28R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '28R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '28R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '28R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '28R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '28R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_ALLOW_COMMANDS.SPAC_1_12_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '28W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_COMMAND_VKL.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '28W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.WRITE_COMMAND_VIKL.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '28W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '28R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '28R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '28R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '28R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '28R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '28R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_28.READS_OUTS_ALLOW.SPAC_1_12_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '28R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '27R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '27R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '27R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '27R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '27R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '27R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '27R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '27R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '27R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '27R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '27R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '27R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '27R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '27R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '27R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '27R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '27R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '27R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '27R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '27R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '27R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '27R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '27R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '27R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '27R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '27R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '27R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_INPUT_AND_OTPUT.SPAC_1_12_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '27R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '27R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '27R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '27R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_ST_EVENT.SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '27R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '27R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '27R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '27R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '27R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '27R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '27R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '27R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '27R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '27R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '27R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '27R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '27R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '27R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '27R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '27R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '27R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '27R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '27R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '27R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '27R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '27R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '27R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '27R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '27R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '27R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '27R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '27R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '27R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '27R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '27R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '27R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '27R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '27R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '27R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '27R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '27R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '27R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '27R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '27R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '27R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '27R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '27R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '27R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '27R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '27R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '27R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '27R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '27R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '27R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '27R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '27R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '27R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '27R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '27R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '27R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '27R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '27R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '27R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '27R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '27R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '27R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '27R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '27R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '27R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '27R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '27R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '27R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '27R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '27R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_UST.SPAC_1_12_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '27R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '27W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '27W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '27W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '27W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '27W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '27W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '27W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '27W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '27W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '27W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '27W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '27W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '27W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '27W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '27W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '27W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '27W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '27W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '27W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '27W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '27W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '27W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '27W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '27W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '27W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '27W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '27W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '27W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '27W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '27W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '27W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '27W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '27W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '27W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.WRITE_UST.SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '27W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '27R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '27R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '27R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '27R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '27R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '27R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '27R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '27R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '27R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '27R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '27R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '27R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '27R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '27R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '27R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '27R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '27R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '27R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '27R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '27R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '27R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '27R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '27R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '27R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '27R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '27R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '27R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '27R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '27R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '27R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '27R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '27R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '27R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '27R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '27R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '27R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '27R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '27R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '27R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '27R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '27R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '27R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '27R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '27R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '27R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '27R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '27R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '27R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '27R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '27R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '27R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '27R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '27R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '27R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '27R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '27R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '27R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '27R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '27R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '27R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '27R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '27R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '27R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_27.READ_REG_COMM.SPAC_1_12_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_1_12_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '27R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '23R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '23R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '23R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '23R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '23R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '23R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '23R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '23R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '23R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '23R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '23R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '23R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '23R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '23R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '23R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '23R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '23R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '23R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '23R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '23R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '23R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '23R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '23R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '23R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '23R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '23R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '23R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '23R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '23R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '23R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '23R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '23R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '23R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '23R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '23R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '23R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '23R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '23R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '23R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '23R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '23R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '23R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '23R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '23R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '23R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '23R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '23R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '23R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '23R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '23R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '23R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '23R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '23R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '23R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '23R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '23R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '23R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '23R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '23R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '23R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '23R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '23R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '23R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '23R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '23R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '23R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '23W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '23W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '23W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '23W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '23W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '23W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '23W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '23W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '23W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '23W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '23W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '23W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '23W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '23W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '23W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '23W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '23W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '23W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '23W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '23W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '23W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '23W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '23W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '23W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '23W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '23W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '23W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '23W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '23W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '23W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '23W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '23W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '23W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '23W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '23W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '23W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '23W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '23W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '23W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '23W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '23W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.COMMANDS_ALL.SPAC_VV1_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '23W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '23R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '23R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '23R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '23R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '23R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '23R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '23R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '23R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '23R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '23R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '23R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '23R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '23R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '23R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '23R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '23R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '23R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '23R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '23R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '23R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '23R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_ALLOW_COMMANDS.SPAC_VV1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '23W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_COMMAND_VKL.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '23W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.WRITE_COMMAND_VIKL.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '23W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '23R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '23R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '23R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '23R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '23R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '23R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_23.READS_OUTS_ALLOW.SPAC_VV1_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '23R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '22R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '22R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '22R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '22R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '22R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '22R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '22R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '22R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '22R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '22R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '22R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '22R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '22R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '22R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '22R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '22R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '22R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '22R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '22R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '22R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '22R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '22R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '22R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '22R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '22R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '22R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '22R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_INPUT_AND_OTPUT.SPAC_VV1_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '22R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '22R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '22R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '22R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_ST_EVENT.SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '22R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '22R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '22R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '22R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '22R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '22R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '22R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '22R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '22R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '22R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '22R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '22R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '22R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '22R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '22R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '22R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '22R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '22R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '22R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '22R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '22R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '22R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '22R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '22R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '22R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '22R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '22R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '22R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '22R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '22R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '22R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '22R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '22R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '22R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '22R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '22R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '22R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '22R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '22R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '22R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '22R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '22R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '22R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '22R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '22R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '22R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '22R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '22R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '22R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '22R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '22R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '22R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '22R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '22R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '22R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '22R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '22R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '22R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '22R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '22R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '22R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '22R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '22R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '22R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '22R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '22R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '22R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '22R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '22R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '22R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_UST.SPAC_VV1_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '22R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '22W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '22W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '22W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '22W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '22W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '22W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '22W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '22W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '22W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '22W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '22W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '22W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '22W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '22W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '22W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '22W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '22W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '22W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '22W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '22W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '22W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '22W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '22W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '22W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '22W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '22W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '22W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '22W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '22W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '22W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '22W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '22W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '22W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '22W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.WRITE_UST.SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '22W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '22R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '22R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '22R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '22R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '22R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '22R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '22R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '22R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '22R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '22R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '22R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '22R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '22R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '22R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '22R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '22R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '22R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '22R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '22R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '22R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '22R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '22R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '22R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '22R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '22R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '22R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '22R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '22R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '22R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '22R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '22R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '22R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '22R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '22R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '22R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '22R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '22R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '22R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '22R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '22R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '22R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '22R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '22R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '22R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '22R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '22R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '22R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '22R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '22R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '22R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '22R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '22R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '22R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '22R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '22R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '22R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '22R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '22R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '22R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '22R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '22R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '22R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '22R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_22.READ_REG_COMM.SPAC_VV1_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_VV1_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '22R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '30R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '30R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '30R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '30R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '30R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '30R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '30R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '30R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '30R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '30R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '30R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '30R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '30R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '30R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '30R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '30R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '30R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '30R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '30R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '30R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '30R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '30R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '30R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '30R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '30R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '30R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '30R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '30R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '30R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '30R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '30R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '30R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '30R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '30R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '30R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '30R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '30R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '30R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '30R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '30R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '30R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '30R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '30R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '30R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '30R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '30R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '30R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '30R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '30R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '30R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '30R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '30R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '30R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '30R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '30R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '30R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '30R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '30R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '30R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '30R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '30R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '30R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '30R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '30R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '30R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_UST.SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '30R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '30W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '30W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '30W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '30W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '30W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '30W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '30W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '30W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '30W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '30W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '30W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '30W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '30W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '30W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '30W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '30W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '30W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '30W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '30W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '30W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '30W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '30W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '30W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '30W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '30W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '30W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '30W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '30W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '30W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '30W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '30W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '30W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '30W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '30W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '30W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '30W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '30W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '30W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '30W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '30W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '30W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.COMMANDS_ALL.SPAC_SV_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '30W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '30R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '30R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '30R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '30R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '30R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '30R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '30R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '30R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '30R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '30R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '30R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '30R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '30R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '30R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '30R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '30R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '30R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '30R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '30R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '30R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '30R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_ALLOW_COMMANDS.SPAC_SV_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '30W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_COMMAND_VKL.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '30W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.WRITE_COMMAND_VIKL.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '30W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '30R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '30R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '30R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '30R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '30R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '30R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_30.READS_OUTS_ALLOW.SPAC_SV_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '30R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '29R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '29R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '29R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '29R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '29R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '29R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '29R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '29R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '29R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '29R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '29R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '29R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '29R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '29R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '29R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '29R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '29R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '29R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '29R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '29R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '29R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '29R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '29R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '29R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '29R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '29R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '29R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_INPUT_AND_OTPUT.SPAC_SV_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '29R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '29R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '29R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '29R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_ST_EVENT.SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '29R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '29R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '29R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '29R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '29R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '29R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '29R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '29R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '29R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '29R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '29R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '29R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '29R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '29R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '29R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '29R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '29R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '29R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '29R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '29R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '29R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '29R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '29R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '29R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '29R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '29R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '29R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '29R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '29R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '29R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '29R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '29R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '29R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '29R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '29R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '29R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '29R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '29R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '29R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '29R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '29R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '29R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '29R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '29R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '29R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '29R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '29R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '29R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '29R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '29R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '29R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '29R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '29R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '29R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '29R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '29R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '29R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '29R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '29R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '29R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '29R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '29R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '29R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '29R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '29R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '29R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '29R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '29R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '29R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '29R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_UST.SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '29R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '29W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '29W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '29W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '29W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '29W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '29W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '29W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '29W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '29W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '29W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '29W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '29W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '29W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '29W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '29W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '29W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '29W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '29W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '29W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '29W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '29W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '29W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '29W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '29W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '29W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '29W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '29W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '29W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '29W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '29W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '29W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '29W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '29W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '29W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.WRITE_UST.SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '29W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '29R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '29R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '29R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '29R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '29R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '29R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '29R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '29R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '29R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '29R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '29R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '29R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '29R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '29R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '29R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '29R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '29R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '29R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '29R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '29R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '29R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '29R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '29R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '29R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '29R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '29R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '29R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '29R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '29R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '29R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '29R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '29R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '29R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '29R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '29R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '29R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '29R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '29R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '29R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '29R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '29R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '29R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '29R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '29R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '29R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '29R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '29R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '29R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '29R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '29R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '29R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '29R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '29R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '29R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '29R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '29R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '29R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '29R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '29R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '29R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '29R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '29R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '29R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_29.READ_REG_COMM.SPAC_SV_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_SV_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '29R0V205';
		['DECIMAL_PLACE']		= 0;
									};
}

dofile('SPABUS.lua')