-- перечень узлов системы
-- применяется в скрипте диагностики состояния соединений Nodes_Connect

local nodes={
--["ASUE_Server_N1"]={["addr"]="ASUE_Server_N1", ["app"]="Loader", ["offline"]="FAULT" , ["Comment"]="Cервер №1 АСУЭ", ["IP"]="192.168.1.11", Port=10000},
--["ASUE_Server_N2"]={["addr"]="ASUE_Server_N2", ["app"]="Loader", ["offline"]="FAULT" , ["Comment"]="Cервер №2 АСУЭ", ["IP"]="192.168.1.12", Port=10000},
--["USO1_A1"]={["addr"]="USO1_A1", ["app"]="Loader", ["offline"]="FAULT.Connect" , ["Comment"]="УСО 1 (ПЛК А1)"},
["USOE_A1"]={["addr"]="USOE_A1", ["app"]="USOE_A1_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО Э (ПЛК А1)"},
["USOKTP1_A1"]={["addr"]="USOKTP1_A1", ["app"]="USOKTP1_A1_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО КТП1 (ПЛК А1)"},
["USOKTP2_A1"]={["addr"]="USOKTP2_A1", ["app"]="USOKTP2_A1_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО КТП2 (ПЛК А1)"},
["USOKTP1_A2"]={["addr"]="USOKTP1_A2", ["app"]="USOKTP1_A2_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО КТП1 (ПЛК А2)"},
["USOKTP2_A2"]={["addr"]="USOKTP2_A2", ["app"]="USOKTP2_A2_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО КТП2 (ПЛК А2)"},
["USOGSU_A1"]={["addr"]="USOGSU_A1", ["app"]="USOGSU_A1_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО ГЩУ (ПЛК А1)"},
["USOP_A1"]={["addr"]="USOP_A1", ["app"]="USOP_A1_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО П (ПЛК А1)"},
["USOK_A1"]={["addr"]="USOK_A1", ["app"]="USOK_A1_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="УСО К (ПЛК А1)"},
["SAUVOS_A1"]={["addr"]="SAUVOS_A1", ["app"]="SAUVOS_A1_Data_Collect", ["offline"]="FAULT.Connect" , ["Comment"]="САУ ВОС (ПЛК А1)"},
["ARM_1"]={["addr"]="ARM_1", ["app"]="Loader", ["offline"]="FAULT" , ["Comment"]="АРМ №1", ["IP"]="192.168.1.5",},
["ARM_2"]={["addr"]="ARM_2", ["app"]="Loader", ["offline"]="FAULT" , ["Comment"]="АРМ №2", ["IP"]="192.168.1.6", ["WatchDog"]=true},
["ARM_3"]={["addr"]="ARM_3", ["app"]="Loader", ["offline"]="FAULT" , ["Comment"]="АРМ инженера-релейщика", ["IP"]="192.168.1.7"},


}
return nodes