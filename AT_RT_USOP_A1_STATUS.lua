-- скрипт установления достоверности сигнала в зависимости от состояния модуля и канала ПЛК А1 УСО П вер. от 12-09-18
--Блок глобальных изменяемых для каждого узла переменных
 g_Logs=true 
 g_ScreenID="P" 
 g_USO_ID="USOP_" -- идентификатор технологического объекта
 g_PLC_Name="A1_" -- название контроллера в УСО
 g_ObjDesc= "Пожарная насосная. "--описание источника сигналов
 g_PLC_Desc="УСО П. ПЛК A1. " 
 g_Logs=true --вести логи событий
--Блок глобальных изменяемых для каждого узла переменных. КОНЕЦ 
-- ///////////////////////main()////////////////////
-- подгрузим неизменяемые  в рамках проекта глобальные переменные и и основные циклы опроса входов
dofile(("./lua_lib/_main_status.lua")) 

Core.waitEvents( )-- ждем события из системы