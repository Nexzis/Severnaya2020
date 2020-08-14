--local TS = 101
--local AS = 10000  
 local alarm_type = 101
screen_id = 'DIAGN'

local source_table = {
['ELTEX1.'] = 'Коммутатор Eltex 169.254.1.17',
['ELTEX2.'] = 'Коммутатор Eltex 192.168.1.14',
['ELTEX3.'] = 'Коммутатор Eltex 192.168.1.15',
['ELTEX4.'] = 'Коммутатор Eltex 169.254.1.16'
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
["Port11_State"] = 'Порт 11 включен',
["Port12_State"] = 'Порт 12 включен',
["Port13_State"] = 'Порт 13 включен',
["Port14_State"] = 'Порт 14 включен',
["Port15_State"] = 'Порт 15 включен',
["Port16_State"] = 'Порт 16 включен',
["Port17_State"] = 'Порт 17 включен',
["Port18_State"] = 'Порт 18 включен',
["Port19_State"] = 'Порт 19 включен',
["Port20_State"] = 'Порт 20 включен',
["Port21_State"] = 'Порт 21 включен',
["Port22_State"] = 'Порт 22 включен',
["Port23_State"] = 'Порт 23 включен',
["Port24_State"] = 'Порт 24 включен',
["PortXG1_State"] = 'Порт XG1 включен',
["PortXG2_State"] = 'Порт XG2 включен',
["PortXG3_State"] = 'Порт XG3 включен',
["PortXG4_State"] = 'Порт XG4 включен'
}

local function Add_Event(signal)
	local user = ''
	local DT_POSIX = os.time()		

local state

  		if Core[signal[1]..signal[2]] == 1 then
    		state = 1 
 	 	elseif Core[signal[1]..signal[2]] == 2 then
    		state = 0
		else
			return
  		end	


    local msg = msg_table[signal[2]]
	
		Core.addEvent(msg, alarm_type, state, source_table[signal[1]], user, source_table[signal[1]]..msg, DT_POSIX ,screen_id) 
end

for signal, _ in pairs(source_table) do 
  for message, _ in pairs(msg_table) do
    Core.onExtChange({signal..message}, Add_Event, {signal, message})
  end
end

Core.waitEvents()