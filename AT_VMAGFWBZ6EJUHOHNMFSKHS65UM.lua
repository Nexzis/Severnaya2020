-- скрипт счетчика работы узла
local USO_ind=8 --уникальный номер УСО(индекс массива)

require(("./lua_lib/_WD_counter")) --подгрузим библиотеку

g_cnt=0 --первоначальное зхначение счетчика
while (true) do
	g_cnt=up_cnt(g_cnt)
	Core.PLC_WD_CNT[USO_ind]=g_cnt
	os.sleep(1)
end
