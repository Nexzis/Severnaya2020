
--=================ПЕРЕПРИСВОЕНИЕ АНАЛОГОВЫХ СИГНАЛОВ И ФЛАГОВ ДОСТОВЕРНОСИТИ=======--
local LocalID = 'GSP_SEV_KSSEV_E_'
local PLCID = 'PLC_GSP_SEV_KSSEV_E_'

AI_SIG_TABLE_SAUVOS_A1 = {
				['SAUVOS_AI_CW_1'] = {st = 'SAUVOS_A1_6.i1_status'},
				['SAUVOS_AI_CW_2']	= {st = 'SAUVOS_A1_6.i2_status'},
				}


AI_SIG_TABLE_USOP_A1 = {
				['USOP_AI_W_PIPE1'] = {st = 'USOP_A1_6.i1_status'},
				['USOP_AI_W_PIPE2']	= {st = 'USOP_A1_6.i2_status'},
				['USOP_AI_W_PIPE3']	= {st = 'USOP_A1_6.i3_status'},
				['USOP_AI_W_PIPE4']	= {st = 'USOP_A1_6.i4_status'},
				
				}


AI_SIG_TABLE_GSU_A1 = {
				['USOGSU_AI_PAN01_1Q_CUR_B'] 	= {st = 'USOGSU_A1_3.i1_status'},
				['USOGSU_AI_PAN01_1Q_V_AC']		= {st = 'USOGSU_A1_3.i2_status'},
				['USOGSU_AI_PAN01_1SEC_V_BC']	= {st = 'USOGSU_A1_3.i3_status'},
				['USOGSU_AI_PAN01_2Q_CUR_B']	= {st = 'USOGSU_A1_3.i4_status'},
				['USOGSU_AI_PAN01_2Q_V_AC']		= {st = 'USOGSU_A1_4.i1_status'},
				['USOGSU_AI_PAN01_2SEC_V_BC']	= {st = 'USOGSU_A1_4.i2_status'},
				['USOGSU_AI_X_RES01']			= {st = 'USOGSU_A1_4.i3_status'},
				['USOGSU_AI_X_RES02']			= {st = 'USOGSU_A1_4.i4_status'},
				}

AI_SIG_TABLE_KTP1_A1 = {                              
			['USOKTP1_AI_PAN01_1Q_CUR_B']		= {st = 'USOKTP1_A1_3.i1_status'},
			['USOKTP1_AI_PAN01_1Q_V_AC']		= {st = 'USOKTP1_A1_3.i2_status'},
			['USOKTP1_AI_PAN01_1SEC_V_BC']		= {st = 'USOKTP1_A1_3.i3_status'},
			['USOKTP1_AI_PAN07_2Q_CUR_B']		= {st = 'USOKTP1_A1_3.i4_status'},
			['USOKTP1_AI_PAN07_2Q_V_AC']		= {st = 'USOKTP1_A1_4.i1_status'},
			['USOKTP1_AI_PAN07_2SEC_V_BC']		= {st = 'USOKTP1_A1_4.i2_status'},
			['USOKTP1_AI_X_CUR_AC']				= {st = 'USOKTP1_A1_4.i3_status'},
			['USOKTP1_AI_X_RES01']				= {st = 'USOKTP1_A1_4.i4_status'},
			['USOKTP1_AI_X_RES02']				= {st = 'USOKTP1_A1_5.i1_status'},
			['USOKTP1_AI_X_RES03']				= {st = 'USOKTP1_A1_5.i2_status'},
			['USOKTP1_AI_X_RES04']				= {st = 'USOKTP1_A1_5.i3_status'},
			['USOKTP1_AI_X_RES05']				= {st = 'USOKTP1_A1_5.i4_status'},
							}


AI_SIG_TABLE_KTP2_A1 = {
				['USOKTP2_AI_PAN01_1Q_CUR_B']	= {st = 'USOKTP2_A1_3.i1_status'},
				['USOKTP2_AI_PAN01_1Q_V_AC']	= {st = 'USOKTP2_A1_3.i2_status'},
				['USOKTP2_AI_PAN01_1SEC_V_BC']	= {st = 'USOKTP2_A1_3.i3_status'},
				['USOKTP2_AI_PAN07_2Q_CUR_B']	= {st = 'USOKTP2_A1_3.i4_status'},
				['USOKTP2_AI_PAN07_2Q_V_AC']	= {st = 'USOKTP2_A1_4.i1_status'},
				['USOKTP2_AI_PAN07_2SEC_V_BC']	= {st = 'USOKTP2_A1_4.i2_status'},
				['USOKTP2_AI_PAN03_4Q_V_LIN']	= {st = 'USOKTP2_A1_4.i3_status'},
				['USOKTP2_AI_SHUOT_CONT_V']		= {st = 'USOKTP2_A1_4.i4_status'},
				['USOKTP2_AI_X_RES01']			= {st = 'USOKTP2_A1_5.i1_status'},
				['USOKTP2_AI_X_RES02']			= {st = 'USOKTP2_A1_5.i2_status'},
				['USOKTP2_AI_X_RES03']			= {st = 'USOKTP2_A1_5.i3_status'},
				['USOKTP2_AI_X_RES04']			= {st = 'USOKTP2_A1_5.i4_status'},
				}


AI_SIG_TABLE_E_A1 = {
				['USOE_AI_1Q_V']				= {st = 'USOE_A1_3.i1_status'},
				['USOE_AI_2Q_V']				= {st = 'USOE_A1_3.i2_status'},
				['USOE_AI_SHUOT_V']				= {st = 'USOE_A1_3.i3_status'},
				['USOE_AI_X_RES01']				= {st = 'USOE_A1_3.i4_status'},
				}

AI_PARAM_TABLE = {
			['.Value'] = '.OUTPUT',                
			['.reliabilityFlag'] = '.FAULT',
--			['.reliabilityFlag'] = '.QUALITY',
			['.HH_en'] = '.HH_ACT',
			['.HH'] = '.HH_SETP',
			['.HL_en'] = '.H_ACT',
			['.HL'] = '.H_SETP',
			['.LH_en'] = '.L_ACT',
			['.LH'] = '.L_SETP',
			['.LL_en'] = '.LL_ACT',
			['.LL'] = '.LL_SETP',
			['.Comment'] = '.NAME_LONG',
			['.Unit'] = '.UNIT',
			['.Sym'] = '.NAME_SHORT',
			['.Source'] = '.SOURCE',
			['.in_status'] = '.ALM_CODE',
							}
--[[NARAB_PARAM_TABLE = {['.Value'] = '.OUTPUT',}


function GRAB_NARAB(Params,Check_signal)
local signal =Params[1]
--local HMI_param = Params[2]
--local PLC_param = Params[3]
		
		if Core[Check_signal] == true then
			Core[LocalID..signal..'.Value'] =  Core[PLCID..signal..'.OUTPUT']
			Core[LocalID..signal..'.reliabilityFlag']= true
		else 
			Core[LocalID..signal..'.reliabilityFlag']= false
		end
end

function GRAB_NARAB_1(Params)
	local Check_signal = 'USOP_A1_FAULT.Connect'
		GRAB_NARAB(Params,Check_signal)
end

for _, signal in pairs(AI_SIG_TABLE_USOPNA_A1) do
	--for HMI_param, PLC_param in pairs(NARAB_PARAM_TABLE)  do
		GRAB_NARAB_1({signal, HMI_param, PLC_param})
	--end
end

for _, signal in pairs(AI_SIG_TABLE_USOPNA_A1) do
	--for HMI_param, PLC_param in pairs(NARAB_PARAM_TABLE)  do
		 Core.onExtChange({PLCID..signal..'.OUTPUT', 'USOP_A1_FAULT.Connect'}, GRAB_NARAB_1, {signal})
	--end
end --]]


function GRAB_AI(AI_params,Check_signal)
	local signal = AI_params[1]
	local st = AI_params[2]['st']
	local HMI_param = AI_params[3]	
	local PLC_param = AI_params[4]

    if  Core[Check_signal] == true then

          if Core[st] == 0  then

		        if string.sub(PLC_param,1,7) == '.OUTPUT' or string.sub(PLC_param,1,6) == '.FAULT' then
		            Core[LocalID..signal..'.Value'] =  Core[PLCID..signal..'.OUTPUT']
		            Core[LocalID..signal..'.OldValue'] =  Core[PLCID..signal..'.OUTPUT']  
                    Core[LocalID..signal..'.reliabilityFlag']= not Core[PLCID..signal..'.FAULT']

                else
                    Core[LocalID..signal..HMI_param] = Core[PLCID..signal..PLC_param]

                end

		  else

                 if string.sub(PLC_param,1,7) == '.OUTPUT' or string.sub(PLC_param,1,6) == '.FAULT' then
		            Core[LocalID..signal..'.Value'] =  Core[LocalID..signal..'.OldValue'] 
                    Core[LocalID..signal..'.reliabilityFlag']= not Core[PLCID..signal..'.FAULT']

                 else

                    Core[LocalID..signal..HMI_param] = Core[PLCID..signal..PLC_param]

                 end
		  end

     else
			Core[LocalID..signal..'.reliabilityFlag'] = false
			Core[PLCID..signal..'.FAULT'] = true
            Core[LocalID..signal..'.Value'] =  Core[LocalID..signal..'.OldValue']
			--Core[PLCID..signal..'.OUTPUT'] = 0/0 
			--Core[LocalID..signal..'.Value'] = 0/0
	 end
end




--[[
function GRAB_AI(AI_params,Check_signal)
	local signal = AI_params[1]
	local HMI_param = AI_params[2]	
	local PLC_param = AI_params[3]

    if  Core[Check_signal] == true then
		if string.sub(PLC_param,1,6) == '.FAULT' then
			Core[LocalID..signal..'.reliabilityFlag']= not Core[PLCID..signal..'.FAULT']

		elseif string.sub(PLC_param,1,7) == '.OUTPUT' and Core[PLCID..signal..'.FAULT'] == false then
		    Core[LocalID..signal..'.Value'] =  Core[PLCID..signal..'.OUTPUT']
		    Core[LocalID..signal..'.OldValue'] =  Core[PLCID..signal..'.OUTPUT']  

		elseif string.sub(PLC_param,1,7) == '.OUTPUT' and Core[PLCID..signal..'.FAULT'] == true then
		    Core[LocalID..signal..'.Value'] =  Core[LocalID..signal..'.OldValue']

        else
            Core[LocalID..signal..HMI_param] = Core[PLCID..signal..PLC_param]
		end

	else
			Core[LocalID..signal..'.reliabilityFlag'] = false
			Core[PLCID..signal..'.FAULT'] = true
            Core[LocalID..signal..'.Value'] =  Core[LocalID..signal..'.OldValue'] 
	end
end
]]


-- Вызов функции для ГЩУ (МСС-7)
function GRAB_AI_SAUVOS_A1(AI_params)
	local Check_signal = 'SAUVOS_A1_FAULT.Connect'
		GRAB_AI(AI_params,Check_signal)
	
end

for signal, st in pairs(AI_SIG_TABLE_SAUVOS_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    GRAB_AI_SAUVOS_A1({signal, st, HMI_param, PLC_param})
  end
end

for signal, st in pairs(AI_SIG_TABLE_SAUVOS_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    Core.onExtChange({PLCID..signal..PLC_param, 'SAUVOS_A1_FAULT.Connect'}, GRAB_AI_SAUVOS_A1, {signal,st, HMI_param, PLC_param})
  end
end



-- Вызов функции для ГЩУ (МСС-7)
function GRAB_AI_GSU_A1(AI_params)
	local Check_signal = 'USOGSU_A1_FAULT.Connect'
		GRAB_AI(AI_params,Check_signal)
	
end

for signal, st in pairs(AI_SIG_TABLE_GSU_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    GRAB_AI_GSU_A1({signal, st, HMI_param, PLC_param})
  end
end

for signal, st in pairs(AI_SIG_TABLE_GSU_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    Core.onExtChange({PLCID..signal..PLC_param, 'USOGSU_A1_FAULT.Connect'}, GRAB_AI_GSU_A1, {signal,st, HMI_param, PLC_param})
  end
end



-- Вызов функции для КТП1
function GRAB_AI_KTP_A1(AI_params)
	local Check_signal = 'USOKTP1_A1_FAULT.Connect'
		GRAB_AI(AI_params,Check_signal)

end

for signal, st in pairs(AI_SIG_TABLE_KTP1_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    GRAB_AI_KTP_A1({signal, st, HMI_param, PLC_param})
  end
end

for signal, st in pairs(AI_SIG_TABLE_KTP1_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    Core.onExtChange({PLCID..signal..PLC_param, 'USOKTP1_A1_FAULT.Connect'}, GRAB_AI_KTP_A1, {signal,st, HMI_param, PLC_param})
  end
end



-- Вызов функции для КТП2
function GRAB_AI_KTP_A2(AI_params)
	local Check_signal = 'USOKTP2_A1_FAULT.Connect'
		GRAB_AI(AI_params,Check_signal)

end

for signal, st in pairs(AI_SIG_TABLE_KTP2_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    GRAB_AI_KTP_A2({signal, st, HMI_param, PLC_param})
  end
end

for signal, st in pairs(AI_SIG_TABLE_KTP2_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    Core.onExtChange({PLCID..signal..PLC_param, 'USOKTP2_A1_FAULT.Connect'}, GRAB_AI_KTP_A2, {signal,st, HMI_param, PLC_param})
  end
end



-- Вызов функции для УСО Э
function GRAB_AI_E_A1(AI_params)
	local Check_signal = 'USOE_A1_FAULT.Connect'
		GRAB_AI(AI_params,Check_signal)

end

for signal, st in pairs(AI_SIG_TABLE_E_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    GRAB_AI_E_A1({signal, st, HMI_param, PLC_param})
  end
end

for signal, st in pairs(AI_SIG_TABLE_E_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    Core.onExtChange({PLCID..signal..PLC_param, 'USOE_A1_FAULT.Connect'}, GRAB_AI_E_A1, {signal,st, HMI_param, PLC_param})
  end
end


-- Вызов функции для УСО п
function GRAB_AI_USOP_A1(AI_params)
	local Check_signal = 'USOP_A1_FAULT.Connect'
		GRAB_AI(AI_params,Check_signal)

end

for signal, st in pairs(AI_SIG_TABLE_USOP_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    GRAB_AI_USOP_A1({signal, st, HMI_param, PLC_param})
  end
end

for signal, st in pairs(AI_SIG_TABLE_USOP_A1) do
  for HMI_param, PLC_param in pairs(AI_PARAM_TABLE) do
    Core.onExtChange({PLCID..signal..PLC_param, 'USOP_A1_FAULT.Connect'}, GRAB_AI_USOP_A1, {signal,st, HMI_param, PLC_param})
  end
end


Core.waitEvents()