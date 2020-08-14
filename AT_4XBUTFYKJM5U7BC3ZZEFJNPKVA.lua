
--=================ФОРМИРОВАНИЕ СООБЩЕНИЙ В ЖУРНАЛ СОБЫТИЙ О НЕДОСТОВЕРНОСТИ СИГНАЛОВ(при обрыве связи с ПЛК)=======--

local cat = 29000 --категория событий
 

--таблица сигналов (src - источник сообщения, msg - текст сообщения, screen_id - индентификатор для перехода к мнемосхеме из журнала обытий)



local MSG_TABLE_AI_SAUVOS_A1 = {  
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_AI_CW_1.FAULT']             =  {src='Сервер',  msg='ВОС. Уровень в ёмкости 1 питьевой воды НЕДОСТОВЕРНОСТЬ', screen_id = 'SAUVOS'},
              ['PLC_GSP_SEV_KSSEV_E_SAUVOS_AI_CW_2.FAULT']             =  {src='Сервер',  msg='ВОС. Уровень в ёмкости 2 питьевой воды НЕДОСТОВЕРНОСТЬ', screen_id = 'SAUVOS'},

			  } 


 local MSG_TABLE_AI_USOP_A1 = {  
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOP_AI_W_PIPE1.FAULT']             =  {src='Сервер',  msg='Пожарная насосная. Уровень воды в пожарной ёмкости 750 м3 НЕДОСТОВЕРНОСТЬ', screen_id = 'USOP'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_AI_W_PIPE2.FAULT']             =  {src='Сервер',  msg='Пожарная насосная. Уровень воды в пожарной ёмкости 150 м3 НЕДОСТОВЕРНОСТЬ', screen_id = 'USOP'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_AI_W_PIPE3.FAULT']             =  {src='Сервер',  msg='Пожарная насосная. Давление воды в пожарном трубопроводе НЕДОСТОВЕРНОСТЬ', screen_id = 'USOP'},
              ['PLC_GSP_SEV_KSSEV_E_USOP_AI_W_PIPE4.FAULT']             =  {src='Сервер',  msg='Пожарная насосная. Давление воды в пожарном трубопроводе АБК НЕДОСТОВЕРНОСТЬ', screen_id = 'USOP'},
 
			  } 
  
 local MSG_TABLE_AI_GSU_A1 = {  
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_CUR_B.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Ток фазы B ввода 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_V_AC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U AC на вводе 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1SEC_V_BC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U ВC на 1 секции НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_CUR_B.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Ток фазы B ввода 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_V_AC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U AC на вводе 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              ['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2SEC_V_BC.FAULT']             =  {src='Сервер',  msg='МСС-7 (пан.01). Напряжение U ВC на 2 секции НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_X_RES01.FAULT']             =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
              --['PLC_GSP_SEV_KSSEV_E_USOGSU_AI_X_RES02.FAULT']             =  {src='Сервер',  msg='МСС-7. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'GSU'},
           
			  } 
  
 local MSG_TABLE_AI_KTP1_A1 = {              
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B.FAULT']           =  {src='Сервер',  msg='КТП8516 (пан.01). Ток фазы B ввода 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_V_AC.FAULT']           =  {src='Сервер',  msg='КТП8516 (пан.01). Напряжение U AC на вводе 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1SEC_V_BC.FAULT']           =  {src='Сервер',  msg='КТП8516 (пан.01). Напряжение U ВC на 1секции НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_CUR_B.FAULT']           =  {src='Сервер',  msg='КТП8516 (пан.07). Ток фазы B ввода 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_V_AC.FAULT']           =  {src='Сервер',  msg='КТП8516 (пан.07). Напряжение U AC на вводе 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2SEC_V_BC.FAULT']           =  {src='Сервер',  msg='КТП8516 (пан.07). Напряжение U ВC на 2 секции НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              --['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_CUR_AC.FAULT']           =  {src='Сервер',  msg='КТП №8516. Ток фазы С АС НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES01.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES02.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES03.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES04.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP1_AI_X_RES05.FAULT']           =  {src='Сервер',  msg='КТП №8516. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8516'},

			  } 

 local MSG_TABLE_AI_KTP2_A1 = { 
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_CUR_B.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.01). Ток фазы B ввода 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_V_AC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.01). Напряжение U AC на вводе 1Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1SEC_V_BC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.01). Напряжение U ВC на 1секции НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_CUR_B.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.07). Ток фазы B ввода 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_V_AC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.07). Напряжение U AC на вводе 2Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2SEC_V_BC.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.07). Напряжение U ВC на 2 секции НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_PAN03_4Q_V_LIN.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.03). Линейное напряжение на аварийном вводе 4Q НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_SHUOT_CONT_V.FAULT']               =  {src='Сервер',  msg='КТП №8524 (пан.OT). Контроль напряжения ШУОТ 24 03 вспом. зоны НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES01.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES02.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES03.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOKTP2_AI_X_RES04.FAULT']               =  {src='Сервер',  msg='КТП №8524. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'KTP8524'},

			  } 
 
 local MSG_TABLE_AI_E_A1 = {              
	-- AI

              ['PLC_GSP_SEV_KSSEV_E_USOE_AI_1Q_V.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Напряжение на вводе 1 НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_AI_2Q_V.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Напряжение на вводе 2 НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              ['PLC_GSP_SEV_KSSEV_E_USOE_AI_SHUOT_V.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Напряжение ШУОТ ЗРУ-10 кВ НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},
              -- ['PLC_GSP_SEV_KSSEV_E_USOE_AI_X_RES01.FAULT']        =  {src='Сервер',  msg='ЗРУ-10 кВ. Резерв НЕДОСТОВЕРНОСТЬ', screen_id = 'ZRU'},

			  }   


function Add_Event(signal,Check_signal)
	local user = ''		
	local DT_POSIX = os.time()		
	local state 

	--	if Core[Check_signal] == false then
	--		state = 1

	  if Core[Check_signal] == true  then
				if Core[signal[1]] == false		 then
				  state = 0 
			    else
				  state = 1 
			    end
		else 
			state = 1
		end


	Core.addEvent(signal[2]['msg'], cat, state, signal[2]['src'], user, signal[1]..'ID for AI', DT_POSIX ,signal[2]['screen_id'])					
end


-- Вызов функции для SAUVOS
function MSG_AI_SAUVOS_A1(signal)
	local Check_signal = 'SAUVOS_A1_FAULT.Connect'
		Add_Event(signal,Check_signal)
end

--инициализация
for signal, data in pairs(MSG_TABLE_AI_SAUVOS_A1) do 
    MSG_AI_SAUVOS_A1({signal,data})
end

for signal, data in pairs(MSG_TABLE_AI_SAUVOS_A1) do 
    Core.onExtChange({signal}, MSG_AI_SAUVOS_A1, {signal,data})
end



-- Вызов функции для USOP
function MSG_AI_USOP_A1(signal)
	local Check_signal = 'USOP_A1_FAULT.Connect'
		Add_Event(signal,Check_signal)
end

--инициализация
for signal, data in pairs(MSG_TABLE_AI_USOP_A1) do 
    MSG_AI_USOP_A1({signal,data})
end

for signal, data in pairs(MSG_TABLE_AI_USOP_A1) do 
    Core.onExtChange({signal}, MSG_AI_USOP_A1, {signal,data})
end



-- Вызов функции для ГЩУ (МСС-7)
function MSG_AI_GSU_A1(signal)
	local Check_signal = 'USOGSU_A1_FAULT.Connect'
		Add_Event(signal,Check_signal)
end

--инициализация
for signal, data in pairs(MSG_TABLE_AI_GSU_A1) do 
    MSG_AI_GSU_A1({signal,data})
end

for signal, data in pairs(MSG_TABLE_AI_GSU_A1) do 
    Core.onExtChange({signal}, MSG_AI_GSU_A1, {signal,data})
end



-- Вызов функции для КТП1
function MSG_AI_KTP1_A1(signal)
	local Check_signal = 'USOKTP1_A1_FAULT.Connect'
		Add_Event(signal,Check_signal)
end

--инициализация
for signal, data in pairs(MSG_TABLE_AI_KTP1_A1) do 
    MSG_AI_KTP1_A1({signal,data})
end

for signal, data in pairs(MSG_TABLE_AI_KTP1_A1) do 
    Core.onExtChange({signal}, MSG_AI_KTP1_A1, {signal,data})
end



-- Вызов функции для КТП2
function MSG_AI_KTP2_A1(signal)
	local Check_signal = 'USOKTP2_A1_FAULT.Connect'
		Add_Event(signal,Check_signal)
end

--инициализация
for signal, data in pairs(MSG_TABLE_AI_KTP2_A1) do 
    MSG_AI_KTP2_A1({signal,data})
end

for signal, data in pairs(MSG_TABLE_AI_KTP2_A1) do 
    Core.onExtChange({signal}, MSG_AI_KTP2_A1, {signal,data})
end



-- Вызов функции для УСО Э
function MSG_AI_E_A1(signal)
	local Check_signal = 'USOE_A1_FAULT.Connect'
		Add_Event(signal,Check_signal)
end

--инициализация
for signal, data in pairs(MSG_TABLE_AI_E_A1) do 
    MSG_AI_E_A1({signal,data})
end

for signal, data in pairs(MSG_TABLE_AI_E_A1) do 
    Core.onExtChange({signal}, MSG_AI_E_A1, {signal,data})
end

Core.waitEvents()