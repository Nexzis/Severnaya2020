-- Приложение для обработки счетчика. Если после определенного промежутка времени входная переменная не меняется, значит выходная будет FALSE

local X1-----------------
---------УСО КПТ 1 А1----
local X2-----------------

local x1-----------------
---------УСО КПТ 1 А2----
local x2-----------------

local A1-----------------
---------УСО ГЩУ---------
local A2-----------------

local B1-----------------
---------УСО Э-----------
local B2-----------------

local C1-----------------
---------УСО П-----------
local C2-----------------

local D1-----------------
---------УСО К-----------
local D2-----------------

local E1-----------------
---------САУ ВОС---------
local E2-----------------

local F1-----------------
---------УСО КТП2 А1-----
local F2-----------------

local G1-----------------
---------УСО КТП2 А2-----
local G2-----------------





while ( 1) do

--Присваиваем значение счетчика через промежуток времени
	X1 = Core.COUNTER.COUNT_USOKTP1_A1
	x1 = Core.COUNTER.COUNT_USOKTP1_A2
	A1 = Core.COUNTER.COUNT_USOGSU
	B1 = Core.COUNTER.COUNT_USOE
	C1 = Core.COUNTER.COUNT_USOP
	D1 = Core.COUNTER.COUNT_USOK
	E1 = Core.COUNTER.COUNT_SAUVOS
	F1 = Core.COUNTER.COUNT_USOKTP2_A1
	G1 = Core.COUNTER.COUNT_USOKTP2_A2

	os.sleep( 3)

	X2 = Core.COUNTER.COUNT_USOKTP1_A1
	x2 = Core.COUNTER.COUNT_USOKTP1_A2
	A2 = Core.COUNTER.COUNT_USOGSU
	B2 = Core.COUNTER.COUNT_USOE
	C2 = Core.COUNTER.COUNT_USOP
	D2 = Core.COUNTER.COUNT_USOK
	E2 = Core.COUNTER.COUNT_SAUVOS
	F2 = Core.COUNTER.COUNT_USOKTP2_A1
	G2 = Core.COUNTER.COUNT_USOKTP2_A2

--Сравниваем эти значения, если они равны, то считаем, что счетчик перестал работать из-за отвала ЦПУ, либо произошел обрыв связи с контроллером
			Core.addLogMsg(tostring(X1))
			Core.addLogMsg(tostring(X2))
-----------------USOKTP1_A1------------------
		if X2 ~= X1 then
			 Core.USOKTP1_A1_FAULT.Connect = true
			 Core.addLogMsg("ЦПУ в работе")
			 Core.addEvent('Потеря связи с ПЛК А1 УСО КТП1', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО КТП1', os.time() ,'DIAGN')
		else 
			 Core.USOKTP1_A1_FAULT.Connect = false
						Core.addLogMsg(tostring(X1))
						Core.addLogMsg(tostring(X2))
						Core.addLogMsg("ПИЗДЕЦ")
			 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
			 Core.addEvent('Потеря связи с ПЛК А1 УСО КТП1', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО КТП1', os.time() ,'DIAGN')
		end

-------------------USOKTP1_A2--------------
				if x2 ~= x1 then
					 Core.USOKTP1_A2_FAULT.Connect = true
					 Core.addLogMsg("ЦПУ в работе")
					 Core.addEvent('Потеря связи с ПЛК А2 УСО КТП1', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А2 УСО КТП1', os.time() ,'DIAGN')
		
				else 
					 Core.USOKTP1_A2_FAULT.Connect = false
					 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
					 Core.addEvent('Потеря связи с ПЛК А2 УСО КТП1', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А2 УСО КТП1', os.time() ,'DIAGN')
				end

-------------------USOGSU-----------------
						if A2 ~= A1 then
							 Core.USOGSU_A1_FAULT.Connect = true
							 Core.addLogMsg("ЦПУ в работе")		
							 Core.addEvent('Потеря связи с ПЛК А1 УСО ГЩУ', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО ГЩУ', os.time() ,'DIAGN')		
						else
							 Core.USOGSU_A1_FAULT.Connect = false
							 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
							 Core.addEvent('Потеря связи с ПЛК А1 УСО ГЩУ', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО ГЩУ', os.time() ,'DIAGN')
						end


-------------------USOE-----------------
								if B2 ~= B1 then
									 Core.USOE_A1_FAULT.Connect = true
									 Core.addLogMsg("ЦПУ в работе")
							 		 Core.addEvent('Потеря связи с ПЛК А1 УСО Э', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО Е', os.time() ,'DIAGN')				
								else
									 Core.USOE_A1_FAULT.Connect = false
									 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
									 Core.addEvent('Потеря связи с ПЛК А1 УСО Э', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО Е', os.time() ,'DIAGN')
								end

-------------------USOP-----------------
										if C2 ~= C1 then
											 Core.USOP_A1_FAULT.Connect = true
											 Core.addLogMsg("ЦПУ в работе")		
							 				 Core.addEvent('Потеря связи с ПЛК А1 УСО П', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО П', os.time() ,'DIAGN')		
										else
											 Core.USOP_A1_FAULT.Connect = false
											 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
							 				 Core.addEvent('Потеря связи с ПЛК А1 УСО П', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО П', os.time() ,'DIAGN')
										end
				
-------------------USOK-----------------
									if D2 ~= D1 then
										 Core.USOK_A1_FAULT.Connect = true
										 Core.addLogMsg("ЦПУ в работе")		
										 Core.addEvent('Потеря связи с ПЛК А1 УСО К', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО К', os.time() ,'DIAGN')
									else
										 Core.USOK_A1_FAULT.Connect = false
										 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
										 Core.addEvent('Потеря связи с ПЛК А1 УСО К', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО К', os.time() ,'DIAGN')--signal[2][screen_id] 
									end
			
-------------------SAUVOS----------------
							if E2 ~= E1 then
								 Core.SAUVOS_A1_FAULT.Connect = true
								 Core.addLogMsg("ЦПУ в работе")	
							 	 Core.addEvent('Потеря связи с ПЛК А1 САУ ВОС', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 САУ ВОС', os.time() ,'DIAGN')			
							else
								 Core.SAUVOS_A1_FAULT.Connect = false
								 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
							 	 Core.addEvent('Потеря связи с ПЛК А1 САУ ВОС', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 САУ ВОС', os.time() ,'DIAGN')
							end

-------------------USOKTP2_A1----------------
				if F2 ~= F1 then
					 Core.USOKTP2_A1_FAULT.Connect = true
					 Core.addLogMsg("ЦПУ в работе")			
					 Core.addEvent('Потеря связи с ПЛК А1 УСО КТП2', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО КТП2', os.time() ,'DIAGN')	
				else
					 Core.USOKTP2_A1_FAULT.Connect = false
					 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
					 Core.addEvent('Потеря связи с ПЛК А1 УСО КТП2', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А1 УСО КТП2', os.time() ,'DIAGN')
				end


-------------------USOKTP2_A2----------------
			if G2 ~= G1 then
				 Core.USOKTP2_A2_FAULT.Connect = true
				 Core.addLogMsg("ЦПУ в работе")	
				 Core.addEvent('Потеря связи с ПЛК А2 УСО КТП2', 10000, 0, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А2 УСО КТП2', os.time() ,'DIAGN')			
			else
				 Core.USOKTP2_A2_FAULT.Connect = false
				 Core.addLogMsg("===!!!!!ОБРЫВ СВЯЗИ!!!!!===")
				 Core.addEvent('Потеря связи с ПЛК А2 УСО КТП2', 10000, 1, 'Сервер', '', 'Сервер'..'Потеря связи с ПЛК А2 УСО КТП2', os.time() ,'DIAGN')
			end

end


