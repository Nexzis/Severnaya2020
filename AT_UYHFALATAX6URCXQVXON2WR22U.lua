
--=================ФОРМИРОВАНИЕ СООБЩЕНИЙ В ЖУРНАЛ СОБЫТИЙ О НЕДОСТОВЕРНОСТИ СИГНАЛОВ(при обрыве связи с ПЛК)=======--

local cat = 10100 --категория событий
 

--таблица сигналов (src - источник сообщения, msg - текст сообщения, screen_id - индентификатор для перехода к мнемосхеме из журнала обытий)

 local MSG_TABLE_AI_GSU_A1 = {  
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_CUR_B.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Ток фазы B ввода 1Q', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_V_AC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U AC на вводе 1Q', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1SEC_V_BC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U ВC на 1 секции', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_CUR_B.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Ток фазы B ввода 2Q', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_V_AC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U AC на вводе 2Q', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2SEC_V_BC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U ВC на 2 секции', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_X_RES01.FAULT']             =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_X_RES02.FAULT']             =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
           
			  } 
  
 local MSG_TABLE_AI_KTP1_A1 = {              
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B.FAULT']           =  {src='Сервер',  msg='КТП №8516 (пан.01). Ток фазы B ввода 1Q', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_V_AC.FAULT']           =  {src='Сервер',  msg='КТП №8516 (пан.01). Напряжение U AC на вводе 1Q', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1SEC_V_BC.FAULT']           =  {src='Сервер',  msg='КТП №8516 (пан.01). Напряжение U ВC на 1секции', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_CUR_B.FAULT']           =  {src='Сервер',  msg='КТП №8516 (пан.07). Ток фазы B ввода 2Q', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_V_AC.FAULT']           =  {src='Сервер',  msg='КТП №8516 (пан.07). Напряжение U AC на вводе 2Q', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2SEC_V_BC.FAULT']           =  {src='Сервер',  msg='КТП №8516 (пан.07). Напряжение U ВC на 2 секции', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_CUR_AC.FAULT']           =  {src='Сервер',  msg='КТП №8516. Ток фазы С АС', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES01.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES02.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES03.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES04.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES05.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв', screen_id = 'KTP8516'},

			  } 

 local MSG_TABLE_AI_KTP2_A1 = { 
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_CUR_B.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.01). Ток фазы B ввода 1Q', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_V_AC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.01). Напряжение U AC на вводе 1Q', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1SEC_V_BC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.01). Напряжение U ВC на 1секции', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_CUR_B.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.07). Ток фазы B ввода 2Q', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_V_AC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.07). Напряжение U AC на вводе 2Q', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2SEC_V_BC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.07). Напряжение U ВC на 2 секции', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN03_4Q_V_LIN.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.03). Линейное напряжение на аварийном вводе 4Q', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_SHUOT_CONT_V.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.OT). Контроль напряжения ШУОТ 24 03 вспом. зоны', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES01.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES02.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES03.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES04.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв', screen_id = 'KTP8524'},

			  } 
 
 local MSG_TABLE_AI_E_A1 = {              
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOE_AI_1Q_V.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Напряжение на вводе 1', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_AI_2Q_V.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Напряжение на вводе 2', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_AI_SHUOT_V.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Напряжение ШУОТ ЗРУ-10 кВ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_AI_X_RES01.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Резерв', screen_id = 'ZRU'},

			  }    



function Add_Event_GSU_AI()
	local user = ''		
	local DT_POSIX = os.time()		
	local state 

Check_signal = 'USOGSU_A1_FAULT.Connect'
		if Core[Check_signal] == false then
			state = 1
			    else
				  state = 0 
			    end

for sig,data in pairs(MSG_TABLE_AI_GSU_A1) do
Core.addEvent(data['msg']..' ВВОД УСТАВОК ЗАПРЕЩЕН', cat, state, data['src'], user, sig..'ID for BORD', DT_POSIX ,data['screen_id'])	
end				
end


--инициализация
    Add_Event_GSU_AI()
    Core.onExtChange({'USOGSU_A1_FAULT.Connect'}, Add_Event_GSU_AI)





function Add_Event_KTP1_AI()
	local user = ''		
	local DT_POSIX = os.time()		
	local state 

Check_signal = 'USOKTP1_A1_FAULT.Connect'
		if Core[Check_signal] == false then
			state = 1
			    else
				  state = 0 
			    end

for sig,data in pairs(MSG_TABLE_AI_KTP1_A1) do
Core.addEvent(data['msg']..' ВВОД УСТАВОК ЗАПРЕЩЕН', cat, state, data['src'], user, sig..'ID for BORD', DT_POSIX ,data['screen_id'])	
end				
end


--инициализация
    Add_Event_KTP1_AI()
    Core.onExtChange({'USOKTP1_A1_FAULT.Connect'}, Add_Event_KTP1_AI)






function Add_Event_KTP2_AI()
	local user = ''		
	local DT_POSIX = os.time()		
	local state 

Check_signal = 'USOKTP2_A1_FAULT.Connect'
		if Core[Check_signal] == false then
			state = 1
			    else
				  state = 0 
			    end

for sig,data in pairs(MSG_TABLE_AI_KTP2_A1) do
Core.addEvent(data['msg']..' ВВОД УСТАВОК ЗАПРЕЩЕН', cat, state, data['src'], user, sig..'ID for BORD', DT_POSIX ,data['screen_id'])
end				
end


--инициализация
    Add_Event_KTP2_AI()
    Core.onExtChange({'USOKTP2_A1_FAULT.Connect'}, Add_Event_KTP2_AI)





function Add_Event_E_AI()
	local user = ''		
	local DT_POSIX = os.time()		
	local state 

Check_signal = 'USOE_A1_FAULT.Connect'
		if Core[Check_signal] == false then
			state = 1
			    else
				  state = 0 
			    end

for sig,data in pairs(MSG_TABLE_AI_E_A1) do
Core.addEvent(data['msg']..' ВВОД УСТАВОК ЗАПРЕЩЕН', cat, state, data['src'], user, sig..'ID for BORD', DT_POSIX ,data['screen_id'])	
end				
end


--инициализация
    Add_Event_E_AI()
    Core.onExtChange({'USOE_A1_FAULT.Connect'}, Add_Event_E_AI)

Core.waitEvents()