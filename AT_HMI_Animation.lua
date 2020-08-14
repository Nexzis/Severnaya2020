--  вспомогательный if
function myif(var, cond)
  --[[
  Функция для уменьшения кода
  обычный if/else:
    ЕСЛИ (УСЛОВИЕ) ТО 
      записать в переменную TRUE 
    ИНАЧЕ
      записать в переменную FALSE
   --]]
  Core[var] = cond and true or false
end
--  анимация ЗРУ
function ZRU_Animation()
--	идём сверху вниз по однолинейной схеме	
--  питание вводов
	myif('HMI_ZRU_VV1.switch.voltage.top', Core['GSP_SEV_KSSEV_E_USOE_AI_1Q_V.Value']>1)	--если напряжение на вводе 1 больше или равно 10кв (+-15%)	
	myif('HMI_ZRU_VV2.switch.voltage.top', Core['GSP_SEV_KSSEV_E_USOE_AI_2Q_V.Value']>1)	--если напряжение на вводе 2 больше или равно 10кв (+-15%)
--	красим шину секции 1
	myif('HMI_ZRU_SEC1_voltage', 	Core['HMI_ZRU_VV1.switch.voltage.out']or (Core['HMI_ZRU_SV.switch.q.on']and Core['HMI_ZRU_SRZ.q.on']and Core['HMI_ZRU_VV2.switch.voltage.out'])
								or Core['SOTEC_VV1.U_12']>1000 or Core['SOTEC_VV1.U_23']>1000 or Core['SOTEC_VV1.U_31']>1000)
--	красим шину секции 2
	myif('HMI_ZRU_SEC2_voltage', 	Core['HMI_ZRU_VV2.switch.voltage.out']or (Core['HMI_ZRU_SV.switch.q.on']and Core['HMI_ZRU_SRZ.q.on']and Core['HMI_ZRU_VV1.switch.voltage.out'])
								or Core['SOTEC_VV2.U_12']>1000 or Core['SOTEC_VV2.U_23']>1000 or Core['SOTEC_VV2.U_31']>1000)
--	красим секционный выключатель
	myif('HMI_ZRU_SV.switch.voltage.top',	Core['HMI_ZRU_SEC1_voltage']or(Core['HMI_ZRU_SV.switch.q.on']and Core['HMI_ZRU_SRZ.q.on']and Core['HMI_ZRU_SEC2_voltage']))
	myif('HMI_ZRU_SV.switch.voltage.bot',(Core['HMI_ZRU_SEC1_voltage']and  Core['HMI_ZRU_SV.switch.q.on'])or (Core['HMI_ZRU_SRZ.q.on']and Core['HMI_ZRU_SEC2_voltage']))
--	красим секционный разъединитель
	myif('HMI_ZRU_SRZ.voltage.top',Core['HMI_ZRU_SEC2_voltage'] or(Core['HMI_ZRU_SV.switch.q.on'] and Core['HMI_ZRU_SRZ.q.on'] and Core['HMI_ZRU_SEC1_voltage']))
	myif('HMI_ZRU_SRZ.voltage.bot',(Core['HMI_ZRU_SEC2_voltage'] and  Core['HMI_ZRU_SRZ.q.on'])or (Core['HMI_ZRU_SV.switch.q.on'] and Core['HMI_ZRU_SEC1_voltage']))
--	красим всё что в первой секции:
--  красим ввод
	myif('HMI_ZRU_VV1.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'])
--	красим штн
	myif('HMI_ZRU_SHTN1.voltage',Core['HMI_ZRU_SEC1_voltage'])
--	красим отходящие линии
	myif('HMI_ZRU_OL1_1.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])
	myif('HMI_ZRU_OL1_2.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])
	myif('HMI_ZRU_OL1_3.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])
	myif('HMI_ZRU_OL1_4.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])
	myif('HMI_ZRU_OL1_6.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])
	myif('HMI_ZRU_OL1_7.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])
  	myif('HMI_ZRU_OL1_8.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])
  	myif('HMI_ZRU_OL1_12.switch.voltage.top',Core['HMI_ZRU_SEC1_voltage'])

	myif('HMI_ZRU_OL1_1.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_1.switch.voltage.out'])
	myif('HMI_ZRU_OL1_2.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_2.switch.voltage.out'])
	myif('HMI_ZRU_OL1_3.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_3.switch.voltage.out'])
	myif('HMI_ZRU_OL1_4.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_4.switch.voltage.out'])
	myif('HMI_ZRU_OL1_6.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_6.switch.voltage.out'])
	myif('HMI_ZRU_OL1_7.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_7.switch.voltage.out'])
  	myif('HMI_ZRU_OL1_8.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_8.switch.voltage.out'])
  	myif('HMI_ZRU_OL1_12.switch.voltage.bot',Core['HMI_ZRU_SEC1_voltage'] and Core['HMI_ZRU_OL1_12.switch.voltage.out'])
--	красим всё что во второй секции:
--  красим ввод
	myif('HMI_ZRU_VV2.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'])
--	красим штн
	myif('HMI_ZRU_SHTN2.voltage',Core['HMI_ZRU_SEC2_voltage'])
--	красим отходящие линии
	myif('HMI_ZRU_OL2_6.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
  	myif('HMI_ZRU_OL2_8.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
	myif('HMI_ZRU_OL2_9.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
	myif('HMI_ZRU_OL2_10.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
	myif('HMI_ZRU_OL2_11.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
	myif('HMI_ZRU_OL2_13.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
  	myif('HMI_ZRU_OL2_14.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
  	myif('HMI_ZRU_OL2_15.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
  	myif('HMI_ZRU_OL2_16.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
  	myif('HMI_ZRU_OL2_17.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])
  	myif('HMI_ZRU_OL2_18.switch.voltage.top',Core['HMI_ZRU_SEC2_voltage'])

	myif('HMI_ZRU_OL2_6.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_6.switch.voltage.out'])
  	myif('HMI_ZRU_OL2_8.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_8.switch.voltage.out'])
	myif('HMI_ZRU_OL2_9.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_9.switch.voltage.out'])
	myif('HMI_ZRU_OL2_10.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_10.switch.voltage.out'])
	myif('HMI_ZRU_OL2_11.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_11.switch.voltage.out'])
	myif('HMI_ZRU_OL2_13.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_13.switch.voltage.out'])
  	myif('HMI_ZRU_OL2_14.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_14.switch.voltage.out'])
  	myif('HMI_ZRU_OL2_15.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_15.switch.voltage.out'])
  	myif('HMI_ZRU_OL2_16.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_16.switch.voltage.out'])
  	myif('HMI_ZRU_OL2_17.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_17.switch.voltage.out'])
  	myif('HMI_ZRU_OL2_18.switch.voltage.bot',Core['HMI_ZRU_SEC2_voltage'] and Core['HMI_ZRU_OL2_18.switch.voltage.out'])
end

--  анимация КТП1
function KTP1_Animation()
--  питание вводов
  myif('HMI_KTP1_VV1.voltage.top', Core['GSP_SEV_KSSEV_E_USOKTP1_AI_PAN01_1Q_V_AC.Value']>0.34)
	myif('HMI_KTP1_VV2.voltage.top', Core['GSP_SEV_KSSEV_E_USOKTP1_AI_PAN07_2Q_V_AC.Value']>0.34)
--  красим шину секции 1
  myif('HMI_KTP1_SEC1_voltage', Core['HMI_KTP1_VV1.voltage.out']or Core['HMI_KTP1_AV1.voltage.out']or(Core['HMI_KTP1_SV.q.on']and Core['HMI_KTP1_VV2.voltage.out']))
--  красим шину секции 2
  myif('HMI_KTP1_SEC2_voltage', Core['HMI_KTP1_VV2.voltage.out']or(Core['HMI_KTP1_SV.q.on']and(Core['HMI_KTP1_VV1.voltage.out']or Core['HMI_KTP1_AV1.voltage.out'])))
--	красим секционный выключатель
	myif('HMI_KTP1_SV.voltage.top',	Core['HMI_KTP1_SEC1_voltage']or(Core['HMI_KTP1_SV.q.on']and Core['HMI_KTP1_SEC2_voltage']))
	myif('HMI_KTP1_SV.voltage.bot',	Core['HMI_KTP1_SEC2_voltage']or(Core['HMI_KTP1_SV.q.on']and Core['HMI_KTP1_SEC1_voltage']))
--	красим всё что в первой секции:
  --  красим ввод
  myif('HMI_KTP1_VV1.voltage.bot', Core['HMI_KTP1_SEC1_voltage'])
  --  ключ до аварийного ввода
--  myif('HMI_KTP1_ADES_DG.voltage.bot', Core['HMI_KTP1_SEC1_voltage'])
  --  аварийный ввод
  myif('HMI_KTP1_AV1.voltage.bot', Core['HMI_KTP1_SEC1_voltage'])
  myif('HMI_KTP1_AV1.voltage.top', Core['HMI_KTP1_SEC1_voltage'] and Core['HMI_KTP1_AV1.truck.in'] and Core['HMI_KTP1_AV1.q.on'] )
--	красим всё что во второй секции:
  --  красим ввод
  myif('HMI_KTP1_VV2.voltage.bot', Core['HMI_KTP1_SEC2_voltage'])
  --  отходящая линия в КТП2
  myif('HMI_KTP1_OL_KTP2.voltage.top',Core['HMI_KTP1_SEC1_voltage'])
  myif('HMI_KTP1_OL_KTP2.voltage.bot',Core['HMI_KTP1_SEC1_voltage'] and Core['HMI_KTP1_OL_KTP2.voltage.out'])
end

--  анимация КТП2
function KTP2_Animation()
--  питание вводов
  myif('HMI_KTP2_VV1.voltage.top', Core['GSP_SEV_KSSEV_E_USOKTP2_AI_PAN01_1Q_V_AC.Value']>0.34)
	myif('HMI_KTP2_VV2.voltage.top', Core['GSP_SEV_KSSEV_E_USOKTP2_AI_PAN07_2Q_V_AC.Value']>0.34)
  myif('HMI_KTP2_AV.voltage.top', Core['HMI_KTP1_OL_KTP2.voltage.out'])
--  красим шину секции 1
  myif('HMI_KTP2_SEC1_voltage', Core['HMI_KTP2_VV1.voltage.out']or Core['HMI_KTP2_AV.voltage.out']or(Core['HMI_KTP2_SV.q.on']and Core['HMI_KTP2_VV2.voltage.out']))
--  красим шину секции 2
  myif('HMI_KTP2_SEC2_voltage', Core['HMI_KTP2_VV2.voltage.out']or(Core['HMI_KTP2_SV.q.on']and(Core['HMI_KTP2_VV1.voltage.out']or Core['HMI_KTP2_AV.voltage.out'])))
--	красим секционный выключатель
	myif('HMI_KTP2_SV.voltage.top',	Core['HMI_KTP2_SEC1_voltage']or(Core['HMI_KTP2_SV.q.on']and Core['HMI_KTP2_SEC2_voltage']))
	myif('HMI_KTP2_SV.voltage.bot',	Core['HMI_KTP2_SEC2_voltage']or(Core['HMI_KTP2_SV.q.on']and Core['HMI_KTP2_SEC1_voltage']))
--	красим всё что в первой секции:
  --  красим ввод
  myif('HMI_KTP2_VV1.voltage.bot', Core['HMI_KTP2_SEC1_voltage'])
  --  ключ до аварийного ввода
  myif('HMI_KTP2_AV.voltage.bot', Core['HMI_KTP2_SEC1_voltage'])
--	красим всё что во второй секции:
    --  красим ввод
  myif('HMI_KTP2_VV2.voltage.bot', Core['HMI_KTP2_SEC2_voltage'])
end
--  анимация ГЩУ
function GSU_Animation()
--  питание вводов
  myif('HMI_GSU_VV1.voltage.top', Core['GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_1Q_V_AC.Value']>0.34)
	myif('HMI_GSU_VV2.voltage.top', Core['GSP_SEV_KSSEV_E_USOGSU_AI_PAN01_2Q_V_AC.Value']>0.34)
  --  красим шину секции
  myif('HMI_GSU_SEC_voltage', Core['HMI_GSU_VV1.voltage.out']or Core['HMI_GSU_VV2.voltage.out'])
  --	красим всё что в  секции:
  --  красим ввода
  myif('HMI_GSU_VV1.voltage.bot', Core['HMI_GSU_SEC_voltage'])
  myif('HMI_GSU_VV2.voltage.bot', Core['HMI_GSU_SEC_voltage'])
end
--  вызов функций анимации
while(true)do	
  ZRU_Animation()
  KTP1_Animation()
  KTP2_Animation()
  GSU_Animation()
	os.sleep(0.1)
end