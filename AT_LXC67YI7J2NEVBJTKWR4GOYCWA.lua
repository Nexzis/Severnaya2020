
--Скрипт создан для переприсвоения значений сигналов нижнего уровня(с ПЛК) сигналам верхнего уровня 

--=================ПЕРЕПРИСВОЕНИЕ ДИСКРЕТНЫХ СИГНАЛОВ И ФЛАГОВ ДОСТОВЕРНОСИТИ=======--

--Префикс сигналов
LocalID = 'GSP_SEV_KSSEV_E_'   --Сигнал вернего уровня
PLCID = 'PLC_GSP_SEV_KSSEV_E_' --Сигнал нижнего уровня



--Таблица сигналов
SIGNAL_TABLE = {
-- На  ПЛК А2 нет дискретов


				}


--Таблица значений сигналов
PARAM_TABLE = {
				['.Value'] = '.Value',
				['.reliabilityFlag'] = '.reliabilityFlag',
				}

--функция переприсвоения
function GRAB(param_tables)
	local PLC_signal = param_tables[1]
	local HMI_signal = param_tables[2]
	local PLC_param = param_tables[3]	
	local HMI_param = param_tables[4]

				-------------------------
				--ВАЖНО заменить сигнал--
				-------------------------

--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core.USOKTP2_A2_FAULT.Connect == true then
			Core[LocalID..HMI_signal..HMI_param] = Core[PLCID..PLC_signal..PLC_param]
		else
			Core[LocalID..HMI_signal..'.reliabilityFlag'] = false
			Core[PLCID..PLC_signal..'.reliabilityFlag'] = false
		end
end


--инициализация при старте
for PLC_signal, HMI_signal in pairs(SIGNAL_TABLE) do
  for PLC_param, HMI_param in pairs(PARAM_TABLE) do
    GRAB({PLC_signal, HMI_signal, PLC_param, HMI_param})
	
  end
end

				-------------------------
				--ВАЖНО заменить сигнал--
				-------------------------

for PLC_signal, HMI_signal in pairs(SIGNAL_TABLE) do
  for PLC_param, HMI_param in pairs(PARAM_TABLE) do
   Core.onExtChange({PLCID..PLC_signal..PLC_param,"USOKTP2_A2_FAULT.Connect"}, GRAB, {PLC_signal, HMI_signal, PLC_param, HMI_param})
	
  end
end


--=================ПЕРЕПРИСВОЕНИЕ СИГНАЛОВ О СОСТОЯНИИ МОДУЛЕЙ=======--

--Префикс сигналов
StatusID = 'USOKTP2_'        --Верхнийуровень
PLCStatusID = 'PLC_USOKTP2_' --Нижний уровень


--Таблица сигналов
NICE_TABLE = {
				['A2_FAULT'] = 'A2_FAULT',
			 }

--Таблица значений
VERYNICE_TABLE = {
			['.CPU'] = '.CPU',
			['.Slot3'] = '.Slot3',
			['.Slot4'] = '.Slot4',
			['.Slot5'] = '.Slot5',
			--['.Slot6'] = '.Slot6',
			--['.Slot7'] = '.Slot7',
			--['.Slot8'] = '.Slot8',
			--['.Slot9'] = '.Slot9',
			--['.Slot10'] = '.Slot10',
				 }


--функция переприсвоения
function GRABER(parama_tables)
	local PLCStatus_signal = parama_tables[1]
	local Status_signal = parama_tables[2]
	local PLCStatus_param = parama_tables[3]	
	local Status_param = parama_tables[4]
	
		Core[StatusID..Status_signal..Status_param] = Core[PLCStatusID..PLCStatus_signal..PLCStatus_param]
end

for PLCStatus_signal, Status_signal in pairs(NICE_TABLE) do
  for PLCStatus_param, Status_param in pairs(VERYNICE_TABLE) do
    GRABER({PLCStatus_signal, Status_signal, PLCStatus_param, Status_param})
	
 end
end

for PLCStatus_signal, Status_signal in pairs(NICE_TABLE) do
  for PLCStatus_param, Status_param in pairs(VERYNICE_TABLE) do
    Core.onExtChange({PLCStatusID..PLCStatus_signal..PLCStatus_param}, GRABER, {PLCStatus_signal, Status_signal, PLCStatus_param, Status_param})
	
  end
end


--=================ФОРМИРОВАНИЕ СООБЩЕНИЙ В ЖУРНАЛ СОБЫТИЙ О НЕДОСТОВЕРНОСТИ СИГНАЛОВ(при обрыве связи с ПЛК)=======--

local cat = 29000 --категория событий
 

--таблица сигналов (src - источник сообщения, msg - текст сообщения, screen_id - индентификатор для перехода к мнемосхеме из журнала обытий)

 local Sig = {              
-- На  ПЛК А2 нет дискретов

			  } 
  


local function Add_Event(signal)
	local user = ''		
	local DT_POSIX = os.time()		
	local state --начальное состояние 

				-------------------------
				--ВАЖНО заменить сигнал--
				-------------------------

		if Core.USOKTP2_A2_FAULT.Connect == false then
			state = 1
		elseif Core.USOKTP2_A2_FAULT.Connect == true then				
			if Core[signal[1]] == false		 then --условие
				state = 1 --появление сообщения		
			else
				state = 0 -- пропадание сообщения
			end	
		else 
			return
		end

	Core.addEvent(signal[2]['msg'], cat, state, signal[2]['src'], user, signal[2]['src']..signal[2]['msg'], DT_POSIX ,signal[2][screen_id])					
end


--инициализация
for signal, data in pairs(Sig) do 
    Add_Event({signal,data})
end


				-------------------------
				--ВАЖНО заменить сигнал--
				-------------------------

for signal, data in pairs(Sig) do 
    Core.onExtChange({signal,"USOKTP2_A2_FAULT.Connect"}, Add_Event, {signal,data})
	
end


Core.waitEvents()