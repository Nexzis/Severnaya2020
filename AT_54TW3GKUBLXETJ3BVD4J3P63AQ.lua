--сигнал можно руками сделать нопр таким образом:
--есть функция setSignal(имя сигнала, значение, 0, флаг = 8192)
while true do

local flag
local flag1
local flag2
local flag3
local flag4
local flag5
local flag6
local flag7
local flag8
local flag9
local flag10
local flag11
local flag12
local flag13
local flag14
local flag15
local flag16
local flag17
local flag18
local flag19
local flag20
local flag21
local flag22
local flag23
local flag24
local flag25
local flag26

--[[if Core.USOKTP1_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B..reliabilityFlag == false then 
   flag = 8192
else
   flag = 0
end 
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B.Value.reliabilityFlagCore.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B.Value,0,flag)

--os.sleep(0.5)

				Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_CUR_B.reliabilityFlag
				Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_V_AC.reliabilityFlag
				Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1SEC_V_BC.reliabilityFlag
				Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_CUR_B.reliabilityFlag
				Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_V_AC.reliabilityFlag
				Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2SEC_V_BC.reliabilityFlag
				Core.GSP_SEV_KSSEV_E_USOGSU_AI_X_RES01.reliabilityFlag
				Core.GSP_SEV_KSSEV_E_USOGSU_AI_X_RES02.reliabilityFlag ]]

if Core.USOKTP1_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B.reliabilityFlag  == false then 
    flag = 8192
else
 	flag = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B.Value', Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_CUR_B.Value, 0,flag)


if Core.USOKTP1_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_V_AC.reliabilityFlag == false then
    flag1 = 8192
else
  	flag1 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_V_AC.Value', Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_V_AC.Value, 0,flag1)


if Core.USOKTP1_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1SEC_V_BC.reliabilityFlag == false then 
    flag2 = 8192
else
 	flag2 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1SEC_V_BC.Value', Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1SEC_V_BC.Value, 0,flag2)



if Core.USOKTP1_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_CUR_B.reliabilityFlag == false then 
    flag3 = 8192
else
  	flag3 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_CUR_B.Value', Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_CUR_B.Value, 0,flag3)



if Core.USOKTP1_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_V_AC.reliabilityFlag == false then 
    flag4 = 8192
else
	flag4 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_V_AC.Value', Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_V_AC.Value, 0,flag4)



if Core.USOKTP1_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2SEC_V_BC.reliabilityFlag == false then 
    flag5 = 8192
else
 	flag5 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2SEC_V_BC.Value', Core.GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2SEC_V_BC.Value, 0,flag5)




if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_CUR_B.reliabilityFlag == false then
    flag6 = 8192
else
 	flag6 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_CUR_B.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_CUR_B.Value, 0,flag6)




if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_V_AC.reliabilityFlag == false then
    flag7 = 8192
else
 	flag7 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_V_AC.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_V_AC.Value, 0,flag7)




if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1SEC_V_BC.reliabilityFlag == false then
    flag8 = 8192
else
	flag8 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1SEC_V_BC.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1SEC_V_BC.Value, 0,flag8)



if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_CUR_B.reliabilityFlag == false then
    flag9 = 8192
else
 	flag9 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_CUR_B.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_CUR_B.Value, 0,flag9)



if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_V_AC.reliabilityFlag == false then
    flag10 = 8192
else
 	flag10 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_V_AC.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_V_AC.Value, 0,flag10)



if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2SEC_V_BC.reliabilityFlag == false then
    flag11 = 8192
else
  	flag11 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2SEC_V_BC.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2SEC_V_BC.Value, 0,flag11)



if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN03_4Q_V_LIN.reliabilityFlag == false then
    flag12 = 8192
else
 	flag12 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_PAN03_4Q_V_LIN.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_PAN03_4Q_V_LIN.Value, 0,flag12)



if Core.USOKTP2_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOKTP2_AI_SHUOT_CONT_V.reliabilityFlag == false then
    flag13 = 8192
else
  	flag13 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOKTP2_AI_SHUOT_CONT_V.Value', Core.GSP_SEV_KSSEV_E_USOKTP2_AI_SHUOT_CONT_V.Value, 0,flag13)


if Core.USOE_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOE_AI_1Q_V.reliabilityFlag == false then
	flag14 = 8192
else
    flag14 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOE_AI_1Q_V.Value', Core.GSP_SEV_KSSEV_E_USOE_AI_1Q_V.Value, 0,flag14)



if Core.USOE_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOE_AI_2Q_V.reliabilityFlag == false then
	flag15 = 8192
else
    flag15 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOE_AI_2Q_V.Value', Core.GSP_SEV_KSSEV_E_USOE_AI_2Q_V.Value, 0,flag15)




if Core.USOE_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOE_AI_SHUOT_V.reliabilityFlag == false then
	flag16 = 8192
else
    flag16 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOE_AI_SHUOT_V.Value', Core.GSP_SEV_KSSEV_E_USOE_AI_SHUOT_V.Value, 0,flag16)




if Core.USOGSU_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_CUR_B.reliabilityFlag == false then
	flag17 = 8192
else
    flag17 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_CUR_B.Value', Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_CUR_B.Value, 0,flag17)


if Core.USOGSU_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_V_AC.reliabilityFlag == false then
	flag18 = 8192
else
    flag18 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_V_AC.Value', Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_V_AC.Value, 0,flag18)



if Core.USOGSU_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1SEC_V_BC.reliabilityFlag == false then
	flag19 = 8192
else
    flag19 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1SEC_V_BC.Value', Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1SEC_V_BC.Value, 0,flag19)



if Core.USOGSU_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_CUR_B.reliabilityFlag == false then
	flag20 = 8192
else
    flag20 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_CUR_B.Value', Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_CUR_B.Value, 0,flag20)




if Core.USOGSU_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_V_AC.reliabilityFlag == false then
	flag21 = 8192
else
    flag21 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_V_AC.Value', Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_V_AC.Value, 0,flag21)



if Core.USOGSU_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2SEC_V_BC.reliabilityFlag == false then
	flag22 = 8192
else
    flag22 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2SEC_V_BC.Value', Core.GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2SEC_V_BC.Value, 0,flag22)


if Core.USOP_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE1.reliabilityFlag == false then
	flag23 = 8192
else
    flag23 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOP_AI_W_PIPE1.Value', Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE1.Value, 0,flag23)
--GSP_SEV_KSSEV_E_USOP_AI_W_PIPE1

if Core.USOP_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE2.reliabilityFlag == false then
	flag24 = 8192
else
    flag24 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOP_AI_W_PIPE2.Value', Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE2.Value, 0,flag24)


if Core.USOP_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE3.reliabilityFlag == false then
	flag25 = 8192
else
    flag25 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOP_AI_W_PIPE3.Value', Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE3.Value, 0,flag25)


if Core.USOP_A1_FAULT.Connect == false or Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE4.reliabilityFlag == false then
	flag26 = 8192
else
    flag26 = 0
end
Core.setSignal('GSP_SEV_KSSEV_E_USOP_AI_W_PIPE4.Value', Core.GSP_SEV_KSSEV_E_USOP_AI_W_PIPE4.Value, 0,flag26)


os.sleep(0.01)

end
