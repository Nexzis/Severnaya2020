COM_CONFIG = {
	['PORT_NAME']	= 'COM4';
	['BAUD_RATE']	= 9600;
	['DATA_BITS']	= 7;
	['STOP_BITS']	= 1;
	['PARITY']		= 'EVEN';
	['TIMEOUT']		= 0;
	['INVERSE_RTS']	= false;
}
DEVICES = {
	['43'] = { 
		['DEVICE_NUMBER']						= '43';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_VV2_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Ввод2';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '43W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_43.READ_UST';
													'Device_43.WRITE_UST';
													'Device_43.COMMANDS_ALL';
													'Device_43.WRITE_ALLOW_COMMANDS';
													'Device_43.WRITE_COMMAND_VKL';
													'Device_43.WRITE_COMMAND_VIKL';
													'Device_43.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_43.READ_INPUT_AND_OTPUT';
													'Device_43.READ_ST_EVENT';
													'Device_43.READ_REG_COMM';
												};
			};
	['42'] = { 
		['DEVICE_NUMBER']						= '42';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_VV2_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Ввод2';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '42W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_VV2_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_42.READ_UST';
													'Device_42.WRITE_UST';
													'Device_42.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_42.READ_INPUT_AND_OTPUT';
													'Device_42.READ_ST_EVENT';
													'Device_42.READ_REG_COMM';
												};
			};
	['45'] = { 
		['DEVICE_NUMBER']						= '45';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_6_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Вдольтрассовая ЛЭП';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '45W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_45.READ_UST';
													'Device_45.WRITE_UST';
													'Device_45.COMMANDS_ALL';
													'Device_45.WRITE_ALLOW_COMMANDS';
													'Device_45.WRITE_COMMAND_VKL';
													'Device_45.WRITE_COMMAND_VIKL';
													'Device_45.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_45.READ_INPUT_AND_OTPUT';
													'Device_45.READ_ST_EVENT';
													'Device_45.READ_REG_COMM';
												};
			};
	['44'] = { 
		['DEVICE_NUMBER']						= '44';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_6_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Вдольтрассовая ЛЭП';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '44W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_6_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_44.READ_UST';
													'Device_44.WRITE_UST';
													'Device_44.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_44.READ_INPUT_AND_OTPUT';
													'Device_44.READ_ST_EVENT';
													'Device_44.READ_REG_COMM';
												};
			};
	['47'] = { 
		['DEVICE_NUMBER']						= '47';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_8_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Т2 Основной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '47W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_47.READ_UST';
													'Device_47.WRITE_UST';
													'Device_47.COMMANDS_ALL';
													'Device_47.WRITE_ALLOW_COMMANDS';
													'Device_47.WRITE_COMMAND_VKL';
													'Device_47.WRITE_COMMAND_VIKL';
													'Device_47.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_47.READ_INPUT_AND_OTPUT';
													'Device_47.READ_ST_EVENT';
													'Device_47.READ_REG_COMM';
												};
			};
	['46'] = { 
		['DEVICE_NUMBER']						= '46';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_8_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Т2 Основной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '46W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_8_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_46.READ_UST';
													'Device_46.WRITE_UST';
													'Device_46.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_46.READ_INPUT_AND_OTPUT';
													'Device_46.READ_ST_EVENT';
													'Device_46.READ_REG_COMM';
												};
			};
	['53'] = { 
		['DEVICE_NUMBER']						= '53';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_11_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Т4 Вспомогательной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '53W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_53.READ_UST';
													'Device_53.WRITE_UST';
													'Device_53.COMMANDS_ALL';
													'Device_53.WRITE_ALLOW_COMMANDS';
													'Device_53.WRITE_COMMAND_VKL';
													'Device_53.WRITE_COMMAND_VIKL';
													'Device_53.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_53.READ_INPUT_AND_OTPUT';
													'Device_53.READ_ST_EVENT';
													'Device_53.READ_REG_COMM';
												};
			};
	['52'] = { 
		['DEVICE_NUMBER']						= '52';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_11_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Т4 Вспомогательной зоны';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '52W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_11_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_52.READ_UST';
													'Device_52.WRITE_UST';
													'Device_52.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_52.READ_INPUT_AND_OTPUT';
													'Device_52.READ_ST_EVENT';
													'Device_52.READ_REG_COMM';
												};
			};
	['65'] = { 
		['DEVICE_NUMBER']						= '65';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_17_803.RAW_SPAC_L2210_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Т6 ВОС';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '65W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_CHNG_SWXX_ON';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель включен';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_CHNG_SWXX_UNDEF1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_CHNG_SWXX_UNDEF2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Положение не определено';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_RELAY_ON_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сработано';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_RELAY_ON_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле отключить сброшено';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_RELAY_OFF_WRK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сработано';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_RELAY_OFF_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле включить сброшено';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_MANUAL_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении “местный”';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_REMOTE_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Ключ “местный/дистан.” в положении дистанционный';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_COMM_INPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “включить” активен';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_COMM_OUTPUT_RELAY_ON_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Вход реле команды “отключить” активен';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_APV_ALLOW';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ разрешено';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_APV_FORBD';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'АПВ запрещено';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_MES_MODULE_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание измеритнльного модуля (TS2)';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_MTZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ускорения МТЗ';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_ZCH_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание защиты шин';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_DGZ_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание клапана дуговой защиты (ДГЗ)';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_OFF_FROM_DGZ_UROV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение от ДГЗ,УРОВ';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_OFF_FROM_APV';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АПВ';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_ERROR_CONTROL_LINES';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Неисправность цепей управления';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_OFF_FROM_AVR';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Отключение с АВР';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_AVT_CURR_LIN_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Автомат шинки питания отключён';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_FUNCTION_CONTROL';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Функциональный контроль';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_AVR_RELAY_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Реле “запрет АВР” сработано';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_UROV_WORK2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание УРОВ';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_ALARM_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Аварийное отключение';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_STORAGE_ALARM';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Предупредительная сигнализация';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_VIZOV_V_ZRU';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10100;
															['EVENT_DESCRIPTION']		= 'Обобщённый сигнал “вызов”';
														};
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_CHNG_SWXX_OFF';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Выключатель выключен';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.L2210_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= nil;
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_65.READ_UST';
													'Device_65.WRITE_UST';
													'Device_65.COMMANDS_ALL';
													'Device_65.WRITE_ALLOW_COMMANDS';
													'Device_65.WRITE_COMMAND_VKL';
													'Device_65.WRITE_COMMAND_VIKL';
													'Device_65.READS_OUTS_ALLOW';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_65.READ_INPUT_AND_OTPUT';
													'Device_65.READ_ST_EVENT';
													'Device_65.READ_REG_COMM';
												};
			};
	['64'] = { 
		['DEVICE_NUMBER']						= '64';
		['FIRST_CHANK_TIMEOUT']					= 50000;
		['NEXT_CHANK_TIMEOUT']					= 50000;
		['RETRY_DELAY']							= 50000;
		['RETRY_COUNT']							= 5;
		['DEVICE_BLOCK_PERIOD']					= 2000000;
		['DISABLE_SIGNAL_NAME']					= nil;
		['STATUS_SIGNAL_NAME']					= 'SPAC_2_17_803.RAW_SPAC_4D28_DEVICE1_STATUS';
		['NEED_SYNCH_TIME']						= true;
		['SYNCH_TIME_PERIOD']					= 100000;
		['SYNCH_TIME_STATUS_SIGNAL_NAME']		= nil;
		['NEED_EVENTS_REQUEST']						= true;
		['NEED_EVENTS_TO_ELOGGER']				= true;
		['EVENTS_REQUEST_PERIOD']				= 100000;
		['EVENTS_REQUEST_STATUS_SIGNAL_NAME']	= nil;
		['EVENTS_SOURCE']						= 'ЗРУ 10кВ Т6 ВОС';
		['NEED_PASSWORD']						= true;
		['PASSWORD_ADDRESS']					= '64W0V160:1';
		['PASSWORD_STATUS_SIGNAL_NAME']			= nil;
		['EVENTS']								= {
													['0.1'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>';
														};
													['0.2'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_START_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>';
														};
													['0.3'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TRIGG_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>> (МТЗ 2 ст.)';
														};
													['0.4'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_STAGE_I1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>';
														};
													['0.5'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>';
														};
													['0.6'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_START_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>';
														};
													['0.7'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TRIGG_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>(МТЗ 1 ст.)';
														};
													['0.8'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_STAGE_I2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>';
														};
													['0.9'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени I>>>>>>';
														};
													['0.10'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_START_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени I>>>>>>';
														};
													['0.11'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TRIGG_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени I>>>>>> (токовая отсечка)';
														};
													['0.12'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_STAGE_I3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени I>>>>>>';
														};
													['0.13'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>';
														};
													['0.14'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_START_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>';
														};
													['0.15'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TRIGG_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>';
														};
													['0.16'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_STAGE_Io1';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>';
														};
													['0.17'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени Iо>>>>';
														};
													['0.18'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_START_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени Iо>>>>';
														};
													['0.19'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TRIGG_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени Iо>>>>';
														};
													['0.20'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_STAGE_Io2';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени Iо>>>>';
														};
													['0.21'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_START_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Запуск ступени DI>>';
														};
													['0.22'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_START_STAGE_Io3.';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат запуска ступени DI>>';
														};
													['0.23'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TRIGG_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Срабатывание ступени DI>>';
														};
													['0.24'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_RETURN_STAGE_Io3';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат ступени DI>>';
														};
													['0.25'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS1 активизирован';
														};
													['0.26'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS1';
														};
													['0.27'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS1_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS1 активизирован';
														};
													['0.28'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS1_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS1';
														};
													['0.29'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS2 активизирован';
														};
													['0.30'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS2';
														};
													['0.31'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS2_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS2 активизирован';
														};
													['0.32'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS2_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS2';
														};
													['0.33'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS3 активизирован';
														};
													['0.34'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS3';
														};
													['0.35'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS3_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS3 активизирован';
														};
													['0.36'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS3_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS3';
														};
													['0.37'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал SS4 активизирован';
														};
													['0.38'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_SS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала SS4';
														};
													['0.39'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS4_ACT';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'Выходной сигнал TS4 активизирован';
														};
													['0.40'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_TS4_RST';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Сброс выходного сигнала TS4';
														};
													['0.41'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_UROV_WORK';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 10000;
															['EVENT_DESCRIPTION']		= 'УРОВ в работе';
														};
													['0.50'] = {
															['TIME_SIGNAL_NAME']		= 'EVENTS_2_17_803.D28_PEREZAGRUZKA';
															['VALUE_SIGNAL_NAME']		= nil;
															['EVENT_CATEGORY']			= 101;
															['EVENT_DESCRIPTION']		= 'Возврат УРОВ';
														};
												};
		['PRIORITY_GROUPS_PATHS']						= {
													'Device_64.READ_UST';
													'Device_64.WRITE_UST';
													'Device_64.COMMANDS';
												};
		['NON_PRIORITY_GROUPS_PATHS']						= {
													'Device_64.READ_INPUT_AND_OTPUT';
													'Device_64.READ_ST_EVENT';
													'Device_64.READ_REG_COMM';
												};
			};
}
GROUPS = {
	['Device_43.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_TS1_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SS1_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SS2_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SS3_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_TS2_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_TS3_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_APV_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_RPV_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_RPO_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_43.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_43.READ_UST'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_43.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_43.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_TESTS';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_ADDRESS';
										'Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_43.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_ADDRESS';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_43.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_43.WRITE_ALLOW_COMMANDS.SPAC_VV2_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_43.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_43.WRITE_COMMAND_VKL.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_43.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_43.WRITE_COMMAND_VIKL.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_43.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '43';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_RPO_DP';
										'Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_RPV_DP';
										'Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_42.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '42';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_IL1_AI';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_IL2_AI';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_IL3_AI';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_I0_AI';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_BS1_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_BS2_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_BS3_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS1_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS1_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS2_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS3_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS2_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS3_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS4_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS4_DP';
										'Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_42.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '42';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_42.READ_UST'] = { 
		['DEVICE_NUMBER']			= '42';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S3';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S4';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S5';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S6';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S7';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S8';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S9';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S10';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S11';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S12';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S13';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S14';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S15';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S16';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S17';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S18';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S19';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S20';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S21';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S22';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S23';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S24';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S25';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S26';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S27';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S28';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S29';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S30';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S31';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S32';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S33';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S34';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_MAIN_RES_UST';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
									};
			};
	['Device_42.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '42';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_42.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '42';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_42.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '42';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_VV2_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_Imax_15m';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ADDRESS';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_45.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_TS1_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SS1_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SS2_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SS3_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_TS2_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_TS3_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_APV_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_RPV_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_RPO_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_45.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_45.READ_UST'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_45.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_45.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_TESTS';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_ADDRESS';
										'Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_45.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_ADDRESS';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_45.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_45.WRITE_ALLOW_COMMANDS.SPAC_2_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_45.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_45.WRITE_COMMAND_VKL.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_45.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_45.WRITE_COMMAND_VIKL.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_45.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '45';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_RPO_DP';
										'Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_RPV_DP';
										'Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_44.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '44';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_IL1_AI';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_IL2_AI';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_IL3_AI';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_I0_AI';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_BS1_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_BS2_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_BS3_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS1_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS1_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS2_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS3_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS2_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS3_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS4_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS4_DP';
										'Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_44.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '44';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_44.READ_UST'] = { 
		['DEVICE_NUMBER']			= '44';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S3';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S4';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S5';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S6';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S7';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S8';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S9';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S10';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S11';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S12';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S13';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S14';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S15';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S16';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S17';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S18';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S19';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S20';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S21';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S22';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S23';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S24';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S25';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S26';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S27';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S28';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S29';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S30';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S31';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S32';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S33';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S34';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_44.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '44';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_44.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '44';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_44.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '44';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_6_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_Imax_15m';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ADDRESS';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_47.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_TS1_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SS1_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SS2_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SS3_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_TS2_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_TS3_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_APV_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_RPV_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_RPO_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_47.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_47.READ_UST'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_47.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_47.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_TESTS';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_ADDRESS';
										'Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_47.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_ADDRESS';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_47.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_47.WRITE_ALLOW_COMMANDS.SPAC_2_8_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_47.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_47.WRITE_COMMAND_VKL.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_47.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_47.WRITE_COMMAND_VIKL.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_47.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '47';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_RPO_DP';
										'Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_RPV_DP';
										'Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_46.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '46';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_IL1_AI';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_IL2_AI';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_IL3_AI';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_I0_AI';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_BS1_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_BS2_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_BS3_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS1_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS1_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS2_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS3_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS2_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS3_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS4_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS4_DP';
										'Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_46.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '46';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_46.READ_UST'] = { 
		['DEVICE_NUMBER']			= '46';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S3';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S4';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S5';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S6';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S7';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S8';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S9';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S10';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S11';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S12';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S13';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S14';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S15';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S16';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S17';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S18';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S19';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S20';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S21';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S22';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S23';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S24';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S25';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S26';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S27';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S28';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S29';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S30';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S31';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S32';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S33';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S34';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_46.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '46';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_46.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '46';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_46.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '46';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_8_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_Imax_15m';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ADDRESS';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_53.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_TS1_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SS1_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SS2_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SS3_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_TS2_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_TS3_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_APV_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_RPV_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_RPO_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_53.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_53.READ_UST'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_53.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_53.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_TESTS';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_ADDRESS';
										'Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_53.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_ADDRESS';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_53.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_53.WRITE_ALLOW_COMMANDS.SPAC_2_11_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_53.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_53.WRITE_COMMAND_VKL.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_53.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_53.WRITE_COMMAND_VIKL.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_53.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '53';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_RPO_DP';
										'Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_RPV_DP';
										'Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_52.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '52';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_IL1_AI';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_IL2_AI';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_IL3_AI';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_I0_AI';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_BS1_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_BS2_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_BS3_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS1_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS1_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS2_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS3_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS2_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS3_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS4_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS4_DP';
										'Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_52.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '52';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_52.READ_UST'] = { 
		['DEVICE_NUMBER']			= '52';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S3';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S4';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S5';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S6';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S7';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S8';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S9';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S10';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S11';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S12';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S13';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S14';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S15';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S16';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S17';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S18';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S19';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S20';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S21';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S22';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S23';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S24';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S25';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S26';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S27';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S28';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S29';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S30';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S31';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S32';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S33';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S34';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_52.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '52';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_52.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '52';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_52.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '52';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_11_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_Imax_15m';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ADDRESS';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
	['Device_65.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_TS1_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SS1_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SS2_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SS3_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_TS2_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_TS3_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_APV_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_VIKL_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_RPV_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_RPO_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_MU_DU_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_COMAND_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_RFK_VV_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
										'Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
									};
			};
	['Device_65.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
										'Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
									};
			};
	['Device_65.READ_UST'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_UROV';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_USKOR';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_APV';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E1';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E2';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E3';
										'Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E4';
									};
			};
	['Device_65.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_APV';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E1';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E2';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E3';
										'Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E4';
									};
			};
	['Device_65.COMMANDS_ALL'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIBOR_OTKL';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIBOR_VKL';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OTKR_PAROL';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_ZAKR_PAROL';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_TESTS';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_ADDRESS';
										'Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OBMEN_SPEED';
									};
			};
	['Device_65.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_L2210_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_BUFFER';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_ERROR_NUM';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_ADDRESS';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_OBMEN_SPEED';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_TIME_VKL_VKL';
										'Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_PO_VERSION';
									};
			};
	['Device_65.WRITE_ALLOW_COMMANDS'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.UPDATE_WRITE_ALLOWS_OUT';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_65.WRITE_ALLOW_COMMANDS.SPAC_2_17_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
									};
			};
	['Device_65.WRITE_COMMAND_VKL'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.UPDATE_WRITE_COMMAND_VKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_65.WRITE_COMMAND_VKL.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
									};
			};
	['Device_65.WRITE_COMMAND_VIKL'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.UPDATE_WRITE_COMMAND_VIKL';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_65.WRITE_COMMAND_VIKL.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
									};
			};
	['Device_65.READS_OUTS_ALLOW'] = { 
		['DEVICE_NUMBER']			= '65';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.UPDATE_READ_OUTS_AND_ALLOWS';
		['STATUS_SIGNAL_NAME']		= nil;
		['VCHANNELS_PATHS']			= {
										'Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_RPO_DP';
										'Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_RPV_DP';
										'Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
										'Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
										'Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
										'Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
										'Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_MU_DU_DP';
									};
			};
	['Device_64.READ_INPUT_AND_OTPUT'] = { 
		['DEVICE_NUMBER']			= '64';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_STATUS_READ_INPUT_AND_OTPUT_ST';
		['VCHANNELS_PATHS']			= {
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_IL1_AI';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_IL2_AI';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_IL3_AI';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_I0_AI';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_BS1_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_BS2_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_BS3_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I1_START_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I2_START_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I3_START_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS1_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS1_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS2_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS3_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS2_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS3_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS4_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS4_DP';
										'Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
									};
			};
	['Device_64.READ_ST_EVENT'] = { 
		['DEVICE_NUMBER']			= '64';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_STATUS_READ_ST_EVENT';
		['VCHANNELS_PATHS']			= {
										'Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
										'Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
										'Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
										'Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
									};
			};
	['Device_64.READ_UST'] = { 
		['DEVICE_NUMBER']			= '64';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_READ_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_STATUS_READ_UST';
		['VCHANNELS_PATHS']			= {
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S3';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S4';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S5';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S6';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S7';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S8';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S9';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S10';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S11';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S12';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S13';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S14';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S15';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S16';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S17';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S18';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S19';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S20';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S21';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S22';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S23';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S24';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S25';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S26';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S27';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S28';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S29';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S30';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S31';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S32';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S33';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S34';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I3';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I0_1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I0_2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_dI';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
										'Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_MAIN_RES_UST';
									};
			};
	['Device_64.WRITE_UST'] = { 
		['DEVICE_NUMBER']			= '64';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_WRITE_UST_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_STATUS_WRITE_UST';
		['VCHANNELS_PATHS']			= {
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I1';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I2';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I3';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_dI';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
										'Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
									};
			};
	['Device_64.COMMANDS'] = { 
		['DEVICE_NUMBER']			= '64';
		['DIRECTION']				= 'OUTPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_COMMANDS_UPDATE';
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_STATUS_COMMANDS';
		['VCHANNELS_PATHS']			= {
									};
			};
	['Device_64.READ_REG_COMM'] = { 
		['DEVICE_NUMBER']			= '64';
		['DIRECTION']				= 'INPUT';
		['UPDATE_PERIOD']			= 0;
		['UPDATE_SIGNAL_NAME']		= nil;
		['STATUS_SIGNAL_NAME']		= 'SPAC_2_17_803.RAW_SPAC_4D28_STATUS_READ_REG_COMM';
		['VCHANNELS_PATHS']			= {
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_Imax_last_15min';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I1';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I2';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I0_1';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I0_2';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_dI';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ACT_STEP1';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ACT_STEP2';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_Imax_15m';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ERROR_NUM';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ADDRESS';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_OBMEN_SPEED';
										'Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_PO_VERSION';
									};
			};
}

VCHANNELS = {
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '43R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '43R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '43R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '43R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '43R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '43R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '43R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '43R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '43R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '43R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '43R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '43R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '43R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '43R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '43R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '43R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '43R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '43R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '43R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '43R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '43R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '43R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '43R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '43R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '43R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '43R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '43R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '43R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '43R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '43R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '43R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '43R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '43R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '43R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '43R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '43R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '43R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '43R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '43R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '43R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '43R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '43R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '43R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '43R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '43R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '43R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '43R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '43R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '43R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '43R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '43R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '43R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '43R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '43R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '43R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '43R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '43R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '43R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '43R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '43R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '43R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '43R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '43R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '43R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '43R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '43R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '43W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '43W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '43W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '43W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '43W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '43W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '43W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '43W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '43W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '43W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '43W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '43W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '43W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '43W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '43W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '43W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '43W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '43W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '43W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '43W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '43W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '43W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '43W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '43W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '43W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '43W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '43W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '43W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '43W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '43W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '43W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '43W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '43W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '43W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '43W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '43W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '43W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '43W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '43W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '43W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '43W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.COMMANDS_ALL.SPAC_VV2_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '43W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '43R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '43R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '43R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '43R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '43R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '43R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '43R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '43R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '43R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '43R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '43R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '43R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '43R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '43R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '43R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '43R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '43R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '43R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '43R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '43R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '43R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_ALLOW_COMMANDS.SPAC_VV2_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '43W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_COMMAND_VKL.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '43W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.WRITE_COMMAND_VIKL.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '43W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '43R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '43R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '43R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '43R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '43R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '43R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_43.READS_OUTS_ALLOW.SPAC_VV2_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '43R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '42R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '42R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '42R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '42R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '42R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '42R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '42R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '42R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '42R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '42R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '42R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '42R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '42R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '42R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '42R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '42R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '42R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '42R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '42R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '42R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '42R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '42R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '42R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '42R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '42R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '42R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '42R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_INPUT_AND_OTPUT.SPAC_VV2_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '42R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '42R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '42R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '42R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_ST_EVENT.SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '42R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '42R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '42R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '42R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '42R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '42R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '42R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '42R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '42R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '42R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '42R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '42R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '42R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '42R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '42R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '42R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '42R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '42R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '42R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '42R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '42R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '42R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '42R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '42R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '42R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '42R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '42R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '42R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '42R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '42R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '42R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '42R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '42R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '42R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '42R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '42R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '42R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '42R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '42R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '42R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '42R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '42R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '42R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '42R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '42R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '42R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '42R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '42R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '42R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '42R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '42R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '42R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '42R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '42R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '42R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '42R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '42R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '42R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '42R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '42R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '42R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '42R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '42R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '42R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '42R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '42R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '42R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '42R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '42R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '42R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_UST.SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '42R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '42W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '42W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '42W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '42W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '42W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '42W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '42W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '42W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '42W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '42W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '42W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '42W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '42W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '42W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '42W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '42W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '42W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '42W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '42W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '42W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '42W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '42W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '42W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '42W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '42W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '42W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '42W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '42W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '42W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '42W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '42W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '42W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '42W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '42W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.WRITE_UST.SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '42W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '42R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '42R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '42R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '42R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '42R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '42R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '42R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '42R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '42R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '42R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '42R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '42R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '42R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '42R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '42R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '42R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '42R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '42R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '42R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '42R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '42R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '42R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '42R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '42R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '42R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '42R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '42R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '42R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '42R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '42R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '42R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '42R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '42R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '42R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '42R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '42R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '42R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '42R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '42R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '42R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '42R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '42R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '42R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '42R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '42R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '42R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '42R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '42R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '42R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '42R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '42R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '42R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '42R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '42R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '42R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '42R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '42R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '42R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '42R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '42R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '42R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '42R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '42R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_42.READ_REG_COMM.SPAC_VV2_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_VV2_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '42R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '45R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '45R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '45R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '45R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '45R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '45R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '45R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '45R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '45R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '45R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '45R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '45R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '45R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '45R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '45R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '45R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '45R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '45R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '45R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '45R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '45R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '45R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '45R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '45R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '45R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '45R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '45R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '45R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '45R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '45R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '45R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '45R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '45R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '45R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '45R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '45R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '45R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '45R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '45R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '45R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '45R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '45R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '45R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '45R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '45R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '45R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '45R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '45R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '45R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '45R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '45R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '45R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '45R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '45R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '45R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '45R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '45R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '45R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '45R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '45R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '45R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '45R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '45R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '45R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '45R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '45R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '45W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '45W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '45W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '45W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '45W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '45W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '45W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '45W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '45W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '45W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '45W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '45W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '45W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '45W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '45W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '45W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '45W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '45W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '45W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '45W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '45W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '45W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '45W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '45W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '45W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '45W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '45W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '45W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '45W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '45W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '45W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '45W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '45W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '45W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '45W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '45W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '45W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '45W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '45W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '45W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '45W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.COMMANDS_ALL.SPAC_2_6_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '45W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '45R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '45R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '45R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '45R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '45R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '45R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '45R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '45R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '45R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '45R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '45R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '45R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '45R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '45R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '45R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '45R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '45R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '45R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '45R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '45R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '45R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_ALLOW_COMMANDS.SPAC_2_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '45W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_COMMAND_VKL.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '45W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.WRITE_COMMAND_VIKL.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '45W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '45R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '45R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '45R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '45R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '45R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '45R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_45.READS_OUTS_ALLOW.SPAC_2_6_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '45R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '44R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '44R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '44R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '44R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '44R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '44R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '44R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '44R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '44R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '44R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '44R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '44R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '44R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '44R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '44R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '44R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '44R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '44R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '44R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '44R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '44R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '44R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '44R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '44R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '44R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '44R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '44R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_INPUT_AND_OTPUT.SPAC_2_6_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '44R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '44R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '44R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '44R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_ST_EVENT.SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '44R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '44R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '44R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '44R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '44R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '44R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '44R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '44R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '44R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '44R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '44R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '44R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '44R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '44R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '44R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '44R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '44R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '44R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '44R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '44R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '44R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '44R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '44R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '44R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '44R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '44R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '44R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '44R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '44R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '44R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '44R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '44R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '44R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '44R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '44R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '44R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '44R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '44R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '44R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '44R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '44R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '44R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '44R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '44R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '44R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '44R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '44R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '44R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '44R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '44R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '44R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '44R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '44R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '44R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '44R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '44R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '44R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '44R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '44R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '44R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '44R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '44R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '44R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '44R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '44R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '44R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '44R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '44R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '44R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '44R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_UST.SPAC_2_6_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '44R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '44W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '44W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '44W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '44W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '44W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '44W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '44W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '44W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '44W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '44W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '44W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '44W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '44W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '44W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '44W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '44W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '44W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '44W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '44W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '44W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '44W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '44W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '44W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '44W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '44W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '44W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '44W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '44W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '44W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '44W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '44W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '44W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '44W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '44W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.WRITE_UST.SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '44W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '44R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '44R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '44R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '44R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '44R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '44R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '44R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '44R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '44R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '44R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '44R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '44R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '44R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '44R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '44R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '44R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '44R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '44R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '44R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '44R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '44R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '44R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '44R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '44R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '44R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '44R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '44R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '44R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '44R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '44R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '44R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '44R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '44R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '44R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '44R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '44R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '44R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '44R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '44R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '44R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '44R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '44R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '44R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '44R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '44R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '44R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '44R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '44R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '44R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '44R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '44R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '44R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '44R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '44R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '44R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '44R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '44R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '44R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '44R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '44R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '44R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '44R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '44R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_44.READ_REG_COMM.SPAC_2_6_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_6_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '44R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '47R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '47R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '47R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '47R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '47R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '47R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '47R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '47R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '47R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '47R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '47R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '47R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '47R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '47R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '47R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '47R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '47R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '47R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '47R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '47R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '47R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '47R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '47R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '47R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '47R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '47R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '47R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '47R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '47R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '47R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '47R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '47R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '47R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '47R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '47R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '47R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '47R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '47R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '47R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '47R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '47R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '47R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '47R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '47R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '47R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '47R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '47R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '47R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '47R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '47R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '47R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '47R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '47R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '47R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '47R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '47R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '47R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '47R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '47R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '47R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '47R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '47R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '47R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '47R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '47R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '47R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '47W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '47W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '47W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '47W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '47W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '47W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '47W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '47W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '47W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '47W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '47W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '47W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '47W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '47W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '47W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '47W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '47W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '47W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '47W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '47W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '47W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '47W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '47W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '47W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '47W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '47W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '47W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '47W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '47W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '47W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '47W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '47W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '47W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '47W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '47W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '47W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '47W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '47W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '47W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '47W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '47W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.COMMANDS_ALL.SPAC_2_8_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '47W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '47R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '47R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '47R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '47R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '47R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '47R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '47R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '47R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '47R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '47R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '47R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '47R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '47R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '47R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '47R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '47R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '47R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '47R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '47R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '47R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '47R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_ALLOW_COMMANDS.SPAC_2_8_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '47W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_COMMAND_VKL.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '47W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.WRITE_COMMAND_VIKL.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '47W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '47R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '47R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '47R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '47R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '47R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '47R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_47.READS_OUTS_ALLOW.SPAC_2_8_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '47R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '46R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '46R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '46R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '46R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '46R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '46R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '46R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '46R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '46R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '46R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '46R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '46R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '46R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '46R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '46R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '46R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '46R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '46R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '46R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '46R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '46R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '46R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '46R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '46R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '46R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '46R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '46R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_INPUT_AND_OTPUT.SPAC_2_8_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '46R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '46R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '46R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '46R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_ST_EVENT.SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '46R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '46R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '46R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '46R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '46R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '46R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '46R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '46R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '46R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '46R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '46R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '46R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '46R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '46R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '46R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '46R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '46R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '46R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '46R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '46R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '46R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '46R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '46R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '46R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '46R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '46R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '46R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '46R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '46R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '46R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '46R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '46R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '46R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '46R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '46R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '46R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '46R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '46R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '46R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '46R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '46R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '46R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '46R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '46R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '46R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '46R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '46R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '46R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '46R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '46R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '46R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '46R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '46R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '46R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '46R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '46R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '46R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '46R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '46R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '46R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '46R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '46R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '46R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '46R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '46R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '46R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '46R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '46R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '46R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '46R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_UST.SPAC_2_8_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '46R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '46W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '46W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '46W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '46W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '46W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '46W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '46W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '46W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '46W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '46W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '46W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '46W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '46W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '46W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '46W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '46W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '46W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '46W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '46W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '46W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '46W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '46W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '46W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '46W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '46W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '46W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '46W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '46W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '46W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '46W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '46W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '46W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '46W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '46W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.WRITE_UST.SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '46W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '46R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '46R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '46R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '46R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '46R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '46R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '46R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '46R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '46R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '46R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '46R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '46R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '46R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '46R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '46R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '46R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '46R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '46R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '46R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '46R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '46R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '46R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '46R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '46R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '46R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '46R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '46R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '46R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '46R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '46R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '46R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '46R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '46R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '46R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '46R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '46R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '46R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '46R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '46R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '46R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '46R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '46R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '46R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '46R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '46R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '46R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '46R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '46R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '46R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '46R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '46R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '46R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '46R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '46R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '46R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '46R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '46R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '46R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '46R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '46R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '46R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '46R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '46R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_46.READ_REG_COMM.SPAC_2_8_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_8_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '46R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '53R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '53R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '53R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '53R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '53R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '53R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '53R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '53R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '53R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '53R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '53R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '53R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '53R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '53R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '53R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '53R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '53R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '53R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '53R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '53R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '53R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '53R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '53R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '53R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '53R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '53R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '53R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '53R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '53R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '53R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '53R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '53R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '53R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '53R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '53R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '53R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '53R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '53R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '53R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '53R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '53R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '53R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '53R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '53R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '53R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '53R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '53R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '53R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '53R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '53R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '53R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '53R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '53R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '53R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '53R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '53R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '53R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '53R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '53R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '53R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '53R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '53R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '53R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '53R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '53R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '53R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '53W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '53W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '53W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '53W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '53W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '53W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '53W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '53W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '53W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '53W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '53W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '53W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '53W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '53W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '53W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '53W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '53W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '53W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '53W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '53W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '53W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '53W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '53W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '53W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '53W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '53W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '53W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '53W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '53W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '53W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '53W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '53W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '53W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '53W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '53W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '53W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '53W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '53W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '53W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '53W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '53W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.COMMANDS_ALL.SPAC_2_11_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '53W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '53R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '53R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '53R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '53R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '53R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '53R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '53R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '53R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '53R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '53R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '53R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '53R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '53R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '53R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '53R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '53R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '53R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '53R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '53R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '53R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '53R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_ALLOW_COMMANDS.SPAC_2_11_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '53W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_COMMAND_VKL.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '53W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.WRITE_COMMAND_VIKL.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '53W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '53R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '53R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '53R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '53R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '53R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '53R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_53.READS_OUTS_ALLOW.SPAC_2_11_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '53R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '52R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '52R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '52R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '52R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '52R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '52R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '52R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '52R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '52R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '52R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '52R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '52R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '52R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '52R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '52R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '52R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '52R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '52R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '52R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '52R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '52R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '52R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '52R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '52R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '52R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '52R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '52R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_INPUT_AND_OTPUT.SPAC_2_11_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '52R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '52R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '52R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '52R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_ST_EVENT.SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '52R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '52R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '52R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '52R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '52R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '52R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '52R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '52R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '52R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '52R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '52R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '52R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '52R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '52R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '52R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '52R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '52R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '52R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '52R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '52R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '52R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '52R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '52R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '52R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '52R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '52R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '52R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '52R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '52R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '52R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '52R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '52R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '52R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '52R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '52R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '52R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '52R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '52R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '52R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '52R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '52R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '52R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '52R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '52R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '52R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '52R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '52R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '52R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '52R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '52R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '52R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '52R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '52R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '52R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '52R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '52R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '52R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '52R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '52R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '52R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '52R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '52R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '52R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '52R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '52R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '52R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '52R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '52R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '52R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '52R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_UST.SPAC_2_11_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '52R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '52W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '52W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '52W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '52W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '52W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '52W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '52W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '52W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '52W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '52W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '52W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '52W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '52W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '52W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '52W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '52W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '52W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '52W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '52W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '52W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '52W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '52W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '52W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '52W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '52W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '52W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '52W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '52W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '52W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '52W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '52W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '52W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '52W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '52W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.WRITE_UST.SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '52W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '52R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '52R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '52R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '52R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '52R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '52R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '52R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '52R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '52R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '52R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '52R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '52R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '52R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '52R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '52R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '52R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '52R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '52R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '52R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '52R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '52R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '52R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '52R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '52R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '52R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '52R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '52R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '52R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '52R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '52R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '52R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '52R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '52R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '52R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '52R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '52R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '52R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '52R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '52R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '52R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '52R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '52R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '52R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '52R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '52R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '52R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '52R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '52R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '52R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '52R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '52R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '52R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '52R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '52R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '52R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '52R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '52R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '52R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '52R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '52R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '52R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '52R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '52R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_52.READ_REG_COMM.SPAC_2_11_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_11_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '52R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_TS1_DP';
		['ADDRESS']				= '65R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SS1_DP';
		['ADDRESS']				= '65R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SS2_DP';
		['ADDRESS']				= '65R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SS3_DP';
		['ADDRESS']				= '65R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_TS2_DP';
		['ADDRESS']				= '65R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_TS3_DP';
		['ADDRESS']				= '65R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_APV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_APV_DP';
		['ADDRESS']				= '65R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_VIKL_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_VIKL_DP';
		['ADDRESS']				= '65R0I9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '65R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '65R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP';
		['ADDRESS']				= '65R1I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[1]';
		['ADDRESS']				= '65R2I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[2]';
		['ADDRESS']				= '65R3I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[3]';
		['ADDRESS']				= '65R4I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[4]';
		['ADDRESS']				= '65R5I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[5]';
		['ADDRESS']				= '65R6I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[6]';
		['ADDRESS']				= '65R7I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD1_DP[7]';
		['ADDRESS']				= '65R8I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP';
		['ADDRESS']				= '65R1I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[1]';
		['ADDRESS']				= '65R2I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[2]';
		['ADDRESS']				= '65R3I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[4]';
		['ADDRESS']				= '65R5I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[5]';
		['ADDRESS']				= '65R6I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[6]';
		['ADDRESS']				= '65R7I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VHOD2_DP[7]';
		['ADDRESS']				= '65R8I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '65R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_NEISPRAVNOST_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_NEISPRAVNOST_DP';
		['ADDRESS']				= '65R1O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_COMAND_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_COMAND_DP';
		['ADDRESS']				= '65R8O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_RFK_VV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_RFK_VV_DP';
		['ADDRESS']				= '65R9O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP';
		['ADDRESS']				= '65R1O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[1]';
		['ADDRESS']				= '65R2O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '65R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[3]';
		['ADDRESS']				= '65R4O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[4]';
		['ADDRESS']				= '65R5O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[5]';
		['ADDRESS']				= '65R6O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[6]';
		['ADDRESS']				= '65R7O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[7]';
		['ADDRESS']				= '65R8O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E1_E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E1_E8';
		['ADDRESS']				= '65R0O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E11_E18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E11_E18';
		['ADDRESS']				= '65R0O156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E21_E26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E21_E26';
		['ADDRESS']				= '65R0O157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E31_E38'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_E31_E38';
		['ADDRESS']				= '65R0O158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_1E1_1E8';
		['ADDRESS']				= '65R1O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_2E1_2E8';
		['ADDRESS']				= '65R2O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_3E1_3E8';
		['ADDRESS']				= '65R3O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_4E1_4E8';
		['ADDRESS']				= '65R4O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_5E1_5E8';
		['ADDRESS']				= '65R5O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_6E1_6E8';
		['ADDRESS']				= '65R6O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_7E1_7E8';
		['ADDRESS']				= '65R7O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_8E1_8E8';
		['ADDRESS']				= '65R8O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_EVENT_9E1_9E7';
		['ADDRESS']				= '65R9O155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_UROV';
		['ADDRESS']				= '65R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_USKOR';
		['ADDRESS']				= '65R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '65R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_APV';
		['ADDRESS']				= '65R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '65R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '65R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '65R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '65R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '65R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '65R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '65R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '65R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E1';
		['ADDRESS']				= '65R1S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E2';
		['ADDRESS']				= '65R1S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E3';
		['ADDRESS']				= '65R1S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_L2210_TIME_E4';
		['ADDRESS']				= '65R1S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_UROV';
		['ADDRESS']				= '65W0S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_USKOR'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_USKOR';
		['ADDRESS']				= '65W0S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_ZASHC_SHIN';
		['ADDRESS']				= '65W0S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_APV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_APV';
		['ADDRESS']				= '65W0S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG1';
		['ADDRESS']				= '65W0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG2';
		['ADDRESS']				= '65W0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG3';
		['ADDRESS']				= '65W0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_COUNT_APV_CYCLE';
		['ADDRESS']				= '65W0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_COUNT_IMPULSE';
		['ADDRESS']				= '65W0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_SUMM_SW_SG4';
		['ADDRESS']				= '65W0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_1REG_CONF_VIH_RELE';
		['ADDRESS']				= '65W0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_2REG_CONF_VIH_RELE';
		['ADDRESS']				= '65W0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E1';
		['ADDRESS']				= '65W1S1';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E2';
		['ADDRESS']				= '65W1S2';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E3';
		['ADDRESS']				= '65W1S3';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_L2210_TIME_E4';
		['ADDRESS']				= '65W1S4';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIBOR_OTKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_VIBOR_OTKL';
		['ADDRESS']				= '65W1V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIBOR_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_VIBOR_VKL';
		['ADDRESS']				= '65W1V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU';
		['ADDRESS']				= '65W1V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OTMENIT_COMANDU'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_OTMENIT_COMANDU';
		['ADDRESS']				= '65W1V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_VIPOLNIT_COMANDU_SHIROK';
		['ADDRESS']				= '65W0V251';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_OTMENIT_COMANDU_SHIROK';
		['ADDRESS']				= '65W0V252';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND';
		['ADDRESS']				= '65W0V101';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SBROS_VIH_RELE_IND_BUFFER';
		['ADDRESS']				= '65W0V102';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '65W0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '65W0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '65W0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '65W0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '65W1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '65W2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '65W3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '65W4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '65W5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '65W6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '65W7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '65W8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '65W9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OTKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_OTKR_PAROL';
		['ADDRESS']				= '65W0V160';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_ZAKR_PAROL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_ZAKR_PAROL';
		['ADDRESS']				= '65W0V161';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_TESTS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_TESTS';
		['ADDRESS']				= '65W0V167';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '65W0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.COMMANDS_ALL.SPAC_2_17_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '65W0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_INDIC_ZASHC'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_INDIC_ZASHC';
		['ADDRESS']				= '65R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_BUFFER'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_BUFFER';
		['ADDRESS']				= '65R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_155';
		['ADDRESS']				= '65R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_156';
		['ADDRESS']				= '65R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_157';
		['ADDRESS']				= '65R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT0_158';
		['ADDRESS']				= '65R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT1';
		['ADDRESS']				= '65R1V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT2';
		['ADDRESS']				= '65R2V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT3';
		['ADDRESS']				= '65R3V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT4';
		['ADDRESS']				= '65R4V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT5';
		['ADDRESS']				= '65R5V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT6';
		['ADDRESS']				= '65R6V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT7';
		['ADDRESS']				= '65R7V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT8';
		['ADDRESS']				= '65R8V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_REG_MASK_EVENT9';
		['ADDRESS']				= '65R9V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_ERROR_NUM';
		['ADDRESS']				= '65R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_ADDRESS';
		['ADDRESS']				= '65R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_OBMEN_SPEED';
		['ADDRESS']				= '65R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_TIME_OTKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_TIME_OTKL_VKL';
		['ADDRESS']				= '65R0V202';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_TIME_VKL_VKL'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_TIME_VKL_VKL';
		['ADDRESS']				= '65R0V203';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_L2210_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_PO_VERSION';
		['ADDRESS']				= '65R0V205';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_ALLOW_COMMANDS.SPAC_2_17_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '65W0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_COMMAND_VKL.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '65W3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.WRITE_COMMAND_VIKL.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '65W2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_RPO_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_RPO_DP';
		['ADDRESS']				= '65R0I11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_RPV_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_RPV_DP';
		['ADDRESS']				= '65R0I10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_UPR_BLOCK_VIHOD1_DP';
		['ADDRESS']				= '65R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[2]';
		['ADDRESS']				= '65R2O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD1_DP[3]';
		['ADDRESS']				= '65R3O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]';
		['ADDRESS']				= '65R3O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_65.READS_OUTS_ALLOW.SPAC_2_17_803.RAW_SPAC_L2210_MU_DU_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_L2210_MU_DU_DP';
		['ADDRESS']				= '65R4I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_IL1_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_IL1_AI';
		['ADDRESS']				= '64R0I1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_IL2_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_IL2_AI';
		['ADDRESS']				= '64R0I2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_IL3_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_IL3_AI';
		['ADDRESS']				= '64R0I3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_I0_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I0_AI';
		['ADDRESS']				= '64R0I4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_MAX_DIF_L123_AI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_MAX_DIF_L123_AI';
		['ADDRESS']				= '64R0I5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_BS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_BS1_DP';
		['ADDRESS']				= '64R0I6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_BS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_BS2_DP';
		['ADDRESS']				= '64R0I7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_BS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_BS3_DP';
		['ADDRESS']				= '64R0I8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I1_START_DP';
		['ADDRESS']				= '64R0O1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I1_ACT_DP';
		['ADDRESS']				= '64R0O2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I2_START_DP';
		['ADDRESS']				= '64R0O3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I2_ACT_DP';
		['ADDRESS']				= '64R0O4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I3_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I3_START_DP';
		['ADDRESS']				= '64R0O5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I3_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I3_ACT_DP';
		['ADDRESS']				= '64R0O6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_1_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_1_START_DP';
		['ADDRESS']				= '64R0O7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_1_ACT_DP';
		['ADDRESS']				= '64R0O8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_2_START_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_2_START_DP';
		['ADDRESS']				= '64R0O9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_I0_2_ACT_DP';
		['ADDRESS']				= '64R0O10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_STEP_DELTA_I_ACT_DP';
		['ADDRESS']				= '64R0O11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_TS1_DP';
		['ADDRESS']				= '64R0O12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS1_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_SS1_DP';
		['ADDRESS']				= '64R0O13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_SS2_DP';
		['ADDRESS']				= '64R0O14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_SS3_DP';
		['ADDRESS']				= '64R0O15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS2_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_TS2_DP';
		['ADDRESS']				= '64R0O16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS3_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_TS3_DP';
		['ADDRESS']				= '64R0O17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_TS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_TS4_DP';
		['ADDRESS']				= '64R0O18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_SS4_DP'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_SS4_DP';
		['ADDRESS']				= '64R0O19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_INPUT_AND_OTPUT.SPAC_2_17_803.RAW_SPAC_4D28_RESOL_SS1_TS4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_RESOL_SS1_TS4';
		['ADDRESS']				= '64R0O41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E1_12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E1_12';
		['ADDRESS']				= '64R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E13_E24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E13_E24';
		['ADDRESS']				= '64R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E25_E32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E25_E32';
		['ADDRESS']				= '64R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_ST_EVENT.SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E33_E42'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_REG_EVENT_E33_E42';
		['ADDRESS']				= '64R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S1';
		['ADDRESS']				= '64R0S1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S2';
		['ADDRESS']				= '64R0S2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S3';
		['ADDRESS']				= '64R0S3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S4';
		['ADDRESS']				= '64R0S4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S5';
		['ADDRESS']				= '64R0S5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S6';
		['ADDRESS']				= '64R0S6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S7';
		['ADDRESS']				= '64R0S7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S8';
		['ADDRESS']				= '64R0S8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S9';
		['ADDRESS']				= '64R0S9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S10';
		['ADDRESS']				= '64R0S10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S11';
		['ADDRESS']				= '64R0S11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S12'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S12';
		['ADDRESS']				= '64R0S12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S13'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S13';
		['ADDRESS']				= '64R0S13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S14'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S14';
		['ADDRESS']				= '64R0S14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S15'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S15';
		['ADDRESS']				= '64R0S15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S16'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S16';
		['ADDRESS']				= '64R0S16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S17'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S17';
		['ADDRESS']				= '64R0S17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S18'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S18';
		['ADDRESS']				= '64R0S18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S19'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S19';
		['ADDRESS']				= '64R0S19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S20'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S20';
		['ADDRESS']				= '64R0S20';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S21'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S21';
		['ADDRESS']				= '64R0S21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S22'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S22';
		['ADDRESS']				= '64R0S22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S23'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S23';
		['ADDRESS']				= '64R0S23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S24'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S24';
		['ADDRESS']				= '64R0S24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S25'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S25';
		['ADDRESS']				= '64R0S25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S26'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S26';
		['ADDRESS']				= '64R0S26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S27'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S27';
		['ADDRESS']				= '64R0S27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S28'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S28';
		['ADDRESS']				= '64R0S28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S29'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S29';
		['ADDRESS']				= '64R0S29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S30'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S30';
		['ADDRESS']				= '64R0S30';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S31'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S31';
		['ADDRESS']				= '64R0S31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S32'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S32';
		['ADDRESS']				= '64R0S32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S33'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S33';
		['ADDRESS']				= '64R0S33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_S34'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_S34';
		['ADDRESS']				= '64R0S34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I1';
		['ADDRESS']				= '64R0S41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I1';
		['ADDRESS']				= '64R0S42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I2';
		['ADDRESS']				= '64R0S43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I2';
		['ADDRESS']				= '64R0S44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I3';
		['ADDRESS']				= '64R0S45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I3';
		['ADDRESS']				= '64R0S46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I0_1';
		['ADDRESS']				= '64R0S47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '64R0S48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_I0_2';
		['ADDRESS']				= '64R0S49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '64R0S50';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_I_START_dI';
		['ADDRESS']				= '64R0S51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_dI';
		['ADDRESS']				= '64R0S52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF1';
		['ADDRESS']				= '64R0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF2';
		['ADDRESS']				= '64R0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF3';
		['ADDRESS']				= '64R0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF4';
		['ADDRESS']				= '64R0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF5';
		['ADDRESS']				= '64R0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF6';
		['ADDRESS']				= '64R0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF7';
		['ADDRESS']				= '64R0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGF8';
		['ADDRESS']				= '64R0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB1';
		['ADDRESS']				= '64R0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB2';
		['ADDRESS']				= '64R0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGB3';
		['ADDRESS']				= '64R0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR1';
		['ADDRESS']				= '64R0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR2';
		['ADDRESS']				= '64R0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR3';
		['ADDRESS']				= '64R0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR4';
		['ADDRESS']				= '64R0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR5';
		['ADDRESS']				= '64R0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR6';
		['ADDRESS']				= '64R0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR7';
		['ADDRESS']				= '64R0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR8';
		['ADDRESS']				= '64R0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR9';
		['ADDRESS']				= '64R0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR10';
		['ADDRESS']				= '64R0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '64R0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_4D28_SUMM_SGR11';
		['ADDRESS']				= '64R0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_UST.SPAC_2_17_803.RAW_SPAC_READ_MAIN_RES_UST'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_READ_MAIN_RES_UST';
		['ADDRESS']				= '64R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I1';
		['ADDRESS']				= '64W0S41';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I1';
		['ADDRESS']				= '64W0S42';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I2';
		['ADDRESS']				= '64W0S43';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I2';
		['ADDRESS']				= '64W0S44';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I3';
		['ADDRESS']				= '64W0S45';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I3';
		['ADDRESS']				= '64W0S46';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I0_1';
		['ADDRESS']				= '64W0S47';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_1';
		['ADDRESS']				= '64W0S48';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_I0_2';
		['ADDRESS']				= '64W0S49';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_I0_2';
		['ADDRESS']				= '64W0S50';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_I_START_dI';
		['ADDRESS']				= '64W0S51';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_dI';
		['ADDRESS']				= '64W0S52';
		['DECIMAL_PLACE']		= 2;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF1';
		['ADDRESS']				= '64W0S53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF2';
		['ADDRESS']				= '64W0S54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF3';
		['ADDRESS']				= '64W0S55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF4';
		['ADDRESS']				= '64W0S56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF5';
		['ADDRESS']				= '64W0S57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF6';
		['ADDRESS']				= '64W0S58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF7';
		['ADDRESS']				= '64W0S59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGF8';
		['ADDRESS']				= '64W0S60';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB1';
		['ADDRESS']				= '64W0S61';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB2';
		['ADDRESS']				= '64W0S62';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGB3';
		['ADDRESS']				= '64W0S63';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR1';
		['ADDRESS']				= '64W0S64';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR2';
		['ADDRESS']				= '64W0S65';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR3';
		['ADDRESS']				= '64W0S66';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR4';
		['ADDRESS']				= '64W0S67';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR5';
		['ADDRESS']				= '64W0S68';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR6';
		['ADDRESS']				= '64W0S69';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR7';
		['ADDRESS']				= '64W0S70';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR8';
		['ADDRESS']				= '64W0S71';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR9';
		['ADDRESS']				= '64W0S72';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR10';
		['ADDRESS']				= '64W0S73';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_SUMM_SGR11';
		['ADDRESS']				= '64W0S74';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.WRITE_UST.SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_WRITE_4D28_TIME_ACT_UROV';
		['ADDRESS']				= '64W0S121';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_Imax_last_15min'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_Imax_last_15min';
		['ADDRESS']				= '64R0V1';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I1';
		['ADDRESS']				= '64R0V2';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I2';
		['ADDRESS']				= '64R0V3';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I0_1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I0_1';
		['ADDRESS']				= '64R0V4';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I0_2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_I0_2';
		['ADDRESS']				= '64R0V5';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_dI'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_NUM_START_dI';
		['ADDRESS']				= '64R0V6';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ACT_STEP1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_ACT_STEP1';
		['ADDRESS']				= '64R0V7';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ACT_STEP2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_ACT_STEP2';
		['ADDRESS']				= '64R0V8';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_CODE_IN_DISPLAY'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_CODE_IN_DISPLAY';
		['ADDRESS']				= '64R0V9';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_Imax_15m'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_Imax_15m';
		['ADDRESS']				= '64R0V10';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val';
		['ADDRESS']				= '64R0V11';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[1]';
		['ADDRESS']				= '64R0V21';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[2]';
		['ADDRESS']				= '64R0V31';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[3]';
		['ADDRESS']				= '64R0V41';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L1_last_5val[4]';
		['ADDRESS']				= '64R0V51';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val';
		['ADDRESS']				= '64R0V12';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[1]';
		['ADDRESS']				= '64R0V22';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[2]';
		['ADDRESS']				= '64R0V32';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[3]';
		['ADDRESS']				= '64R0V42';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L2_last_5val[4]';
		['ADDRESS']				= '64R0V52';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val';
		['ADDRESS']				= '64R0V13';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[1]';
		['ADDRESS']				= '64R0V23';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[2]';
		['ADDRESS']				= '64R0V33';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[3]';
		['ADDRESS']				= '64R0V43';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_L3_last_5val[4]';
		['ADDRESS']				= '64R0V53';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val';
		['ADDRESS']				= '64R0V14';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[1]';
		['ADDRESS']				= '64R0V24';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[2]';
		['ADDRESS']				= '64R0V34';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[3]';
		['ADDRESS']				= '64R0V44';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_I_0_last_5val[4]';
		['ADDRESS']				= '64R0V54';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val';
		['ADDRESS']				= '64R0V15';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[1]';
		['ADDRESS']				= '64R0V25';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[2]';
		['ADDRESS']				= '64R0V35';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[3]';
		['ADDRESS']				= '64R0V45';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_dI_last_5val[4]';
		['ADDRESS']				= '64R0V55';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val';
		['ADDRESS']				= '64R0V16';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[1]';
		['ADDRESS']				= '64R0V26';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[2]';
		['ADDRESS']				= '64R0V36';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[3]';
		['ADDRESS']				= '64R0V46';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I1_last_5val[4]';
		['ADDRESS']				= '64R0V56';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val';
		['ADDRESS']				= '64R0V17';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[1]';
		['ADDRESS']				= '64R0V27';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[2]';
		['ADDRESS']				= '64R0V37';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[3]';
		['ADDRESS']				= '64R0V47';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I2_last_5val[4]';
		['ADDRESS']				= '64R0V57';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val';
		['ADDRESS']				= '64R0V18';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[1]';
		['ADDRESS']				= '64R0V28';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[2]';
		['ADDRESS']				= '64R0V38';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[3]';
		['ADDRESS']				= '64R0V48';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_1_last_5val[4]';
		['ADDRESS']				= '64R0V58';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val';
		['ADDRESS']				= '64R0V19';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[1]';
		['ADDRESS']				= '64R0V29';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[2]';
		['ADDRESS']				= '64R0V39';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[3]';
		['ADDRESS']				= '64R0V49';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_DURABILITY_I0_2_last_5val[4]';
		['ADDRESS']				= '64R0V59';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_REMOTE_CONTROL_SETTING';
		['ADDRESS']				= '64R0V150';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_MZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_MZ';
		['ADDRESS']				= '64R0V155';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OZ'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OZ';
		['ADDRESS']				= '64R0V156';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT1';
		['ADDRESS']				= '64R0V157';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_MASK_EVENT_OUTPUT2';
		['ADDRESS']				= '64R0V158';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ERROR_NUM'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_ERROR_NUM';
		['ADDRESS']				= '64R0V169';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_ADDRESS'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_ADDRESS';
		['ADDRESS']				= '64R0V200';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_OBMEN_SPEED'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_OBMEN_SPEED';
		['ADDRESS']				= '64R0V201';
		['DECIMAL_PLACE']		= 0;
									};
	['Device_64.READ_REG_COMM.SPAC_2_17_803.RAW_SPAC_4D28_PO_VERSION'] = {
		['SIGNAL_NAME']			= 'SPAC_2_17_803.RAW_SPAC_4D28_PO_VERSION';
		['ADDRESS']				= '64R0V205';
		['DECIMAL_PLACE']		= 0;
									};
}

dofile('SPABUS.lua')