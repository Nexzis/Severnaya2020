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
	['GSP_SEV_KSSEV_DIAGN_UK1_CONNECTION']=            
	{
		['msg']='Потеря связи',                   
		['cat']=AS,
		['state']=2,
		['source']='Контейнер МКМ.Коммутатор Huawei s5720 №1',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_UK1_CONNECTION']==2 ,Core['GSP_SEV_KSSEV_DIAGN_UK1_CONNECTION']==1})           
					end
	},
	
	['GSP_SEV_KSSEV_DIAGN_UK2_CONNECTION']=            
	{
		['msg']='Потеря связи',                   
		['cat']=AS,
		['state']=2,
		['source']='Пульт управления. Щитовая службы АСУ. Коммутатор Huawei s5720',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_UK2_CONNECTION']==2 ,Core['GSP_SEV_KSSEV_DIAGN_UK2_CONNECTION']==1})           
					end
	},
	
	['GSP_SEV_KSSEV_DIAGN_UK3_CONNECTION']=            
	{
		['msg']='Потеря связи',                   
		['cat']=AS,
		['state']=2,
		['source']='Контейнер МКМ.Коммутатор Huawei s5720 №2',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_UK3_CONNECTION']==2 ,Core['GSP_SEV_KSSEV_DIAGN_UK3_CONNECTION']==1})           
					end
	},

	['GSP_SEV_KSSEV_DIAGN_UK4_CONNECTION']=            
	{
		['msg']='Потеря связи',                   
		['cat']=AS,
		['state']=2,
		['source']='Энергоблок. Коммутатор Huawei s5720',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_UK4_CONNECTION']==2 ,Core['GSP_SEV_KSSEV_DIAGN_UK4_CONNECTION']==1})           
					end
	},
	
}

for c_signal,c_fields in pairs (simple_signals)do
	Core.onExtChange ({c_signal}, c_fields.eval, {c_signal, c_fields})
end

Core.waitEvents()

