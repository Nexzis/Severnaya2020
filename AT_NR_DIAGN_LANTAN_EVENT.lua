-- присваиваем категорию события
local AS=10000  
local WS=10100 
local TS=101  
screen_id = 'DIAGN'


-- создаем функцию
local function Add_Event(signal, fields, cond)
	local user=''
	local DT_POSIX=os.time()				
	if cond[1]  then --если  "Сигнал" равен условию (1) то вызываем  событие с параметрами (сообщение, категория, появление/исчезновение, источник, пользователь, ууайди, время, мета)
		Core.addEvent(fields.msg, fields.cat, 1, fields.source, user, signal..fields.cat, DT_POSIX ,screen_id) 
		if Log then 
			Core.addLogMsg(DT.." ".."(Появл.) ".. fields.msg.." "..user.." "..signal.." "..fields.cat) 
		end 
	elseif cond[2] then  -- другое условие и то же самое
		Core.addEvent(fields.msg, fields.cat, 0, fields.source, user, signal..fields.cat, DT_POSIX, screen_id) 
		if Log then 
			Core.addLogMsg(DT.." ".."(Исчезн.)"..fields.msg.." "..user.." "..signal.." "..fields.cat) 
		end 
	
	end
end

local simple_signals =      
{
--УСОКТП1.Лантан.А4.IP=25
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[0]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОКТП №8516.Лантан.А4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[0]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[0]']==1})           
					end
	},
--УСОКТП1.Лантан.А5.IP=26
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[1]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОКТП №8516.Лантан.А5',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[1]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[1]']==1})           
					end
	},
--УСОКТП2.Лантан.А4.IP=35
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[2]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОКТП №8524.Лантан.А4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[2]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[2]']==1})           
					end
	},
--УСОКТП2.Лантан.А5.IP=36
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[3]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОКТП №8524.Лантан.А5',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[3]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[3]']==1})           
					end
	},
--УСОГЩУ.Лантан.А4.IP=45
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[4]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОМСС-7.Лантан.А4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[4]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[4]']==1})           
					end
	},
--УСОГЩУ.Лантан.А5.IP=46
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[5]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОМСС-7.Лантан.А5',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[5]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[5]']==1})           
					end
	},
--УСОГЩУ.Лантан.А6.IP=47
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[6]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОМСС-7.Лантан.А6',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[6]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[6]']==1})           
					end
	},
--УСОГЩУ.Лантан.А7.IP=48
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[7]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОМСС-7.Лантан.А7',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[7]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[7]']==1})           
					end
	},
--САУВОС.Лантан.А5.IP=55	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[8]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='САУВОС.Лантан.А5',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[8]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[8]']==1})           
					end
	},
--САУВОС.Лантан.А6.IP=56	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[9]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='САУВОС.Лантан.А6',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[9]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[9]']==1})           
					end
	},
--САУВОС.Лантан.А7.IP=57	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[10]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='САУВОС.Лантан.А7',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[10]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[10]']==1})           
					end
	},
--САУВОС.Лантан.А8.IP=58	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[11]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='САУВОС.Лантан.А8',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[11]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[11]']==1})           
					end
	},
--УСОП.Лантан.А3.IP=65	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[12]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОП.Лантан.А3',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[12]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[12]']==1})           
					end
	},
--УСОП.Лантан.А4.IP=66	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[13]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОП.Лантан.А4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[13]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[13]']==1})           
					end
	},
--УСОК.Лантан.А5.IP=74	
--[[	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[14]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОК.Лантан.А5',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[14]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[14]']==1})           
					end
	},]]
--УСОК.Лантан.А6.IP=75	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[15]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОК.Лантан.А6',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[15]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[15]']==1})           
					end
	},
--УСОК.Лантан.А7.IP=76	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[16]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОК.Лантан.А7',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[16]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[16]']==1})           
					end
	},
--УСОК.Лантан.А8.IP=77	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[17]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОК.Лантан.А8',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[17]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[17]']==1})           
					end
	},
--УСОК.Лантан.А9.IP=78	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[18]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОК.Лантан.А9',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[18]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[18]']==1})           
					end
	},
--УСОК.Лантан.А10.IP=79	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[19]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОК.Лантан.А10',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[19]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[19]']==1})           
					end
	},
--УСОКОС1.Лантан.А?.IP=85	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[20]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОКОС1.Лантан.А1*',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[20]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[20]']==1})           
					end
	},
--УСОКОС2.Лантан.А?.IP=95
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[21]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОКОС2.Лантан.А1*',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[21]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[21]']==1})           
					end
	},
--УСОЭ.Лантан.А5.IP=104	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[22]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОЭ.Лантан.А5',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[22]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[22]']==1})           
					end
	},
--УСОЭ.Лантан.А6.IP=105
--[[	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[23]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОЭ.Лантан.А6',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[23]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[23]']==1})           
					end
	},]]
--УСОЭ.Лантан.А7.IP=106	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[24]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОЭ.Лантан.А7',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[24]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[24]']==1})           
					end
	},
--УСОЭ.Лантан.А8.IP=107	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[25]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОЭ.Лантан.А8',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[25]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[25]']==1})           
					end
	},
--УСОЭ.Лантан.А9.IP=108	
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[26]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОЭ.Лантан.А9',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[26]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[26]']==1})           
					end
	},
--УСОЭ.Лантан.А10.IP=109
	['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[27]']=            
	{
		['msg']='Потеря связи с устройством',                   
		['cat']=AS,
		['state']=2,
		['source']='УСОЭ.Лантан.А10',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[27]']==2 ,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION[27]']==1})           
					end
	},
	
}

for c_signal,c_fields in pairs (simple_signals)do
	Core.onExtChange ({c_signal}, c_fields.eval, {c_signal, c_fields})
end



Core.waitEvents()

