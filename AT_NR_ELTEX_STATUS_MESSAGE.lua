--local TS = 101
--local AS = 10000  
 local alarm_type = 10000
screen_id = 'DIAGN'

local source_table = {
['ELTEX1.'] = 'Коммутатор Eltex 169.254.1.17',
['ELTEX2.'] = 'Коммутатор Eltex 192.168.1.14',
['ELTEX3.'] = 'Коммутатор Eltex 192.168.1.15',
['ELTEX4.'] = 'Коммутатор Eltex 169.254.1.16',

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
["Device_Status"] =  'Потеря связи с устройством'
}

local function Add_Event(signal)
	local user = ''
	local DT_POSIX = os.time()		

local state

  		if Core[signal[1]..signal[2]] == false then
    		state = 1 
 	 	else
    		state = 0
  		end	


    local msg = msg_table[signal[2]]
	
		Core.addEvent(msg, alarm_type, state, source_table[signal[1]], user, signal[1]..signal[2], DT_POSIX ,screen_id) 
end

for signal, _ in pairs(source_table) do 
  for message, _ in pairs(msg_table) do
    Core.onExtChange({signal..message}, Add_Event, {signal, message})
  end
end

Core.waitEvents()