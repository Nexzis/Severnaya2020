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



local simple_signals =      --таблица "сигналы" для сигнала "нет питания переменного тока"
{
	['GSP_SEV_KSSEV_DIAGN_UPS1_CONNECTION'] = 
	{
		['msg']='Потеря связи устройством',
		['cat']=AS, 
		['state']=2,
		['source']='ИБП Eaton 9355',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core['GSP_SEV_KSSEV_DIAGN_UPS1_CONNECTION']==2 ,Core['GSP_SEV_KSSEV_DIAGN_UPS1_CONNECTION']==1})           -- вызов функции добавления события по условиям
					end

	},

	['HMI_DIAGN_UPS1_Signals.Utility_Off']=            --имя сигнала из конфигурации проекта
	{
		['msg']='Нет питания от сети',                   --характеристики сигнала 
		['cat']=WS,
		['state']=2,
		['source']='ИБП Eaton 9355',
		['eval']= 	function(table )
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_UPS1_Signals.Utility_Off==2 ,Core.HMI_DIAGN_UPS1_Signals.Utility_Off~=2})           -- вызов функции добавления события по условиям
					end
	},
	--питание от батарей
	['HMI_DIAGN_UPS1_Signals.Output_onBattery']= 
	{
		['msg']='Питание от батарей ИБП',
		['cat']=WS,
		['state']=2,
		['source']='ИБП Eaton 9355',
		['eval']= function(table)	
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_UPS1_Signals.Output_onBattery ==5, Core.HMI_DIAGN_UPS1_Signals.Output_onBattery ~=5})
						end
	},
	--режим байпаса 
	['HMI_DIAGN_UPS1_Signals.Output_onBypass']=
	{
		['msg']='ИБП в режиме байпаса',['cat']=WS,['state']=2,	['source']='ИБП Eaton 9355',['eval']= function(table) 
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_UPS1_Signals.Output_onBypass==4, Core.HMI_DIAGN_UPS1_Signals.Output_onBypass~=4})
						end
	},
	--перегрузка
	['HMI_DIAGN_UPS1_Signals.Output_Load'] = 
	{
		['msg']='Перегрузка ИБП',['cat']=AS, ['state']=2,['source']='ИБП Eaton 9355',['eval']= function(table) 	
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_UPS1_Signals.Output_Load >93, Core.HMI_DIAGN_UPS1_Signals.Output_Load <=93})
						end
	},	
	--перегрев
	['HMI_DIAGN_UPS1_Signals.Output_Overtemp'] =
	{
		['msg']='Перегрев ИБП',['cat']=AS, ['state']=2,['source']='ИБП Eaton 9355',['eval']=function(table) 
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_UPS1_Signals.Output_Overtemp ==1, Core.HMI_DIAGN_UPS1_Signals.Output_Overtemp ==2})
						end
	},

	--низакая емкость батареи
	['HMI_DIAGN_UPS1_Signals.Battery_Level'] =
	{
		['msg']='Низкий уровень заряда батарей ИБП',['cat']=AS, ['state']=2,['source']='ИБП Eaton 9355',['eval']=function(table) 
						Add_Event(table[1],table[2],{Core.HMI_DIAGN_UPS1_Signals.Battery_Level<=25, Core.HMI_DIAGN_UPS1_Signals.Battery_Level>25})
						end
	},
}

for c_signal,c_fields in pairs (simple_signals)do
	Core.onExtChange ({c_signal}, c_fields.eval, {c_signal, c_fields})
end


--[[
local inverter_signals = 
{
	['HMI_DIAGN_UPS1_Signals.Inverter_off'] = 
	{
		['msg']= 'Отказ инвертера ИБП', ['cat'] = AS, ['state'] = 2, ['source'] = 'ИБП Eaton 9355', 
		['eval'] = 
			function (table) Add_Event(table[1], table[2],
			{ 
				(Core.HMI_DIAGN_UPS1_Signals.Output_onBattery ==1 or Core.HMI_DIAGN_UPS1_Signals.Utility_Off==2) 
				and Core.HMI_DIAGN_UPS1_Signals.Output_Voltage ==0,
				
				(Core.HMI_DIAGN_UPS1_Signals.Output_onBattery ==1 or Core.HMI_DIAGN_UPS1_Signals.Utility_Off==2) 
				and Core.HMI_DIAGN_UPS1_Signals.Output_Voltage ~=0
				
			}	
			)
			end
		},
}   

for c_signal,c_fields in pairs (inverter_signals) do 
	Core.onExtChange ({'HMI_DIAGN_UPS1_Signals.Output_Voltage','HMI_DIAGN_UPS1_Signals.Output_onBattery','HMI_DIAGN_UPS1_Signals.Utility_Off'}, c_fields.eval, {c_signal, c_fields})
end 
--]]


local a = 0
local IBP_on_signals =
{
	['HMI_DIAGN_UPS1_Signals.Output_Voltage'] =	
	{	
		['msg']='ИБП включен',
		['cat']=TS,
		['state']=2,
		['source']='ИБП Eaton 9355',
		['eval']= 
			function (table)
				Add_Event(
					table[1],
					table[2],
					{
						Core.HMI_DIAGN_UPS1_Signals.Output_Voltage >=170 --and Core.HMI_DIAGN_UPS1_Signals.Inverter_off==2
						 and (math.abs(Core.HMI_DIAGN_UPS1_Signals.Output_Voltage -a)>60),
						
						Core.HMI_DIAGN_UPS1_Signals.Output_Voltage <170 --and Core.HMI_DIAGN_UPS1_Signals.Inverter_off==1
						 and (math.abs(Core.HMI_DIAGN_UPS1_Signals.Output_Voltage -a)>60)
					}
				)
				a = Core.HMI_DIAGN_UPS1_Signals.Output_Voltage
			end
	},
}

for c_signal,c_fields in pairs (IBP_on_signals)do
	Core.onExtChange ({'HMI_DIAGN_UPS1_Signals.Output_Voltage','HMI_DIAGN_UPS1_Signals.Inverter_off'}, c_fields.eval, {c_signal, c_fields})
end



Core.waitEvents()

