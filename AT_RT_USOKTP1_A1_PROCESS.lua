--
-- СКРИПТ ОБРАБОТКИ ДАННЫХ ОТ ВХОДНЫХ И ВЫХОДНЫХ МОДУЛЕЙ ПЛК А1 УСО КТП1 вер. от 12-09-18

--Блок глобальных изменяемых для каждого узла переменных

	g_Logs=true --вести логи событий
	g_points=2 --количество точек для отслеживания дребезга
	g_bounce_check=false  -- проверка дребезга контактов (true- включена)

 g_ScreenID="KTP8516"
 g_USO_ID="USOKTP1_"
g_PLC_Desc="УСО КТП 8516. ПЛК A1" 
 g_ObjID="GSP_SEV_KSSEV_E_"..g_USO_ID
 g_PLC_Name="A1_"
 g_ObjDesc= "КТП 8516. "

dofile(("./lua_lib/_main_process.lua")) 
Core.waitEvents( )-- ждем србытия из системы