 
-- СКРИПТ ОБРАБОТКИ ДАННЫХ ОТ ВХОДНЫХ И ВЫХОДНЫХ МОДУЛЕЙ ПЛК А2 УСО КТП2 вер. от 12-09-18

--Блок глобальных изменяемых для каждого узла переменных

	g_Logs=true --вести логи событий
	g_points=2 --количество точек для отслеживания дребезга
	g_bounce_check=false -- проверка дребезга контактов (true- включена)

 g_ScreenID="KTP8524"
 g_USO_ID="USOKTP2_"
 g_PLC_Desc="УСО КТП 8524. ПЛК A2" 
--local g_ObjID="GSP_SEV_KSSEV_E_"..g_USO_ID
 g_PLC_Name="A2_"
 g_ObjDesc= "КТП 8524. "

--Блок глобальных изменяемых для каждого узла переменных. КОНЕЦ

-- ///////////////////////main()////////////////////
-- подгрузим неизменяемы  в рамках проекта глобальные переменные и и основные циклы опроса входов
dofile(("./lua_lib/_main_process.lua")) 
Core.waitEvents( )-- ждем србытия из системы


