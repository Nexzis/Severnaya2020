﻿-- УСО 1. ПЛК А1
-- конфигурация опрашиваемых аналоговых входов 
-- 	["1"] - номер слота модуля в корзине
--   i1="i1" - номер задействованного канала модуля
--

local RawAI={ -- карта задействованных аналоговых входов, убрав номер из таблицы можно исключить вход из обработки-- зависит от таблицы подключений!!!!!!!!!!
		
		["6"]= {i1="i1", i2="i2", i3="i3", i4="i4",},
		--["5"]= {i1="i1", i2="i2", i3="i3", i4="i4", },
		--["6"]= {i1="i1", i2="i2", i3="i3", i4="i4",},
			}
return RawAI;