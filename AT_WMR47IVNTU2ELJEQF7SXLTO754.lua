local cat = 10100 --категория событий
local Check_signal_gsu    = 'USOGSU_A1_FAULT.Connect'
local Check_signal_ktp1   = 'USOKTP1_A2_FAULT.Connect'
local Check_signal_ktp2   = 'USOKTP2_A2_FAULT.Connect'
local Check_signal_sauvos = 'SAUVOS_A1_FAULT.Connect'
local Check_signal_usop   = 'USOP_A1_FAULT.Connect'

--таблица сигналов (src - источник сообщения, msg - текст сообщения, screen_id - индентификатор для перехода к мнемосхеме из журнала обытий)
 local MSG_TABLE_gsu = {  


	-- DO

              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_PAN01_1Q_OFF.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7 (пан.01). Отключить выключатель 1Q управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_PAN01_1Q_ON.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7 (пан.01). Включить выключатель 1Q управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_PAN01_2Q_OFF.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7 (пан.01). Отключить выключатель 2Q управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_PAN01_2Q_ON.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7 (пан.01). Включить выключатель 2Q управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_AvOST.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Аварийный останов управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES13.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES14.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES15.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES16.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES17.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES18.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES19.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES20.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES21.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES22.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_DO_X_RES23.reliabilityFlag']     =  {src='Сервер',  msg=' МСС-7. Резерв управление заблокировано', screen_id = 'GSU'},

			  } 
  

local MSG_TABLE_ktp1 = {       

	-- DO

              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN01_1Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.01). Отключить выключатель 1Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN01_1Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.01). Включить выключатель 1Q управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_AS_START.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Стоп АС управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_AS_STOP.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Пуск АС управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN07_2Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.07). Отключить выключатель 2Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN07_2Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.07). Включить выключатель 2Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN09_3Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.09). Отключить выключатель 3Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN09_3Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.09). Включить выключатель 3Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN08_AVRSV_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.08). Включить АВР СВ управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN08_AVRSV_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.08). Отключить АВР СВ управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN02_AVRAS_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.02). Включить АВР АС управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_PAN02_AVRAS_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516 (пан.02). Отключить АВР AC управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_ADES_AVG_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Включить АВГ управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_ADES_AVG_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Отключить АВГ управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_ADES_START.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Пуск АДЭС управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_ADES_STOP.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Стоп АДЭС управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES38.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES39.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES40.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES41.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES42.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES43.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES44.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES45.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES46.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES47.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES48.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES49.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES50.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES51.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES52.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_DO_X_RES53.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8516. Резерв управление заблокировано', screen_id = 'KTP8516'},

			  }  
  
local MSG_TABLE_ktp2 = {       

              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN01_1Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.01). Отключить выключатель 1Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN01_1Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.01). Включить выключатель 1Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN07_2Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.07). Отключить выключатель 2Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN07_2Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.07). Включить выключатель 2Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN03_4Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.03). Отключить выключатель 4Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN03_4Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.03). Включить выключатель 4Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN09_3Q_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.09). Отключить выключатель 3Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN09_3Q_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.09). Включить выключатель 3Q управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN09_AVRSV_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.09). Включить АВР СВ управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN09_AVRSV_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.09). Отключить АВР СВ управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN03_AVRAS_ON.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.03). Включить АВР АС управление заблокировано', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_PAN03_AVRAS_OFF.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524 (пан.03). Отключить АВР AC управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES35.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES36.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES37.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES38.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES39.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES40.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES41.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES42.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES43.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES44.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES45.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES46.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES47.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES48.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES49.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES50.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES51.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES52.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES53.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP2_DO_X_RES54.reliabilityFlag']           =  {src='Сервер',  msg='КТП №8524. Резерв управление заблокировано', screen_id = 'KTP8516'},

			  }  
  

local MSG_TABLE_sauvos = {  
	

	-- DO

              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_ART2_H_ON.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Пуск насоса артскважины №2 управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES12.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES13.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES14.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES15.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES16.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES17.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES18.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES19.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES20.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES21.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES22.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES23.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES24.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES25.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},
              --['PLC_GSP_SEV_KSSEV_E_SAUVOS_DO_X_RES26.reliabilityFlag']     =  {src='Сервер',  msg='ВОС. Резерв управление заблокировано', screen_id = 'VOS'},

			  } 



 local MSG_TABLE_usop = {  

	-- DO

              ['PLC_GSP_SEV_KSSEV_E_USOP_DO_H1_ON.reliabilityFlag']     =  {src='Сервер',  msg='Пожарная насосная. Включить пожарный насос №1 управление заблокировано', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DO_H2_ON.reliabilityFlag']     =  {src='Сервер',  msg='Пожарная насосная. Включить пожарный насос №2 управление заблокировано', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DO_H3_ON.reliabilityFlag']     =  {src='Сервер',  msg='Пожарная насосная. Включить пожарный насос №3 управление заблокировано', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DO_H4_ON.reliabilityFlag']     =  {src='Сервер',  msg='Пожарная насосная. Включить пожарный насос №4 управление заблокировано', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES08.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Включить пожарные насосы управление заблокировано', screen_id = 'P'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES09.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Отключить пожарные насосы управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES10.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES11.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES12.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES13.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES14.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES15.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES16.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES17.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES18.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},
              --['PLC_GSP_SEV_KSSEV_E_USOP_DO_X_RES19.reliabilityFlag']     =  {src='Сервер',  msg='УСО П. Резерв управление заблокировано', screen_id = 'P'},

			  }   


local function Add_Event_gsu(signal)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


--		if Core[Check_signal_gsu] == false then
--			state = 1
		if Core[Check_signal_gsu] == true then
				if Core[signal[1]] == false		 then
				  state = 1 
			    else
				  state = 0 
			    end
		else 
			state = 1
		end


	Core.addEvent(signal[2]['msg'], cat, state, signal[2]['src'], user, signal[1]..'ID for DO', DT_POSIX ,signal[2]['screen_id'])					
end


--инициализация
for signal, data in pairs(MSG_TABLE_gsu) do 
    Add_Event_gsu({signal,data})
end


for signal, data in pairs(MSG_TABLE_gsu) do 
    Core.onExtChange({signal,Check_signal_gsu}, Add_Event_gsu, {signal,data})
end

local function Add_Event_ktp1(signal)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


--		if Core[Check_signal_ktp1] == false then
--			state = 1
		if Core[Check_signal_ktp1] == true then
				if Core[signal[1]] == false		 then
				  state = 1 
			    else
				  state = 0 
			    end
		else 
			state = 1
		end


	Core.addEvent(signal[2]['msg'], cat, state, signal[2]['src'], user, signal[1]..'ID for DO', DT_POSIX ,signal[2]['screen_id'])					
end


--инициализация
for signal, data in pairs(MSG_TABLE_ktp1) do 
    Add_Event_ktp1({signal,data})
end


for signal, data in pairs(MSG_TABLE_ktp1) do 
    Core.onExtChange({signal,Check_signal_ktp1}, Add_Event_ktp1, {signal,data})
end




local function Add_Event_ktp2(signal)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


--		if Core[Check_signal_ktp2] == false then
--			state = 1
		if Core[Check_signal_ktp2] == true then
				if Core[signal[1]] == false		 then
				  state = 1 
			    else
				  state = 0 
			    end
		else 
			state = 1
		end


	Core.addEvent(signal[2]['msg'], cat, state, signal[2]['src'], user, signal[1]..'ID for DO', DT_POSIX ,signal[2]['screen_id'])					
end


--инициализация
for signal, data in pairs(MSG_TABLE_ktp2) do 
    Add_Event_ktp2({signal,data})
end


for signal, data in pairs(MSG_TABLE_ktp2) do 
    Core.onExtChange({signal,Check_signal_ktp2}, Add_Event_ktp2, {signal,data})
end



local function Add_Event_sauvos(signal)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


--		if Core[Check_signal_sauvos] == false then
--			state = 1
		if Core[Check_signal_sauvos] == true then
				if Core[signal[1]] == false		 then
				  state = 1 
			    else
				  state = 0 
			    end
		else 
			state = 1
		end


	Core.addEvent(signal[2]['msg'], cat, state, signal[2]['src'], user, signal[1]..'ID for DO', DT_POSIX ,signal[2]['screen_id'])					
end


--инициализация
for signal, data in pairs(MSG_TABLE_sauvos) do 
    Add_Event_sauvos({signal,data})
end


for signal, data in pairs(MSG_TABLE_sauvos) do 
    Core.onExtChange({signal,Check_signal_sauvos}, Add_Event_sauvos, {signal,data})
end



local function Add_Event_usop(signal)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 


--		if Core[Check_signal_usop] == false then
--			state = 1
		if Core[Check_signal_usop] == true then
				if Core[signal[1]] == false		 then
				  state = 1 
			    else
				  state = 0 
			    end
		else 
			state = 1
		end


	Core.addEvent(signal[2]['msg'], cat, state, signal[2]['src'], user, signal[1]..'ID for DO', DT_POSIX ,signal[2]['screen_id'])					
end


--инициализация
for signal, data in pairs(MSG_TABLE_usop) do 
    Add_Event_usop({signal,data})
end


for signal, data in pairs(MSG_TABLE_usop) do 
    Core.onExtChange({signal,Check_signal_usop}, Add_Event_usop, {signal,data})
end

Core.waitEvents()