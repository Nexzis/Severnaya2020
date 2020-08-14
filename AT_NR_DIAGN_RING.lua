local alarm_type = 10000
local screen_id = 'DIAGN'
local source = 'Диагностика сети'

local msg_table = {
['Обрыв сегмента кольца между ELTEX №1 и УСО Э']          ={'ELTEX3.PortXG3_State'   , 'ELTEX_com9.Port9_State'},
['Обрыв сегмента кольца между УСО Э и УСО КТП1']          ={'ELTEX_com9.Port10_State', 'ELTEX_com1.Port9_State'},
['Обрыв сегмента кольца между УСО КТП1 и УСО ГЩУ']        ={'ELTEX_com1.Port10_State', 'ELTEX_com3.Port9_State'},
['Обрыв сегмента кольца между УСО ГЩУ и УСО КТП2']        ={'ELTEX_com3.Port10_State', 'ELTEX_com2.Port9_State'},
['Обрыв сегмента кольца УСО КТП2 и УСО КОС1']             ={'ELTEX_com2.Port10_State', 'ELTEX_com7.Port9_State'},
['Обрыв сегмента кольца между УСО КОС1 и УСО КОС2'] 	  ={'ELTEX_com7.Port10_State', 'ELTEX_com8.Port9_State'},
['Обрыв сегмента кольца между УСО КОС2 и САУ ВОС']        ={'ELTEX_com8.Port10_State', 'ELTEX_com4.Port9_State'},
['Обрыв сегмента кольца между САУ ВОС и УСО П']           ={'ELTEX_com4.Port10_State', 'ELTEX_com5.Port9_State'},
['Обрыв сегмента кольца между УСО П и УСО К']             ={'ELTEX_com5.Port10_State', 'ELTEX_com6.Port9_State'},
['Обрыв сегмента кольца между УСО К и ELTEX №2']          ={'ELTEX_com6.Port10_State', 'ELTEX2.PortXG3_State',},
}

local function Add_Event(signal)
	local user = ''
	local DT_POSIX = os.time()

  		if (Core[signal[1]] == 1 and Core[signal[2]] == 1)  then    --устанавливает аргумент state = 0 когда оба опрашиваемых сигнала равны 1 
    		state = 0 
 	 	elseif (Core[signal[1]] == 2 and Core[signal[2]] == 2)  then --устанавливает аргумент state = 1 когда оба опрашиваемых сигнала равны 0 
    		state = 1
		else
			return					-- необходимо для исключения вариантов с опрашиваемыми сигналами 0-1, 1-0
  		end	
	msg = signal[3]	

	Core.addEvent(msg, alarm_type, state, source, user, signal[1]..signal[2], DT_POSIX ,screen_id)
end

  for message, signal in pairs(msg_table) do
    Core.onExtChange({signal[1], signal[2]}, Add_Event, { signal[1], signal[2], message})
  end

Core.waitEvents()



	