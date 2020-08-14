--=================ПЕРЕПРИСВОЕНИЕ ДИСКРЕТНЫХ ВЫХОДНЫХ СИГНАЛОВ И ФЛАГОВ ДОСТОВЕРНОСИТИ=======--

local LocalID = 'GSP_SEV_KSSEV_E_'
local PLCID = 'PLC_GSP_SEV_KSSEV_E_'

				-------------------------
				--ВАЖНО заменить сигнал--
				-------------------------

local Check_signal_gsu = 'USOGSU_A1_FAULT.Connect'
local Check_signal_ktp1 = 'USOKTP1_A2_FAULT.Connect'
local Check_signal_ktp2 = 'USOKTP2_A2_FAULT.Connect'
local Check_signal_usop = 'USOP_A1_FAULT.Connect'
local Check_signal_sauvos = 'SAUVOS_A1_FAULT.Connect'

DO_SIG_TABLE_gsu = {
			'USOGSU_DO_PAN01_1Q_OFF',
			'USOGSU_DO_PAN01_1Q_ON',
			'USOGSU_DO_PAN01_2Q_OFF',
			'USOGSU_DO_PAN01_2Q_ON',
			'USOGSU_DO_X_AvOST',
			'USOGSU_DO_X_RES13',
			'USOGSU_DO_X_RES14',
			'USOGSU_DO_X_RES15',
			'USOGSU_DO_X_RES16',
			'USOGSU_DO_X_RES17',
			'USOGSU_DO_X_RES18',
			'USOGSU_DO_X_RES19',
			'USOGSU_DO_X_RES20',
			'USOGSU_DO_X_RES21',
			'USOGSU_DO_X_RES22',
			'USOGSU_DO_X_RES23',

				}

DO_SIG_TABLE_ktp1 = {
	
              'USOKTP1_DO_PAN01_1Q_OFF',
              'USOKTP1_DO_PAN01_1Q_ON' ,
              'USOKTP1_DO_AS_START',
              'USOKTP1_DO_AS_STOP',
              'USOKTP1_DO_PAN07_2Q_OFF',
              'USOKTP1_DO_PAN07_2Q_ON',
              'USOKTP1_DO_PAN09_3Q_OFF',
              'USOKTP1_DO_PAN09_3Q_ON',
              'USOKTP1_DO_PAN08_AVRSV_ON',
              'USOKTP1_DO_PAN08_AVRSV_OFF',
              'USOKTP1_DO_PAN02_AVRAS_ON',
              'USOKTP1_DO_PAN02_AVRAS_OFF',
              'USOKTP1_DO_ADES_AVG_ON',
              'USOKTP1_DO_ADES_AVG_OFF',
              'USOKTP1_DO_ADES_START',
              'USOKTP1_DO_ADES_STOP',
              'USOKTP1_DO_X_RES38',
              'USOKTP1_DO_X_RES39',
              'USOKTP1_DO_X_RES40',
              'USOKTP1_DO_X_RES41',
              'USOKTP1_DO_X_RES42',
              'USOKTP1_DO_X_RES43',
              'USOKTP1_DO_X_RES44',
              'USOKTP1_DO_X_RES45',
              'USOKTP1_DO_X_RES46',
              'USOKTP1_DO_X_RES47',
              'USOKTP1_DO_X_RES48',
              'USOKTP1_DO_X_RES49',
              'USOKTP1_DO_X_RES50',
              'USOKTP1_DO_X_RES51',
              'USOKTP1_DO_X_RES52',
              'USOKTP1_DO_X_RES53',

				}


DO_SIG_TABLE_ktp2 = {
	
              'USOKTP2_DO_PAN01_1Q_OFF',
              'USOKTP2_DO_PAN01_1Q_ON',
              'USOKTP2_DO_PAN07_2Q_OFF',
              'USOKTP2_DO_PAN07_2Q_ON',
              'USOKTP2_DO_PAN03_4Q_OFF',
              'USOKTP2_DO_PAN03_4Q_ON',
              'USOKTP2_DO_PAN09_3Q_OFF',
              'USOKTP2_DO_PAN09_3Q_ON',
              'USOKTP2_DO_PAN09_AVRSV_ON',
              'USOKTP2_DO_PAN09_AVRSV_OFF',
              'USOKTP2_DO_PAN03_AVRAS_ON',
              'USOKTP2_DO_PAN03_AVRAS_OFF',
              'USOKTP2_DO_X_RES35',
              'USOKTP2_DO_X_RES36',
              'USOKTP2_DO_X_RES37',
              'USOKTP2_DO_X_RES38',
              'USOKTP2_DO_X_RES39',
              'USOKTP2_DO_X_RES40',
              'USOKTP2_DO_X_RES41',
              'USOKTP2_DO_X_RES42',
              'USOKTP2_DO_X_RES43',
              'USOKTP2_DO_X_RES44',
              'USOKTP2_DO_X_RES45',
              'USOKTP2_DO_X_RES46',
              'USOKTP2_DO_X_RES47',
              'USOKTP2_DO_X_RES48',
              'USOKTP2_DO_X_RES49',
              'USOKTP2_DO_X_RES50',
              'USOKTP2_DO_X_RES51',
              'USOKTP2_DO_X_RES52',
              'USOKTP2_DO_X_RES53',
              'USOKTP2_DO_X_RES54',


				}

DO_SIG_TABLE_usop = {
              'USOP_DO_H1_ON',
              'USOP_DO_H2_ON',
              'USOP_DO_H3_ON',
              'USOP_DO_H4_ON',
              'USOP_DO_X_RES08',
              'USOP_DO_X_RES09',
              'USOP_DO_X_RES10',
              'USOP_DO_X_RES11',
              'USOP_DO_X_RES12',
              'USOP_DO_X_RES13',
              'USOP_DO_X_RES14',
              'USOP_DO_X_RES15',
              'USOP_DO_X_RES16',
              'USOP_DO_X_RES17',
              'USOP_DO_X_RES18',
              'USOP_DO_X_RES19',
					
				}



DO_SIG_TABLE_sauvos = {
			'SAUVOS_DO_ART2_H_ON',
			'SAUVOS_DO_X_RES12',
			'SAUVOS_DO_X_RES13',
			'SAUVOS_DO_X_RES14',
			'SAUVOS_DO_X_RES15',
			'SAUVOS_DO_X_RES16',
			'SAUVOS_DO_X_RES17',
			'SAUVOS_DO_X_RES18',
			'SAUVOS_DO_X_RES19',
			'SAUVOS_DO_X_RES20',
			'SAUVOS_DO_X_RES21',
			'SAUVOS_DO_X_RES22',
			'SAUVOS_DO_X_RES23',
			'SAUVOS_DO_X_RES24',
			'SAUVOS_DO_X_RES25',
			'SAUVOS_DO_X_RES26',

				}



function GRAB_DO_Value_gsu(DO_params)
	local signal = DO_params[1]
	if  Core[Check_signal_gsu] == true then
		if 	Core[LocalID..signal..'.Value']   and   Core[LocalID..signal..'.reliabilityFlag'] then 
	  	  Core[PLCID..signal..'.Value'] = Core[LocalID..signal..'.Value'] 
		else	
	  	  Core[PLCID..signal..'.Value'] = false
		end
	end
end

for _, signal in pairs(DO_SIG_TABLE_gsu) do
  Core.onExtChange({LocalID..signal..'.Value'}, GRAB_DO_Value_gsu, {signal})
end

function GRAB_DO_Flag_gsu(DO_params)
	local signal = DO_params[1]
		if  Core[Check_signal_gsu] == true then
			Core[LocalID..signal..'.reliabilityFlag'] = Core[PLCID..signal..'.reliabilityFlag']
		else
			Core[LocalID..signal..'.reliabilityFlag'] = false
			Core[PLCID..signal..'.reliabilityFlag'] = false
		end
end

for _, signal in pairs(DO_SIG_TABLE_gsu) do
  Core.onExtChange({PLCID..signal..'.reliabilityFlag',Check_signal_gsu}, GRAB_DO_Flag_gsu, {signal})
end

for _, signal in pairs(DO_SIG_TABLE_gsu) do
  GRAB_DO_Flag_gsu({signal})
end



function GRAB_DO_Value_ktp1(DO_params)
	local signal = DO_params[1]
	if  Core[Check_signal_ktp1] == true then
		if 	Core[LocalID..signal..'.Value']   and   Core[LocalID..signal..'.reliabilityFlag'] then 
	  	  Core[PLCID..signal..'.Value'] = Core[LocalID..signal..'.Value'] 
		else	
	  	  Core[PLCID..signal..'.Value'] = false
		end
	end
end

for _, signal in pairs(DO_SIG_TABLE_ktp1) do
  Core.onExtChange({LocalID..signal..'.Value'}, GRAB_DO_Value_ktp1, {signal})
end

function GRAB_DO_Flag_ktp1(DO_params)
	local signal = DO_params[1]
		if  Core[Check_signal_ktp1] == true then
			Core[LocalID..signal..'.reliabilityFlag'] = Core[PLCID..signal..'.reliabilityFlag']
		else
			Core[LocalID..signal..'.reliabilityFlag'] = false
			Core[PLCID..signal..'.reliabilityFlag'] = false
		end
end

for _, signal in pairs(DO_SIG_TABLE_ktp1) do
  GRAB_DO_Flag_ktp1({signal})
end

for _, signal in pairs(DO_SIG_TABLE_ktp1) do
  Core.onExtChange({PLCID..signal..'.reliabilityFlag',Check_signal_ktp1}, GRAB_DO_Flag_ktp1, {signal})
end





function GRAB_DO_Value_ktp2(DO_params)
	local signal = DO_params[1]
	if  Core[Check_signal_ktp2] == true then
		if 	Core[LocalID..signal..'.Value']   and   Core[LocalID..signal..'.reliabilityFlag'] then 
	  	  Core[PLCID..signal..'.Value'] = Core[LocalID..signal..'.Value'] 
		else	
	  	  Core[PLCID..signal..'.Value'] = false
		end
	end
end

for _, signal in pairs(DO_SIG_TABLE_ktp2) do
  Core.onExtChange({LocalID..signal..'.Value'}, GRAB_DO_Value_ktp2, {signal})
end

function GRAB_DO_Flag_ktp2(DO_params)
	local signal = DO_params[1]
		if  Core[Check_signal_ktp2] == true then
			Core[LocalID..signal..'.reliabilityFlag'] = Core[PLCID..signal..'.reliabilityFlag']
		else
			Core[LocalID..signal..'.reliabilityFlag'] = false
			Core[PLCID..signal..'.reliabilityFlag'] = false
		end
end

for _, signal in pairs(DO_SIG_TABLE_ktp2) do
  GRAB_DO_Flag_ktp2({signal})
end

for _, signal in pairs(DO_SIG_TABLE_ktp2) do
  Core.onExtChange({PLCID..signal..'.reliabilityFlag',Check_signal_ktp2}, GRAB_DO_Flag_ktp2, {signal})
end





function GRAB_DO_Value_usop(DO_params)
	local signal = DO_params[1]
	if  Core[Check_signal_usop] == true then
		if 	Core[LocalID..signal..'.Value']   and   Core[LocalID..signal..'.reliabilityFlag'] then 
	  	  Core[PLCID..signal..'.Value'] = Core[LocalID..signal..'.Value'] 
		else	
	  	  Core[PLCID..signal..'.Value'] = false
		end
	end
end

for _, signal in pairs(DO_SIG_TABLE_usop) do
  Core.onExtChange({LocalID..signal..'.Value'}, GRAB_DO_Value_usop, {signal})
end

function GRAB_DO_Flag_usop(DO_params)
	local signal = DO_params[1]
		if  Core[Check_signal_usop] == true then
			Core[LocalID..signal..'.reliabilityFlag'] = Core[PLCID..signal..'.reliabilityFlag']
		else
			Core[LocalID..signal..'.reliabilityFlag'] = false
			Core[PLCID..signal..'.reliabilityFlag'] = false
		end
end

for _, signal in pairs(DO_SIG_TABLE_usop) do
  GRAB_DO_Flag_usop({signal})
end

for _, signal in pairs(DO_SIG_TABLE_usop) do
  Core.onExtChange({PLCID..signal..'.reliabilityFlag',Check_signal_usop}, GRAB_DO_Flag_usop, {signal})
end





function GRAB_DO_Value_sauvos(DO_params)
	local signal = DO_params[1]
		if  Core[Check_signal_sauvos] == true then
		if 	Core[LocalID..signal..'.Value']   and   Core[LocalID..signal..'.reliabilityFlag'] then 
	  	  Core[PLCID..signal..'.Value'] = Core[LocalID..signal..'.Value'] 
		else	
	  	  Core[PLCID..signal..'.Value'] = false
		end
	end
end

for _, signal in pairs(DO_SIG_TABLE_sauvos) do
  Core.onExtChange({LocalID..signal..'.Value'}, GRAB_DO_Value_sauvos, {signal})
end


function GRAB_DO_Flag_sauvos(DO_params)
	local signal = DO_params[1]
		if  Core[Check_signal_sauvos] == true then
			Core[LocalID..signal..'.reliabilityFlag'] = Core[PLCID..signal..'.reliabilityFlag']
		else
			Core[LocalID..signal..'.reliabilityFlag'] = false
			Core[PLCID..signal..'.reliabilityFlag'] = false
		end
end

for _, signal in pairs(DO_SIG_TABLE_sauvos) do
  GRAB_DO_Flag_sauvos({signal})
end

for _, signal in pairs(DO_SIG_TABLE_sauvos) do
  Core.onExtChange({PLCID..signal..'.reliabilityFlag',Check_signal_usop}, GRAB_DO_Flag_sauvos, {signal})
end


Core.waitEvents()