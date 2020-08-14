--local TS = 101
--local AS = 10000  
 local alarm_type = 101
screen_id = 'DIAGN'

local source_table = {
['ELTEX_com1.'] = 'КТП №8516. Коммутатор Eltex 192.168.1.23',
['ELTEX_com2.'] = 'КТП №8524. Коммутатор Eltex 192.168.1.33',
['ELTEX_com3.'] = 'Электрощитовая МСС-7. Коммутатор Eltex 192.168.1.43',
['ELTEX_com4.'] = 'ВОС. Коммутатор Eltex 192.168.1.53',
['ELTEX_com5.'] = 'УСО П. Коммутатор Eltex 192.168.1.63',
['ELTEX_com6.'] = 'УСО К. Коммутатор Eltex 192.168.1.73',
['ELTEX_com7.'] = 'КОС1. Коммутатор Eltex 192.168.1.83',
['ELTEX_com8.'] = 'КОС2. Коммутатор Eltex 192.168.1.93',
['ELTEX_com9.'] = 'УСО Э. Коммутатор Eltex 192.168.1.103',
					 }

local msg_table = {
["Port1_State"] =  'Порт 1 включен',
["Port2_State"] =  'Порт 2 включен',
["Port3_State"] =  'Порт 3 включен',
["Port4_State"] =  'Порт 4 включен',
["Port5_State"] =  'Порт 5 включен',
["Port6_State"] =  'Порт 6 включен',
["Port7_State"] =  'Порт 7 включен',
["Port8_State"] =  'Порт 8 включен',
["Port9_State"] =  'Порт 9 включен',
["Port10_State"] = 'Порт 10 включен',
}

local function Add_Event(signal)
	local user = ''
	local DT_POSIX = os.time()		

local state = 0

  		if Core[signal[1]..signal[2]] == 1 then
    		state = 1 
 	 	else
    		state = 0
  		end	


    local msg = msg_table[signal[2]]
	
		Core.addEvent(msg, alarm_type, state, source_table[signal[1]], user, '', DT_POSIX ,screen_id) 
end

for signal, _ in pairs(source_table) do 
  for message, _ in pairs(msg_table) do
    Core.onExtChange({signal..message}, Add_Event, {signal, message})
  end
end

Core.waitEvents()