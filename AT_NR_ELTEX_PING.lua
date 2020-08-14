ping_table = {
["ELTEX1.Device_Status"] =	"169.254.1.17",	
["ELTEX2.Device_Status"] =	"192.168.1.14",		
["ELTEX3.Device_Status"] =	"192.168.1.15",		
["ELTEX4.Device_Status"] =	"169.254.1.16",	

["ELTEX_com1.Device_Status"] =	"192.168.1.23",	
["ELTEX_com2.Device_Status"] =	"192.168.1.33",		
["ELTEX_com3.Device_Status"] =	"192.168.1.43",		
["ELTEX_com4.Device_Status"] =	"192.168.1.53",	
["ELTEX_com5.Device_Status"] =	"192.168.1.63",	
["ELTEX_com6.Device_Status"] =	"192.168.1.73",		
["ELTEX_com7.Device_Status"] =	"192.168.1.83",		
["ELTEX_com8.Device_Status"] =	"192.168.1.93",	
["ELTEX_com9.Device_Status"] =	"192.168.1.103",	
}

while true do 
for signal,ip in pairs(ping_table) do 
		local ping_Eltex = {}
		local counter=0
		for j=1,3,1 do -- три попытки пинга
			ping_Eltex[j], ping_error = os.ping(ip) --заносятся в таблицу
			-- и считаются успешные
			if ping_Eltex[j]==true --если текущая успешная
			then
				counter=counter+1 --увеличим счетчик
			end--			if ping_BPG[j]~=ping_BPG[j+1]
			os.sleep(0.5)
		end--for j = 1, 3, 1 do 	
			if counter<2 --если насчитали менее 2 успешных пинга
			then
				ping_fault=true --считаем, что связь потеряна
			else
				ping_fault=false -- всё ОК
			end--if counter<2
--			if ping_success and ping_error == nil then
		if ping_fault==false then
				Core.addLogMsg(ip.." online.".." Удачных попыток:"..counter.." из 3")
				Core[signal] = true

			else
				Core.addLogMsg(ip.." offline_offline_offline.".." Удачных попыток:"..counter.." из 3")
				Core[signal] = false
			end--if ping_success and ping_error == nil then

		os.sleep(1)
	end--for i = 1, 3, 1 do 

os.sleep(1)
end