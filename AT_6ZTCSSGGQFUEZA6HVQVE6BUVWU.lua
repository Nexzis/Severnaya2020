local LocalID = 'GSP_SEV_KSSEV_E_'
local PLCID = 'PLC_GSP_SEV_KSSEV_E_'

--'USOGSU_A1_FAULT.Connect'
--'USOKTP1_A1_FAULT.Connect'
--'USOKTP2_A1_FAULT.Connect'
--'USOE_A1_FAULT.Connect'


BORD_TABLE_GSU = {
				'USOGSU_AI_PAN01_1Q_CUR_B',
				'USOGSU_AI_PAN01_1Q_V_AC',
				'USOGSU_AI_PAN01_1SEC_V_BC',
				'USOGSU_AI_PAN01_2Q_CUR_B',
				'USOGSU_AI_PAN01_2Q_V_AC',
				'USOGSU_AI_PAN01_2SEC_V_BC',
				'USOGSU_AI_X_RES01',
				'USOGSU_AI_X_RES02',
			
				}

BORD_TABLE_KTP1 = {
			'USOKTP1_AI_PAN01_1Q_CUR_B',
			'USOKTP1_AI_PAN01_1Q_V_AC',
			'USOKTP1_AI_PAN01_1SEC_V_BC',
			'USOKTP1_AI_PAN07_2Q_CUR_B',
			'USOKTP1_AI_PAN07_2Q_V_AC',
			'USOKTP1_AI_PAN07_2SEC_V_BC',
			'USOKTP1_AI_X_CUR_AC',
			'USOKTP1_AI_X_RES01',
			'USOKTP1_AI_X_RES02',
			'USOKTP1_AI_X_RES03',
			'USOKTP1_AI_X_RES04',
			'USOKTP1_AI_X_RES05',
			
				}

BORD_TABLE_KTP2 = {
				'USOKTP2_AI_PAN01_1Q_CUR_B',
				'USOKTP2_AI_PAN01_1Q_V_AC',
				'USOKTP2_AI_PAN01_1SEC_V_BC',
				'USOKTP2_AI_PAN07_2Q_CUR_B',
				'USOKTP2_AI_PAN07_2Q_V_AC',
				'USOKTP2_AI_PAN07_2SEC_V_BC',
				'USOKTP2_AI_PAN03_4Q_V_LIN',
				'USOKTP2_AI_SHUOT_CONT_V',
				'USOKTP2_AI_X_RES01',
				'USOKTP2_AI_X_RES02',
				'USOKTP2_AI_X_RES03',
				'USOKTP2_AI_X_RES04',

				}

BORD_TABLE_E = {
				'USOE_AI_1Q_V',
				'USOE_AI_2Q_V',
				'USOE_AI_SHUOT_V',
				'USOE_AI_X_RES01',
			
				}


PARAM_TABLE = {

			['.HH_ACT'] = '.HH_en',
			['.H_ACT'] = '.HL_en',
			['.L_ACT'] = '.LH_en',
			['.LL_ACT'] = '.LL_en',
			['.HH_SETP'] = '.HH',
			['.H_SETP'] = '.HL',
			['.L_SETP'] = '.LH',
			['.LL_SETP'] = '.LL',

			}


function GRAB_BORD(param_tables, Check_signal)
	local signal = param_tables[1]
	local PLC_param = param_tables[2]
	local HMI_param = param_tables[3]	
--	local HMI_param = param_tables[4]
    if  Core[Check_signal] == true then
		Core[PLCID..signal..PLC_param] = Core[LocalID..signal..HMI_param] 
	else
		return
	end

end


function GRAB_BORD_GSU_A1(param_tables)
	local Check_signal = 'USOGSU_A1_FAULT.Connect'
		GRAB_BORD(param_tables,Check_signal)
end

--for _, signal in pairs(BORD_TABLE_GSU) do
--  for HMI_param, PLC_param in pairs(PARAM_TABLE) do
--    GRAB_BORD_GSU_A1({signal, HMI_param, PLC_param})
--  end
--end

for _, signal in pairs(BORD_TABLE_GSU) do
  for PLC_param, HMI_param in pairs(PARAM_TABLE) do
    Core.onExtChange({LocalID..signal..HMI_param, 'USOGSU_A1_FAULT.Connect'}, GRAB_BORD_GSU_A1, {signal, PLC_param, HMI_param})
  end
end


function GRAB_BORD_KTP1_A1(param_tables)
	local Check_signal = 'USOKTP1_A1_FAULT.Connect'
		GRAB_BORD(param_tables,Check_signal)
end

--for _, signal in pairs(BORD_TABLE_KTP1) do
--  for HMI_param, PLC_param in pairs(PARAM_TABLE) do
--    GRAB_BORD_KTP1_A1({signal, HMI_param, PLC_param})
--  end
--end

for _, signal in pairs(BORD_TABLE_KTP1) do
  for PLC_param, HMI_param in pairs(PARAM_TABLE) do
    Core.onExtChange({LocalID..signal..HMI_param, 'USOKTP1_A1_FAULT.Connect'}, GRAB_BORD_KTP1_A1, {signal, PLC_param, HMI_param})
  end
end


function GRAB_BORD_KTP2_A1(param_tables)
	local Check_signal = 'USOKTP2_A1_FAULT.Connect'
		GRAB_BORD(param_tables,Check_signal)
end

--for _, signal in pairs(BORD_TABLE_KTP2) do
--  for HMI_param, PLC_param in pairs(PARAM_TABLE) do
--    GRAB_BORD_KTP2_A1({signal, HMI_param, PLC_param})
--  end
--end

for _, signal in pairs(BORD_TABLE_KTP2) do
  for PLC_param, HMI_param in pairs(PARAM_TABLE) do
    Core.onExtChange({LocalID..signal..HMI_param, 'USOKTP2_A1_FAULT.Connect'}, GRAB_BORD_KTP2_A1, {signal, PLC_param, HMI_param})
  end
end


function GRAB_BORD_E_A1(param_tables)
	local Check_signal = 'USOE_A1_FAULT.Connect'
		GRAB_BORD(param_tables,Check_signal)
end

--for _, signal in pairs(BORD_TABLE_E) do
--  for HMI_param, PLC_param in pairs(PARAM_TABLE) do
--    GRAB_BORD_E_A1({signal, HMI_param, PLC_param})
--  end
--end

for _, signal in pairs(BORD_TABLE_E) do
  for PLC_param, HMI_param in pairs(PARAM_TABLE) do
    Core.onExtChange({LocalID..signal..HMI_param, 'USOE_A1_FAULT.Connect'}, GRAB_BORD_E_A1, {signal, PLC_param, HMI_param})
  end
end

Core.waitEvents()