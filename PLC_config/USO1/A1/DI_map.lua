﻿-- УСО 1. ПЛК А1
-- конфигурация опрашиваемых дискретных входов
-- 	["1"] - номер слота модуля в корзине
--   i1="i1" - номер задействованного канала модуля
--


local RawDI={ -- карта задействованных дискретных входов, убрав номер из таблицы можно исключить вход из обработки-- зависит от таблицы подключений!!!!!!!!!!
		
		["3"]= {"i2", "i3", "i4" },
				-- i4", i5="i5", i6="i6", i7="i7",i8="i8",i9="i9",i10="i10",	i11="i11",	i12="i12",	i13="i13",	i14="i14",	i15="i15",	i16="i16",  },
		--["2"]= {i1="i1", i2="i2", i3="i3", i4="i4", i5="i5", i6="i6", i7="i7",i8="i8",i9="i9",i10="i10",	i11="i11",	i12="i12",	i13="i13",	i14="i14",	i15="i15",	i16="i16", },
--		["3"]= {i1="i1", i2="i2", i3="i3", i4="i4", i5="i5", i6="i6", i7="i7",i8="i8",i9="i9",i10="i10",	i11="i11",	i12="i12",	i13="i13",	i14="i14",	i15="i15",	i16="i16", },
	}
return RawDI;