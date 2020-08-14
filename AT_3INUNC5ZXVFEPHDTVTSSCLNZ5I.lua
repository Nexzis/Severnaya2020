local cat = 29000 --категория событий
local Check_signal_gsu = 'USOGSU_A1_FAULT.Connect'
local Check_signal_ktp1 = 'USOKTP1_A1_FAULT.Connect'
--local Check_signal_ktp1_2 = 'USOKTP1_A2_FAULT.Connect'
local Check_signal_ktp2 = 'USOKTP2_A1_FAULT.Connect'
--local Check_signal_ktp2_2 = 'USOKTP2_A2_FAULT.Connect'
local Check_signal_usoe = 'USOE_A1_FAULT.Connect'
local Check_signal_sauvos= 'SAUVOS_A1_FAULT.Connect'
local Check_signal_usok = 'USOK_A1_FAULT.Connect'
local Check_signal_usop = 'USOP_A1_FAULT.Connect'

--таблица сигналов (src - источник сообщения, msg - текст сообщения, screen_id - индентификатор для перехода к мнемосхеме из журнала обытий)

 local MSG_TABLE_gsu = {  
         
	-- DI

              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB1_BAT_FL_1.reliabilityFlag']               =  {src='Сервер',  msg='МСС-7. Неисправность зарядного устройства 220В АБ1 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB1_SYSPSAC_FL_1.reliabilityFlag']               =  {src='Сервер',  msg='МСС-7. Отказ системы питания переменного тока 220В АБ1 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB1_VDC_LOW_1.reliabilityFlag']               =  {src='Сервер',  msg='МСС-7. Низкое напряжение постоянного тока 220В АБ1 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB2_BAT_FL_1.reliabilityFlag']               =  {src='Сервер',  msg='МСС-7. Неисправность зарядного устройства 220В АБ2 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB2_SYSPSAC_FL_1.reliabilityFlag']               =  {src='Сервер',  msg='МСС-7. Отказ системы питания переменного тока 220В АБ2 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB2_VDC_LOW_1.reliabilityFlag']               =  {src='Сервер',  msg='МСС-7. Низкое напряжение постоянного тока 220 В АБ2 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},    
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_1.reliabilityFlag']               =  {src='Сервер',  msg='УСО МСС-7. Контроль основного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_2.reliabilityFlag']               =  {src='Сервер',  msg='УСО МСС-7. Контроль резервного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_3.reliabilityFlag']               =  {src='Сервер',  msg='УСО МСС-7. Контроль исправности разрядников НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_4.reliabilityFlag']               =  {src='Сервер',  msg='УСО МСС-7. Вход DC (наличие напряжения на входе инвертора) НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_5.reliabilityFlag']        =  {src='Сервер',  msg='УСО МСС-7. Авария (инвертор) НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_6.reliabilityFlag']           =  {src='Сервер',  msg='УСО МСС-7. Автоматы питания включены НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_7.reliabilityFlag']          =  {src='Сервер',  msg='УСО МСС-7. Двери МСС-7 открыты НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_8.reliabilityFlag']           =  {src='Сервер',  msg='УСО МСС-7. Исправность осн. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_9.reliabilityFlag']        =  {src='Сервер',  msg='УСО МСС-7. Исправность рез. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_RES03.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_RES04.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_RES05.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_RES06.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_RES07.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_RES08.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_DIAGN_RES09.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},

              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_1Q_OFF.reliabilityFlag']        =  {src='Сервер',  msg='МСС-7. Выключатель 1Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_1Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='МСС-7. Выключатель 1Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_2Q_OFF.reliabilityFlag']          =  {src='Сервер',  msg='МСС-7. Выключатель 2Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_2Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='МСС-7. Выключатель 2Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_Q_AvOFF.reliabilityFlag']        =  {src='Сервер',  msg='МСС-7. Аварийное отключение выключателей 1Q, 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_AVR_OFF.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. АВР включен НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_X_PCONT.reliabilityFlag']             =  {src='Сервер',  msg='МСС-7. Положение переключателя «Управления от АСУ» НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_X_RES10.reliabilityFlag']             =  {src='Сервер',  msg='МСС-7. УСО МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_X_RES11.reliabilityFlag']             =  {src='Сервер',  msg='МСС-7. УСО МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB1_VDC_LOW.reliabilityFlag']           =  {src='Сервер',  msg='МСС-7. Низкое напряжение постоянного тока 220В АБ1 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB1_SYSPSAC_FL.reliabilityFlag']          =  {src='Сервер',  msg='МСС-7. Отказ системы питания переменного тока 220В АБ1 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB1_BAT_FL.reliabilityFlag']           =  {src='Сервер',  msg='МСС-7. Неисправность зарядного устройства 220В АБ1 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB2_VDC_LOW.reliabilityFlag']        =  {src='Сервер',  msg='МСС-7. Низкое напряжение постоянного тока 220 В АБ2 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB2_SYSPSAC_FL.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Отказ системы питания переменного тока 220В АБ2 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_AB2_BAT_FL.reliabilityFlag']       =  {src='Сервер',  msg='МСС-7. Неисправность зарядного устройства 220В АБ2 НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DI_X_RES12.reliabilityFlag']     =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},

			  } 
  

 local MSG_TABLE_ktp1 = {  

	-- DI
	
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_AVG_OFF.reliabilityFlag']          =  {src='Сервер',  msg='КТП 1. АДЭС. АВГ отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_AVG_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. АДЭС. АВГ включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_DG_FL.reliabilityFlag']            =  {src='Сервер',  msg='КТП 1. АДЭС. Неисправность ДГ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_DG_OL.reliabilityFlag']            =  {src='Сервер',  msg='КТП 1. АДЭС. Перегрузка ДГ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_DG_RD.reliabilityFlag']            =  {src='Сервер',  msg='КТП 1. АДЭС. Готовность ДГ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_DG_WK.reliabilityFlag']            =  {src='Сервер',  msg='КТП 1. АДЭС. Работа НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_FL.reliabilityFlag']               =  {src='Сервер',  msg='КТП 1. АДЭС. Неисправность НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_ADES_OL.reliabilityFlag']               =  {src='Сервер',  msg='КТП 1. АДЭС. Перегрузка НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_1.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Контроль основного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_2.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Контроль резервного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_3.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Контроль исправности разрядников НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_4.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Вход DC (наличие напряжения на входе инвертора) НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_5.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Авария (инвертор) НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_6.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Автоматы питания включены НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_7.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Двери УСО КТП №8516 открыты НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_8.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Исправность осн. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_9.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 1. Исправность рез. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_RES06.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_RES07.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_RES09.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_RES10.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_RES11.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_RES12.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_DIAGN_RES08.reliabilityFlag']           =  {src='Сервер',  msg='КТП 1. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_KTP1_FL.reliabilityFlag']               =  {src='Сервер',  msg='КТП №8516. Неисправность КТП №8516 НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_AvOFF.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.01). Аварийное отключение выключателя 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_FL.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.01). Неисправность выключателя 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_OFF.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8516 (пан.01). Выключатель 1Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.01). Выключатель 1Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_SQ_IN.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.01). Тележка выключателя 1Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'}, 
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_SQ_OUT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.01). Тележка выключателя 1Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN02_4Q_AVR_FL.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.02). Отказ АВР АВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN02_4Q_AVR_FLRT.reliabilityFlag']     =  {src='Сервер',  msg='КТП №8516 (пан.02). Отказ возврата АВР АВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN02_4Q_AVR_OFF.reliabilityFlag']      =  {src='Сервер',  msg='КТП №8516 (пан.02). АВР АВ отключена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN02_4Q_AVR_ON.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.02). АВР АВ включена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN02_4Q_AVR_RT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.02). Возврат АВР АВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN02_4Q_AVR_WK.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.02). АВР АВ сработало НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_AvOFF.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.03). Аварийное отключение выключателя 4Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_FL.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.03). Неисправность выключателя 4Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_OFF.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8516 (пан.03). Выключатель 4Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.03). Выключатель 4Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_SQ_IN.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.03). Тележка выключателя 4Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_SQ_OUT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.03). Тележка выключателя 4Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_6Q_OFF.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8516 (пан.03). Выключатель 6Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_6Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.03). Выключатель 6Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_AvOFF.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.07). Аварийное отключение выключателя 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_FL.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.07). Неисправность выключателя 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_OFF.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8516 (пан.07). Выключатель 2Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.07). Выключатель 2Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_SQ_IN.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.07). Тележка выключателя 2Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_SQ_OUT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.07). Тележка выключателя 2Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN08_3Q_AVR_FL.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.08). Отказ АВР СВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN08_3Q_AVR_FLRT.reliabilityFlag']     =  {src='Сервер',  msg='КТП №8516 (пан.08). Отказ возврата АВР СВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN08_3Q_AVR_OFF.reliabilityFlag']      =  {src='Сервер',  msg='КТП №8516 (пан.08). АВР СВ отключена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN08_3Q_AVR_ON.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.08). АВР СВ включена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN08_3Q_AVR_RT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.08). Возврат АВР СВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN08_3Q_AVR_WK.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.08). АВР СВ сработало НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_AvOFF.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.09). Аварийное отключение выключателя 3Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_FL.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.09). Неисправность выключателя 3Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_OFF.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8516 (пан.09). Выключатель 3Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.09). Выключатель 3Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_SQ_IN.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.09). Тележка выключателя 3Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_SQ_OUT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.09). Тележка выключателя 3Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_AvOFF.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.13). Аварийное выключение выключателя 5Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_OFF.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8516 (пан.13). Выключатель 5Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.13). Выключатель 5Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_SQ_IN.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8516 (пан.13). Тележка выключателя 5Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_SQ_OUT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8516 (пан.13). Тележка выключателя 5Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_TR1_T_OL.reliabilityFlag']              =  {src='Сервер',  msg='КТП №8516. Температурная перегрузка трансформатора 1 НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_TR2_T_OL.reliabilityFlag']              =  {src='Сервер',  msg='КТП №8516. Температурная перегрузка трансформатора 2 НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DI_X_POS_CONT.reliabilityFlag']            =  {src='Сервер',  msg='КТП №8516. Положение выключателя "управления от АСУ Э" НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},


			  } 


local MSG_TABLE_ktp2 = { 

	-- DI 

              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_1.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Контроль основного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_2.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Контроль резервного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_3.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Контроль исправности разрядников НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_4.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Вход DC (наличие напряжения на входе инвертора) НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_5.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Авария (инвертор) НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_6.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Автоматы питания включены НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_7.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Двери КТП №8524 открыты НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_8.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Исправность осн. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_9.reliabilityFlag']               =  {src='Сервер',  msg='УСО КТП 2. Исправность рез. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_RES05.reliabilityFlag']               =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_RES06.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_RES07.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_RES08.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_RES09.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_RES10.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'}, 
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_DIAGN_RES11.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_OFF.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.01). Выключатель 1Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_ON.reliabilityFlag']     =  {src='Сервер',  msg='КТП №8524 (пан.01). Выключатель 1Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_FL.reliabilityFlag']      =  {src='Сервер',  msg='КТП №8524 (пан.01). Неисправность выключателя 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_AvOFF.reliabilityFlag']       =  {src='Сервер',  msg='УСО Аварийное отключение выключателя 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_SQ_OUT.reliabilityFlag']       =  {src='Сервер',  msg='УСО КТП КТП №8524 (пан.01). Тележка выключателя 1Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_SQ_IN.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.01). Тележка выключателя 1Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_OFF.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524 (пан.03). Выключатель 4Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.03). Выключатель 4Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_FL.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8524(пан.03). Неисправность выключателя 4Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_SQ_OUT.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.03). Тележка выключателя 4Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_SQ_IN.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524 (пан.03). Тележка выключателя 4Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_OFF.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.07). Выключатель 2Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_ON.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8524 (пан.07). Выключатель 2Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_FL.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.07). Неисправность выключателя 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_AvOFF.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524 (пан.07). Аварийное отключение выключателя 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_SQ_OUT.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.07). Тележка выключателя 2Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_SQ_IN.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8524 (пан.07). Тележка выключателя 2Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.09). Выключатель 3Q отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_ON.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524 (пан.09). Выключатель 3Q включен НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_FL.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.09). Неисправность выключателя 3Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_AvOFF.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.09). Аварийное отключение выключателя 3Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_SQ_OUT.reliabilityFlag']     =  {src='Сервер',  msg='КТП №8524 (пан.09). Тележка выключателя 3Q выкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_SQ_IN.reliabilityFlag']      =  {src='Сервер',  msg='КТП №8524 (пан.09). Тележка выключателя 3Q вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN08_3Q_AVR_OFF.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.08). АВР СВ отключена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN08_3Q_AVR_ON.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.08). АВР СВ включена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN08_3Q_AVR_FL.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.08). Отказ АВР СВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN08_3Q_AVR_WK.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524 (пан.08). АВР СВ сработало НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN08_3Q_AVR_RT.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.08). Возврат АВР СВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN08_3Q_AVR_FLRT.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8524 (пан.08). Отказ возврата АВР СВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN02_4Q_AVR_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.02). АВР АВ отключена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN02_4Q_AVR_ON.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524 (пан.02). АВР АВ включена НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN02_4Q_AVR_FL.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524 (пан.02). Отказ АВР АВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN02_4Q_AVR_WK.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524 (пан.02). АВР АВ сработало НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN02_4Q_AVR_RT.reliabilityFlag']          =  {src='Сервер',  msg='КТП №8524 (пан.02). Возврат АВР АВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_PAN02_4Q_AVR_FLRT.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.02). Отказ возврата АВР АВ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_KTP2_FL.reliabilityFlag']        =  {src='Сервер',  msg='КТП №8524. Неисправность КТП НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_PCONT.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Положение выключателя «управления от АСУ Э» НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_TR1_T_OL.reliabilityFlag']              =  {src='Сервер',  msg='КТП №8524. Температурная перегрузка трансформатора 1 НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_TR2_T_OL.reliabilityFlag']              =  {src='Сервер',  msg='КТП №8524. Температурная перегрузка трансформатора 2 НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_SHUOT_LOWCURRESIST.reliabilityFlag']            =  {src='Сервер',  msg='КТП №8524. Снижение сопротивления изоляции оперативного тока НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_SHUOT_AB_OFF.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. ШУОТ Отключение АБ НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES12.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES13.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES14.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES15.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES16.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES17.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES18.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES19.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES20.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES21.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES22.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES23.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES24.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES25.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES26.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES27.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES28.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES29.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES30.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES31.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES32.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES33.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DI_X_RES34.reliabilityFlag']       =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},

			  } 

 local MSG_TABLE_sauvos = {

	-- DI
			  ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_DIAGN_1.reliabilityFlag']      =  {src='Сервер',  msg='САУ ВОС. Контроль основного питания ~220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_DIAGN_2.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Исправность разрядника НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_DIAGN_3.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Автоматы питания включены НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_DIAGN_4.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Двери САУ ВОС открыты НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_DIAGN_5.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Исправность ИП=24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_DIAGN_6.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Исправность ИП=24В внешних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_DIAGN_7.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Авария ИБП НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_CMR_FULL.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Емкость смешения реагентов наполнена НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_H1_ON.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Насос Н1 включен НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_H1_DRYRUN.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Сухой ход насоса Н1 НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_H1_FL.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Авария насоса Н1 НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_CA_FULL.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Емкость аэрационная наполнена НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_H2_ON.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Насос Н2 включен НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_H2_DRYRUN.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Сухой ход насоса Н2 аварийно высокое НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_H2_FL.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Авария насоса Н2 НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES01.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_ART2_H_ON.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Насос артскважины №2 в включен НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_MCONT.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Ручное управление НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_ACONT.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Автоматическое управление НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_H_OL.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Перегрузка насоса НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_DRYRUN.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Сухой ход НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_PS_NORMAL.reliabilityFlag']    =  {src='Сервер',  msg='ВОС. Питание в норме НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES02.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES03.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES04.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES05.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES06.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES07.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES08.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES09.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES10.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DI_X_RES11.reliabilityFlag']    =  {src='Сервер',  msg='САУ ВОС. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'VOS'},
  
			  } 
  


 local MSG_TABLE_usoe = {              

	-- DI

              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_1.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Контроль основного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_2.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Контроль резервного питания =220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_3.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Контроль исправности разрядников НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_4.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Вход DC (наличие напряжения на входе инвертора) НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_5.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Авария (инвертор) НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_6.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Автоматы питания включены НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_7.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Двери открыты НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_8.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Исправность осн. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_9.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Исправность рез. ИП =24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_RES02.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_RES03.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_RES04.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_RES05.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_RES06.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_RES07.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_DIAGN_RES08.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
     
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_1_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.1. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_2_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.2. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_3_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.3. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_4_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.4. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_5_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.5. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_6_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.6. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_7_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.7. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_8_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.8. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_10_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.10. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_11_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.11. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_12_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.12. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_13_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.13. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_1_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.1. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_2_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.2. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_3_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.3. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_4_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.4. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_6_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.6. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_8_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.8. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_9_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.9. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_10_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ. 2.10. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_11_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ. 2.11. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
			  ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_12_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ. 2.12. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_13_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.13. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_14_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.14. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_15_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.15. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_16_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.16. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_17_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.17. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_18_SQ_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.18. тележка вкачена НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},

              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_1_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.1. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_2_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.2. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_3_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.3. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_4_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.4. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_5_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.5. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_6_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.6. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_7_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.7. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_8_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.8. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_11_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.11. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_12_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.12. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_13_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.1.13. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_2_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.2. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_3_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.3. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_6_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.6. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_8_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.8. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_9_QN_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.9. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_10_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.10. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_11_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.11. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_12_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.12. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_13_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.13. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_14_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.14. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_15_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.15. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_16_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.16. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_17_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.17. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU2_18_QN_ON.reliabilityFlag']       =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ.2.18. 3аземляющий нож включён НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},

              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_13_AVR_OFF.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ. 1.13, Положения ключа, АВР отключено НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_KRU1_13_AVR_ON.reliabilityFlag']        =  {src='Сервер',  msg='ЗРУ-10 кВ. ЯЧ. 1.13, Положения ключа, АВР включено НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_1_QF_PS_OFF.reliabilityFlag']        =  {src='Сервер',  msg='УКП 1. Автомат питания УКП-1 отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_1_QF_PS_ON.reliabilityFlag']        =  {src='Сервер',  msg='УКП 1. Автомат питания УКП-1 включен НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_1_RV_OFF.reliabilityFlag']        =  {src='Сервер',  msg='УКП 1. Нет выпрямленного напряжения УКП-1 НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_1_RV_ON.reliabilityFlag']        =  {src='Сервер',  msg='УКП 1. Есть выпрямленное напряжения УКП-1 НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_1_FU_BL.reliabilityFlag']        =  {src='Сервер',  msg='УКП 1. Перегорания предохранителей =220 В НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_1_L_BR.reliabilityFlag']        =  {src='Сервер',  msg='УКП 1. Обрыв фазы НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_2_QF_PS_OFF.reliabilityFlag']        =  {src='Сервер',  msg='УКП 2. Автомат питания отключен НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_2_QF_PS_ON.reliabilityFlag']        =  {src='Сервер',  msg='УКП 2. Автомат питания включен НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_2_RV_OFF.reliabilityFlag']        =  {src='Сервер',  msg='УКП 2. Нет выпрямленного напряжения УКП-2 НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_2_RV_ON.reliabilityFlag']        =  {src='Сервер',  msg='УКП 2. Есть выпрямленное напряжения УКП-2 НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_2_FU_BL.reliabilityFlag']        =  {src='Сервер',  msg='УКП 2. Перегорания предохранителей =220 В НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_UKP_2_L_BR.reliabilityFlag']        =  {src='Сервер',  msg='УКП 2. Обрыв фазы НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},

              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_OFF.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Отключение НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_EN_FL.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Неисправность эл. сети НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_BAT_V_LOW.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Низкое напряжения батареи НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_BAT_CIR_FL.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Неисправность цепи батареи НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_SC_POS.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Замыкание на землю «+» НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_SC_NEG.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Замыкание на землю «-» НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_QF_WK.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Сработал автомат НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_DI_SHUOT_BAT_MODE.reliabilityFlag']        =  {src='Сервер',  msg='ШУОТ КРУ-10 кВ. Батарейный режим потребителя НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},

              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES09.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES10.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES11.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES12.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES13.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES14.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES15.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES16.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES17.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES18.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES19.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES20.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES21.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES22.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES23.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES24.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES25.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES26.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES27.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES28.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_DI_X_RES29.reliabilityFlag']        =  {src='Сервер',  msg='УСО Э. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},

			  } 




 local MSG_TABLE_usok = {

	-- DI
			  ['PLC_GSP_SEV_KSSEV_E_USOK_DI_DIAGN_1.reliabilityFlag']    =  {src='Сервер',  msg='УСО К. Контроль основного питания ~220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_DIAGN_2.reliabilityFlag']    =  {src='Сервер',  msg='УСО К. Исправность разрядника НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_DIAGN_3.reliabilityFlag']    =  {src='Сервер',  msg='УСО К. Автоматы питания включены НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_DIAGN_4.reliabilityFlag']    =  {src='Сервер',  msg='УСО К. Двери УСО К открыты НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_DIAGN_5.reliabilityFlag']    =  {src='Сервер',  msg='УСО К. Исправность ИП=24В внутренних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_DIAGN_6.reliabilityFlag']    =  {src='Сервер',  msg='УСО К. Исправность ИП=24В внешних цепей НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_DIAGN_7.reliabilityFlag']    =  {src='Сервер',  msg='УСО К. Авария ИБП НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_B_AvOST.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Аварийная остановка котла НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_BURN_AvOST.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Аварийная остановка горелки НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_B_TOUT_HIGH.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Температура котла на выходе аварийно высокая НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_B_P_LOW.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Давление воды в котле аварийно низкое НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_B_C_LOW.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Циркуляция воды через котел аварийно низкая НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_B_P_HIGH.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Давление воды в котле аварийно высокое НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_FIREBOX_P_HIGH.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Котельная. Давление в топке котла аварийно высокое НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_H1_WK.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Насос №1 летнего контура в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_H1_FL.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Авария насоса №1 летнего контура НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_H2_WK.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Насос №2 летнего контура в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_H2_FL.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Авария насоса №2 летнего контура НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_GVS_H1_WK.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Насос №1 ГВС в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_GVS_H1_FL.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Авария насоса №1 ГВС НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_GVS_H2_WK.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Насос №2 ГВС в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_GVS_H2_FL.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Авария насоса 2 ГВС НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
			  ['PLC_GSP_SEV_KSSEV_E_USOK_DI_BOILER1_ON.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Котел №1 в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_BOILER2_ON.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Котел №2 в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_BOILER3_ON.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Котел №3 в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_BOILER4_ON.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Котел №4 в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},
              ['PLC_GSP_SEV_KSSEV_E_USOK_DI_BOILER_GVS_ON.reliabilityFlag']    =  {src='Сервер',  msg='Котельная. Котел ГВС в работе НЕДОСТОВЕРНОСТЬ', screen_id = 'KOT'},

			  } 
  

 local MSG_TABLE_usop = {  
         
	-- DI

              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_DIAGN_1.reliabilityFlag']               =  {src='Сервер',  msg='УСО П. Контроль основного питания ~220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_DIAGN_2.reliabilityFlag']               =  {src='Сервер',  msg='УСО П. Контроль резервного питания ~220В НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_DIAGN_3.reliabilityFlag']               =  {src='Сервер',  msg='УСО П. Автоматы включены НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_DIAGN_4.reliabilityFlag']               =  {src='Сервер',  msg='УСО П. Двери Усо П открыты НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_DIAGN_5.reliabilityFlag']               =  {src='Сервер',  msg='УСО П. Исправность разрядников НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_DIAGN_6.reliabilityFlag']               =  {src='Сервер',  msg='УСО П. БП G1 исправен НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},    
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_DIAGN_7.reliabilityFlag']               =  {src='Сервер',  msg='УСО П. Авария ИБП НЕДОСТОВЕРНОСТЬ', screen_id = 'DIAGN'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H1.reliabilityFlag']               =  {src='Сервер',  msg='Пожарная насосная. Ключ выбора насоса в положении «Насос №1» НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H2.reliabilityFlag']               =  {src='Сервер',  msg='Пожарная насосная. Ключ выбора насоса в положении «Насос №2» НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H1_ACONT.reliabilityFlag']               =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №1 в положении автоматического управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H1_MCONT.reliabilityFlag']        =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №1 в положении ручного управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_H1_ON.reliabilityFlag']           =  {src='Сервер',  msg='Пожарная насосная. Пожарный насос №1 включен НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H2_ACONT.reliabilityFlag']          =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №2 в положении автоматического управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H2_MCONT.reliabilityFlag']           =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №2 в положении ручного управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_H2_ON.reliabilityFlag']        =  {src='Сервер',  msg='Пожарная насосная. Пожарный насос №2 включен НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H3.reliabilityFlag']       =  {src='Сервер',  msg='Пожарная насосная. Ключ выбора насоса в положении «Насос №3»', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H4.reliabilityFlag']       =  {src='Сервер',  msg='Пожарная насосная. Ключ выбора насоса в положении «Насос №4» НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H3_ACONT.reliabilityFlag']       =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №3 в положении автоматического управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H3_MCONT.reliabilityFlag']       =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №3 в положении ручного управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_H3_ON.reliabilityFlag']       =  {src='Сервер',  msg='Пожарная насосная. Пожарный насос №3 включен НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H4_ACONT.reliabilityFlag']       =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №4 в положении автоматического управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_KEY_H4_MCONT.reliabilityFlag']       =  {src='Сервер',  msg='Пожарная насосная. Переключатель  насоса №4 в положении ручного управления НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DI_H4_ON.reliabilityFlag']        =  {src='Сервер',  msg='Пожарная насосная. Пожарный насос №4 включен НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_BOOST_H_START.reliabilityFlag']           =  {src='Сервер',  msg='Пожарная насосная. Пуск дежурного повышающего насоса  НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_BOOST_H_STOP.reliabilityFlag']          =  {src='Сервер',  msg='Пожарная насосная. Стоп дежурного повышающего насоса НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_X_RES01.reliabilityFlag']           =  {src='Сервер',  msg='УСО П. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_X_RES02.reliabilityFlag']        =  {src='Сервер',  msg='УСО П. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_X_RES03.reliabilityFlag']       =  {src='Сервер',  msg='УСО П. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_X_RES04.reliabilityFlag']             =  {src='Сервер',  msg='УСО П. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_X_RES05.reliabilityFlag']             =  {src='Сервер',  msg='УСО П. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_X_RES06.reliabilityFlag']             =  {src='Сервер',  msg='УСО П. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DI_X_RES07.reliabilityFlag']           =  {src='Сервер',  msg='УСО П. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'P'},

			  }

local function Add_Event_gsu(signal_gsu)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


		if Core[Check_signal_gsu] == true then
				if Core[signal_gsu[1]] == true		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
			state = 1 
		end


	Core.addEvent(signal_gsu[2]['msg'], cat, state, signal_gsu[2]['src'], user, signal_gsu[1]..'ID for DI', DT_POSIX ,signal_gsu[2]['screen_id'])					
end


--инициализация
for signal_gsu, data in pairs(MSG_TABLE_gsu) do 
    Add_Event_gsu({signal_gsu,data})
end


for signal_gsu, data in pairs(MSG_TABLE_gsu) do 
    Core.onExtChange({signal_gsu}, Add_Event_gsu, {signal_gsu,data})
end


------------------------------------------------
local function Add_Event_ktp1(signal_ktp1)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


		if Core[Check_signal_ktp1] == true then
				if Core[signal_ktp1[1]] == true		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
		    state = 1 
		end


	Core.addEvent(signal_ktp1[2]['msg'], cat, state, signal_ktp1[2]['src'], user, signal_ktp1[1]..'ID for DI', DT_POSIX ,signal_ktp1[2]['screen_id'])					
end


--инициализация
for signal_ktp1, data in pairs(MSG_TABLE_ktp1) do 
    Add_Event_ktp1({signal_ktp1,data})
end


for signal_ktp1, data in pairs(MSG_TABLE_ktp1) do 
    Core.onExtChange({signal_ktp1}, Add_Event_ktp1, {signal_ktp1,data})
end


-------------------------------------------------------

local function Add_Event_ktp2(signal_ktp2)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


		if Core[Check_signal_ktp2] == true then
				if Core[signal_ktp2[1]] == true		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
			state = 1 
		end

	Core.addEvent(signal_ktp2[2]['msg'], cat, state, signal_ktp2[2]['src'], user, signal_ktp2[1]..'ID for DI', DT_POSIX ,signal_ktp2[2]['screen_id'])					
end


--инициализация
for signal_ktp2, data in pairs(MSG_TABLE_ktp2) do 
    Add_Event_ktp2({signal_ktp2,data})
end


for signal_ktp2, data in pairs(MSG_TABLE_ktp2) do 
    Core.onExtChange({signal_ktp2}, Add_Event_ktp2, {signal_ktp2,data})
end


------------------------------------------------------

local function Add_Event_sauvos(signal_sauvos)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


		if Core[Check_signal_sauvos] == true then
				if Core[signal_sauvos[1]] == true		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
			state = 1 
		end


	Core.addEvent(signal_sauvos[2]['msg'], cat, state, signal_sauvos[2]['src'], user, signal_sauvos[1]..'ID for DI', DT_POSIX ,signal_sauvos[2]['screen_id'])					
end


--инициализация
for signal_sauvos, data in pairs(MSG_TABLE_sauvos) do 
    Add_Event_sauvos({signal_sauvos,data})
end


for signal_sauvos, data in pairs(MSG_TABLE_sauvos) do 
    Core.onExtChange({signal_sauvos}, Add_Event_sauvos, {signal_sauvos,data})
end


----------------------------------------------------------

local function Add_Event_usoe(signal_usoe)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


		if Core[Check_signal_usoe] == true then
				if Core[signal_usoe[1]] == true		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
			state = 1 
		end


	Core.addEvent(signal_usoe[2]['msg'], cat, state, signal_usoe[2]['src'], user, signal_usoe[1]..'ID for DI', DT_POSIX ,signal_usoe[2]['screen_id'])					
end


--инициализация
for signal_usoe, data in pairs(MSG_TABLE_usoe) do 
    Add_Event_usoe({signal_usoe,data})
end


for signal_usoe, data in pairs(MSG_TABLE_usoe) do 
    Core.onExtChange({signal_usoe}, Add_Event_usoe, {signal_usoe,data})
end


-------------------------------------------------


local function Add_Event_usok(signal_usok)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


		if Core[Check_signal_usok] == true then
				if Core[signal_usok[1]] == true		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
			state = 1 
		end


	Core.addEvent(signal_usok[2]['msg'], cat, state, signal_usok[2]['src'], user, signal_usok[1]..'ID for DI', DT_POSIX ,signal_usok[2]['screen_id'])					
end


--инициализация
for signal_usok, data in pairs(MSG_TABLE_usok) do 
    Add_Event_usok({signal_usok,data})
end


for signal_usok, data in pairs(MSG_TABLE_usok) do 
    Core.onExtChange({signal_usok}, Add_Event_usok, {signal_usok,data})
end



local function Add_Event_usop(signal_usop)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


		if Core[Check_signal_usop] == true then
				if Core[signal_usop[1]] == true		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
			state = 1 
		end


	Core.addEvent(signal_usop[2]['msg'], cat, state, signal_usop[2]['src'], user, signal_usop[1]..'ID for DI', DT_POSIX ,signal_usop[2]['screen_id'])					
end


--инициализация
for signal_usop, data in pairs(MSG_TABLE_usop) do 
    Add_Event_usop({signal_usop,data})
end


for signal_usop, data in pairs(MSG_TABLE_usop) do 
    Core.onExtChange({signal_usop}, Add_Event_usop, {signal_usop,data})
end

Core.waitEvents()