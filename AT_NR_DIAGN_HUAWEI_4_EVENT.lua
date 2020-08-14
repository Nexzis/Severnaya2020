local AS=10000  
local WS=10100 
local TS=101  
screen_id = 'DIAGN'


local function Add_Event(signal, fields, cond)
	local user=''
	local DT_POSIX=os.time()				
	if cond[1]  then 
		Core.addEvent(fields.msg, fields.cat, 1, fields.source, user, signal..fields.cat, DT_POSIX ,screen_id) 
		if Log then 
			Core.addLogMsg(DT.." ".."(Появл.) ".. fields.msg.." "..user.." "..signal.." "..fields.cat) 
		end 
	elseif cond[2] then  
		Core.addEvent(fields.msg, fields.cat, 0, fields.source, user, signal..fields.cat, DT_POSIX, screen_id) 
		if Log then 
			Core.addLogMsg(DT.." ".."(Исчезн.)"..fields.msg.." "..user.." "..signal.." "..fields.cat) 
		end 
	end
end


local simple_signals =     
{   
--Порт №1
	['HMI_DIAGN_SWITCH4_PORT_STATE[0]']=           
	{
		['msg']='Порт №1 подключен',                  
		['cat']=TS,
		['state']=2,
		['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[0] ==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[0] ~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[0]']=           
	{
		['msg']='Порт №1 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[0]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[0]~=6})           
					end
	},
	
--Порт №2
	['HMI_DIAGN_SWITCH4_PORT_STATE[1]']=           
	{
		['msg']='Порт №2 подключен', ['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[1]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[1]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[1]']=           
	{
		['msg']='Порт №2 неисправен',['cat']=AS,['state']=2,
		['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[1]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[1]~=6})           
					end
	},
	
--Порт №3
	['HMI_DIAGN_SWITCH4_PORT_STATE[2]']=           
	{
		['msg']='Порт №3 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[2]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[2] ~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[2]']=           
	{
		['msg']='Порт №3 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[2]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[2]~=6})           
					end
	},
	
--Порт №4
	['HMI_DIAGN_SWITCH4_PORT_STATE[3]']=           
	{
		['msg']='Порт №4 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[3]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[3]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[3]']=           
	{
		['msg']='Порт №4 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[3]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[3]~=6})           
					end
	},
	
--Порт №5
	['HMI_DIAGN_SWITCH4_PORT_STATE[4]']=           
	{
		['msg']='Порт №5 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[4]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[4]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[4]']=           
	{
		['msg']='Порт №5 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[4]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[4]~=6})           
					end
	},
	
--Порт №6
	['HMI_DIAGN_SWITCH4_PORT_STATE[5]']=           
	{
		['msg']='Порт №6 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[5]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[5]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[5]']=           
	{
		['msg']='Порт №6 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[5]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[5]~=6})           
					end
	},
	
--Порт №7
	['HMI_DIAGN_SWITCH4_PORT_STATE[6]']=           
	{
		['msg']='Порт №7 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[6]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[6]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[6]']=           
	{
		['msg']='Порт №7 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[6]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[6] ~=6})           
					end
	},
	
--Порт №8
	['HMI_DIAGN_SWITCH4_PORT_STATE[7]']=           
	{
		['msg']='Порт №8 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[7]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[7]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[7]']=           
	{
		['msg']='Порт №8 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[7]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[7]~=6})           
					end
	},
	
--Порт №9
	['HMI_DIAGN_SWITCH4_PORT_STATE[8]']=           
	{
		['msg']='Порт №9 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[8]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[8]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[8]']=           
	{
		['msg']='Порт №9 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[8]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[8]~=6})           
					end
	},
	
--Порт №10
	['HMI_DIAGN_SWITCH4_PORT_STATE[9]']=           
	{
		['msg']='Порт №10 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[9]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[9]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[9]']=           
	{
		['msg']='Порт №10 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[9]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[9]~=6})           
					end
	},
	
	
--Порт №11
	['HMI_DIAGN_SWITCH4_PORT_STATE[10]']=           
	{
		['msg']='Порт №11 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[10]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[10]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[10]']=           
	{
		['msg']='Порт №11 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[10]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[10]~=6})           
					end
	},
	
	
--Порт №12
	['HMI_DIAGN_SWITCH4_PORT_STATE[11]']=           
	{
		['msg']='Порт №12 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[11]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[11]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[11]']=           
	{
		['msg']='Порт №12 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[11]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[11]~=6})           
					end
	},
	
	
--Порт №13
	['HMI_DIAGN_SWITCH4_PORT_STATE[12]']=           
	{
		['msg']='Порт №13 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[12]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[12]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[12]']=           
	{
		['msg']='Порт №13 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[12]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[12]~=6})           
					end
	},
	
	
--Порт №14
	['HMI_DIAGN_SWITCH4_PORT_STATE[13]']=           
	{
		['msg']='Порт №14 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[13]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[13]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[13]']=           
	{
		['msg']='Порт №14 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[13]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[13]~=6})           
					end
	},	
	
--Порт №15
	['HMI_DIAGN_SWITCH4_PORT_STATE[14]']=           
	{
		['msg']='Порт №15 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[14]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[14]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[14]']=           
	{
		['msg']='Порт №15 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[14]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[14]~=6})           
					end
	},	
	
--Порт №16
	['HMI_DIAGN_SWITCH4_PORT_STATE[15]']=           
	{
		['msg']='Порт №16 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[15]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[15]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[15]']=           
	{
		['msg']='Порт №16 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[15]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[15]~=6})           
					end
	},		
	
--Порт №17
	['HMI_DIAGN_SWITCH4_PORT_STATE[16]']=           
	{
		['msg']='Порт №17 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[16]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[16]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[16]']=           
	{
		['msg']='Порт №17 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[16]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[16]~=6})           
					end
	},		
	
--Порт №18
	['HMI_DIAGN_SWITCH4_PORT_STATE[17]']=           
	{
		['msg']='Порт №18 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[17]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[17]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[17]']=           
	{
		['msg']='Порт №18 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[17]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[17]~=6})           
					end
	},	
	
--Порт №19
	['HMI_DIAGN_SWITCH4_PORT_STATE[18]']=           
	{
		['msg']='Порт №19 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[18]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[18]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[18]']=           
	{
		['msg']='Порт №19 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[18]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[18]~=6})           
					end
	},	
	
--Порт №20
	['HMI_DIAGN_SWITCH4_PORT_STATE[19]']=           
	{
		['msg']='Порт №20 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[19]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[19]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[19]']=           
	{
		['msg']='Порт №20 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[19]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[19]~=6})           
					end
	},		
	
--Порт №21
	['HMI_DIAGN_SWITCH4_PORT_STATE[20]']=           
	{
		['msg']='Порт №21 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[20]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[20]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[20]']=           
	{
		['msg']='Порт №21 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[20]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[20]~=6})           
					end
	},

--Порт №22
	['HMI_DIAGN_SWITCH4_PORT_STATE[21]']=           
	{
		['msg']='Порт №22 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[21]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[21]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[21]']=           
	{
		['msg']='Порт №22 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[21]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[21]~=6})           
					end
	},

--Порт №23
	['HMI_DIAGN_SWITCH4_PORT_STATE[22]']=           
	{
		['msg']='Порт №23 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[22]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[22]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[22]']=           
	{
		['msg']='Порт №23 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[22]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[22]~=6})           
					end
	},

--Порт №24
	['HMI_DIAGN_SWITCH4_PORT_STATE[23]']=           
	{
		['msg']='Порт №24 подключен',['cat']=TS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE[23]==5 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE[23]~=5})           
					end
	},
		
	['HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[23]']=           
	{
		['msg']='Порт №24 неисправен',['cat']=AS,['state']=2,['source']='Коммутатор Huawei s5720 №4',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[23]==6 ,Core.HMI_DIAGN_SWITCH4_PORT_STATE_CRASH[23]~=6})           
					end
	},
}	
	
for c_signal,c_fields in pairs (simple_signals)do
	Core.onExtChange ({c_signal}, c_fields.eval, {c_signal, c_fields})
end	

Core.waitEvents()