function myif(var,style,i,cond)       --запись в переменную, элемент массива в который записываем, условие при котором записываем 
	if cond then
		Core[var][i] = true
		Core[style][i]= 1 
	else
		Core[var][i] = Core['Local_TIME500ms']
		Core[style][i]= 2
	end
end

function if_frame(var,i,cond)
	if cond then 
		Core[var][i]=true
	else
		Core[var][i]=false 
	end
end

function Diagn_Lines_Animation()
	--Шкафы УСО
--УСО Э
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',0,Core['USOE_A1_FAULT']['Connect'])		--Линия ПЛК "СОНЕТ" - коммутатор
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',1,										--Линия Лантан - коммутатор
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['22']==1 and
										--Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['23']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['24']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['25']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['26']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['27']==1)

	if_frame('HMI_DIAGN_Lantan_Frame',0,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['22']~=1)			--красим рамку в диалоговом окне лантана
	if_frame('HMI_DIAGN_Lantan_Frame',1,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['23']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',2,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['24']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',3,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['25']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',4,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['26']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',5,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['27']~=1)


		
-- УСО КТП1

	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',2,Core['USOKTP1_A1_FAULT']['Connect'])	--Линия ПЛК "СОНЕТ" первый модуль - неуправляемый коммутатор
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',3,Core['USOKTP1_A2_FAULT']['Connect'])	--Линия ПЛК "СОНЕТ" второй модуль - неуправляемый коммутатор
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',4,Core['USOKTP1_A1_FAULT']['Connect'] or Core['USOKTP1_A2_FAULT']['Connect'])		--Линия ПЛК "СОНЕТ" - коммутатор
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',5,
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['0']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['1']==1)

	if_frame('HMI_DIAGN_Lantan_Frame',6,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['0']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',7,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['1']~=1)


-- УСО КТП2

	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',6,Core['USOKTP2_A1_FAULT']['Connect'])
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',7,Core['USOKTP2_A2_FAULT']['Connect'])
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',8,Core['USOKTP2_A1_FAULT']['Connect'] or Core['USOKTP2_A2_FAULT']['Connect'])
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',9,
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['2']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['3']==1)

	if_frame('HMI_DIAGN_Lantan_Frame',12,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['2']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',13,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['3']~=1)

--УСО МСС7

	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',10,Core['USOGSU_A1_FAULT']['Connect'])
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',11,
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['4']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['5']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['6']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['7']==1)

	if_frame('HMI_DIAGN_Lantan_Frame',8,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['4']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',9,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['5']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',10,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['6']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',11,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['7']~=1)


--УСО К

	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',12,Core['USOK_A1_FAULT']['Connect'])
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',13,
										--Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['14']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['15']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['16']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['17']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['18']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['19']==1)

	--if_frame('HMI_DIAGN_Lantan_Frame',14,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['14']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',15,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['15']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',16,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['16']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',17,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['17']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',18,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['18']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',19,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['19']~=1)


--УСО П

	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',14,Core['USOP_A1_FAULT']['Connect'])
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',15,
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['12']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['13']==1)

	if_frame('HMI_DIAGN_Lantan_Frame',20,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['12']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',21,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['13']~=1)

--САУ ВОС

	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',16,Core['SAUVOS_A1_FAULT']['Connect'])
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',17,
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['8']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['9']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['10']==1 and
										Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['11']==1)

	if_frame('HMI_DIAGN_Lantan_Frame',22,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['8']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',23,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['9']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',24,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['10']~=1)
	if_frame('HMI_DIAGN_Lantan_Frame',25,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['11']~=1)
--УСО КОС1

	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',18,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['20']==1)

--УСО КОС2
	
	myif ('HMI_DIAGN_Lines_Animation','HMI_DIAGN_Lines_Style',19,Core['GSP_SEV_KSSEV_DIAGN_LANTAN_CONNECTION']['21']==1)


-- Источники бесперебойного питания

	if Core['GSP_SEV_KSSEV_DIAGN_UPS1_CONNECTION'] ==1 then
		Core['HMI_DIAGN_Lines_Animation'][20]= true
		Core['HMI_DIAGN_Lines_Style'][20]= 1
	else
		Core['HMI_DIAGN_Lines_Animation'][20]= Core['Local_TIME500ms']
		Core['HMI_DIAGN_Lines_Style'][20]= 2
	end


	if Core['GSP_SEV_KSSEV_DIAGN_UPS2_CONNECTION'] ==1 then
		Core['HMI_DIAGN_Lines_Animation'][21]= true
		Core['HMI_DIAGN_Lines_Style'][21]= 1
	else
		Core['HMI_DIAGN_Lines_Animation'][21]= Core['Local_TIME500ms']
		Core['HMI_DIAGN_Lines_Style'][21]= 2
	end

-- Линии ХОББИТов
	if Core['HOBBIT1_DS_DP'] ~=2 then
		Core['HMI_DIAGN_Lines_Animation'][22]= true
		Core['HMI_DIAGN_Lines_Style'][22]= 1
	else
		Core['HMI_DIAGN_Lines_Animation'][22]= Core['Local_TIME500ms']
		Core['HMI_DIAGN_Lines_Style'][22]= 2
	end

if Core['HOBBIT2_DS_DP'] ~=2 then
		Core['HMI_DIAGN_Lines_Animation'][23]= true
		Core['HMI_DIAGN_Lines_Style'][23]= 1
	else
		Core['HMI_DIAGN_Lines_Animation'][23]= Core['Local_TIME500ms']
		Core['HMI_DIAGN_Lines_Style'][23]= 2
	end



end



while(true)do
	Diagn_Lines_Animation()
	os.sleep(0.1)
end
