local ZRU_OL_IDS = 
{
'1_1',
'1_2',
'1_3', 
'1_4',
'1_6',
'1_7',
'1_8',
'1_12',
'2_6',
'2_8',
'2_9',
'2_10',
'2_11',
'2_13',
'2_14',
'2_15',
'2_16',
'2_17',
'2_18'
}
--  Вспомогательные функции
--  статика выключатель
function switch_fill(args)
  local sig_name  = args[1] --  имя структуры
  local truck     = args[2] --  атрибут структуры "тележка"
  local abbr      = args[3] --  атрибут структуры "сокращенное название"
  local qf        = args[4] --  атрибут структуры "диспетчерское наименование"
  Core[sig_name..'.truck.exist']  = truck
  Core[sig_name..'.abbr'] = abbr
  Core[sig_name..'.qf'] = qf
  --  константы пока нет сигналов со SPAC
end
--  статика ОЛ
function ol_fill(args)
  Core[args[1]..'.BOX_ID'] = args[5]  --  атрибут структуры "номер ячейки"
  args[1] = args[1]..'.switch'
  switch_fill(args)
end
--  динамика zru
function zru_process_sonet(obj, id)  --  вызвали с аргументом VV1 1_11
  local Name = {}
  if (obj == 'OL') then
    Name = {'HMI_ZRU_'..obj..id, 'GSP_SEV_KSSEV_E_USOE_DI_KRU'..id}
    f1(Name, 'zn')
    f1(Name, 'switch.truck')
  elseif (obj=='VV1') or (obj=='VV2') or (obj=='SV') then
    Name = {'HMI_ZRU_'..obj, 'GSP_SEV_KSSEV_E_USOE_DI_KRU'..id}  -- таблица
    f1(Name, 'zn')
    f1(Name, 'switch.truck')
  elseif (obj=='SHTN1') or (obj=='SHTN2') then
    Name = {'HMI_ZRU_'..obj, 'GSP_SEV_KSSEV_E_USOE_DI_KRU'..id}
    f1(Name, 'zn')
    f1(Name, 'truck')
  elseif (obj=='TSN1') or (obj=='TSN2') or (obj=='SRZ') then
    Name = {'HMI_ZRU_'..obj, 'GSP_SEV_KSSEV_E_USOE_DI_KRU'..id}
    f1(Name, 'truck')
  end
end
--  вспомогательная функция для динамики
function f1(Name, obj)
  if obj == 'zn' then
    attr = {{'.zn','.on','.off','.valid'},{'_QN_ON','.Value','.reliabilityFlag'}} 
  elseif  string.find(obj, 'truck') ~= nil then
    attr = {{'.'..obj,'.in','.out','.valid'},{'_SQ_ON','.Value','.reliabilityFlag'}} 
  Core[Name[1]..attr[1][1]..attr[1][2]] = Core[Name[2]..attr[2][1]..attr[2][2]] 
  Core[Name[1]..attr[1][1]..attr[1][3]] = not(Core[Name[2]..attr[2][1]..attr[2][2]])
  Core[Name[1]..attr[1][1]..attr[1][4]] = Core[Name[2]..attr[2][1]..attr[2][3]] 
  end
end
--  Статика
function KTP1_sinit()
  switch_fill({'HMI_KTP1_VV1',true,'ВВ1','1Q'})
  switch_fill({'HMI_KTP1_VV2',true,'ВВ2','2Q'})
  switch_fill({'HMI_KTP1_SV',true,'СВ','3Q'})
  switch_fill({'HMI_KTP1_AV1',true,'АВ1','4Q'})
  switch_fill({'HMI_KTP1_OL_KTP2',true,'','5Q'})
end

function KTP2_sinit()
  switch_fill({'HMI_KTP2_VV1',true,'ВВ1','1Q'})
  switch_fill({'HMI_KTP2_VV2',true,'ВВ2','2Q'})
  switch_fill({'HMI_KTP2_SV',true,'СВ','3Q'})
  switch_fill({'HMI_KTP2_AV',true,'АВ1','4Q'})
end

function GSU_sinit()
  switch_fill({'HMI_GSU_VV1',false,'ВВ1','1Q'})
  switch_fill({'HMI_GSU_VV2',false,'ВВ2','2Q'})
end

function ZRU_sinit()
  ol_fill({'HMI_ZRU_VV1',true,'ВВ1','1Q',''})
  ol_fill({'HMI_ZRU_VV2',true,'ВВ2','2Q',''})
  ol_fill({'HMI_ZRU_SV',true,'СВ','Q12',''})
  switch_fill({'HMI_ZRU_SRZ',true,'','',''})
  ol_fill({'HMI_ZRU_OL1_1',true,'','','1.1'})
  ol_fill({'HMI_ZRU_OL1_2',true,'','','1.2'})
  ol_fill({'HMI_ZRU_OL1_3',true,'','','1.3'})
  ol_fill({'HMI_ZRU_OL1_4',true,'','','1.4'})
  ol_fill({'HMI_ZRU_OL1_6',true,'','','1.6'})
  ol_fill({'HMI_ZRU_OL1_7',true,'','','1.7'})
  ol_fill({'HMI_ZRU_OL1_8',true,'','','1.8'})
  ol_fill({'HMI_ZRU_OL1_12',true,'','','1.12'})
  ol_fill({'HMI_ZRU_OL2_6',true,'','','2.6'})
  ol_fill({'HMI_ZRU_OL2_8',true,'','','2.8'})
  ol_fill({'HMI_ZRU_OL2_9',true,'','','2.9'})
  ol_fill({'HMI_ZRU_OL2_10',true,'','','2.10'})
  ol_fill({'HMI_ZRU_OL2_11',true,'','','2.11'})
  ol_fill({'HMI_ZRU_OL2_13',true,'','','2.13'})
  ol_fill({'HMI_ZRU_OL2_14',true,'','','2.14'})
  ol_fill({'HMI_ZRU_OL2_15',true,'','','2.15'})
  ol_fill({'HMI_ZRU_OL2_16',true,'','','2.16'})
  ol_fill({'HMI_ZRU_OL2_17',true,'','','2.17'})
  ol_fill({'HMI_ZRU_OL2_18',true,'','','2.18'})
end

--  Динамика
function KTP1_dinit()
--  ВВ1
  Core['HMI_KTP1_VV1.du']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_X_POS_CONT.Value']
  Core['HMI_KTP1_VV1.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_ON.Value']
  Core['HMI_KTP1_VV1.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_OFF.Value']
  Core['HMI_KTP1_VV1.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_AvOFF.Value']
  Core['HMI_KTP1_VV1.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_ON.reliabilityFlag']
  Core['HMI_KTP1_VV1.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_SQ_IN.Value']
  Core['HMI_KTP1_VV1.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_SQ_OUT.Value']
  Core['HMI_KTP1_VV1.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN01_1Q_SQ_IN.reliabilityFlag']  
--  ВВ2
  Core['HMI_KTP1_VV2.du']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_X_POS_CONT.Value']
  Core['HMI_KTP1_VV2.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_ON.Value']
  Core['HMI_KTP1_VV2.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_OFF.Value']
  Core['HMI_KTP1_VV2.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_AvOFF.Value']
  Core['HMI_KTP1_VV2.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_ON.reliabilityFlag']
  Core['HMI_KTP1_VV2.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_SQ_IN.Value']
  Core['HMI_KTP1_VV2.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_SQ_OUT.Value']
  Core['HMI_KTP1_VV2.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN07_2Q_SQ_IN.reliabilityFlag']  
--  СВ
  Core['HMI_KTP1_SV.du']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_X_POS_CONT.Value']
  Core['HMI_KTP1_SV.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_ON.Value']
  Core['HMI_KTP1_SV.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_OFF.Value']
  Core['HMI_KTP1_SV.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_AvOFF.Value']
  Core['HMI_KTP1_SV.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_ON.reliabilityFlag']
  Core['HMI_KTP1_SV.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_SQ_IN.Value']
  Core['HMI_KTP1_SV.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_SQ_OUT.Value']
  Core['HMI_KTP1_SV.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN09_3Q_SQ_IN.reliabilityFlag']  
--  АВ1
  Core['HMI_KTP1_AV1.du']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_X_POS_CONT.Value']
  Core['HMI_KTP1_AV1.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_ON.Value']
  Core['HMI_KTP1_AV1.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_OFF.Value']
  Core['HMI_KTP1_AV1.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_AvOFF.Value']
  Core['HMI_KTP1_AV1.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_ON.reliabilityFlag']
  Core['HMI_KTP1_AV1.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_SQ_IN.Value']
  Core['HMI_KTP1_AV1.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_SQ_OUT.Value']
  Core['HMI_KTP1_AV1.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_4Q_SQ_IN.reliabilityFlag']  
--  ОЛ в КТП2
  Core['HMI_KTP1_OL_KTP2.du']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_X_POS_CONT.Value']
  Core['HMI_KTP1_OL_KTP2.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_ON.Value']
  Core['HMI_KTP1_OL_KTP2.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_OFF.Value']
  Core['HMI_KTP1_OL_KTP2.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_AvOFF.Value']
  Core['HMI_KTP1_OL_KTP2.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_ON.reliabilityFlag']
  Core['HMI_KTP1_OL_KTP2.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_SQ_IN.Value']
  Core['HMI_KTP1_OL_KTP2.truck.out']=not Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_SQ_IN.Value']
  Core['HMI_KTP1_OL_KTP2.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN13_5Q_SQ_IN.reliabilityFlag']  
--  АДЭС
  Core['HMI_KTP1_ADES_DG.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_6Q_ON.Value']
  Core['HMI_KTP1_ADES_DG.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_6Q_OFF.Value']
  Core['HMI_KTP1_ADES_DG.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP1_DI_PAN03_6Q_ON.reliabilityFlag']
end

function KTP2_dinit()
  --  ВВ1
  Core['HMI_KTP2_VV1.du']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_X_PCONT.Value']
  Core['HMI_KTP2_VV1.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_ON.Value']
  Core['HMI_KTP2_VV1.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_OFF.Value']
  Core['HMI_KTP2_VV1.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_AvOFF.Value']
  Core['HMI_KTP2_VV1.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_ON.reliabilityFlag']
  Core['HMI_KTP2_VV1.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_SQ_IN.Value']
  Core['HMI_KTP2_VV1.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_SQ_OUT.Value']
  Core['HMI_KTP2_VV1.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN01_1Q_SQ_IN.reliabilityFlag']  
--  ВВ2
  Core['HMI_KTP2_VV2.du']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_X_PCONT.Value']
  Core['HMI_KTP2_VV2.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_ON.Value']
  Core['HMI_KTP2_VV2.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_OFF.Value']
  Core['HMI_KTP2_VV2.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_AvOFF.Value']
  Core['HMI_KTP2_VV2.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_ON.reliabilityFlag']
  Core['HMI_KTP2_VV2.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_SQ_IN.Value']
  Core['HMI_KTP2_VV2.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_SQ_OUT.Value']
  Core['HMI_KTP2_VV2.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN07_2Q_SQ_IN.reliabilityFlag']  
--  СВ
  Core['HMI_KTP2_SV.du']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_X_PCONT.Value']
  Core['HMI_KTP2_SV.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_ON.Value']
  Core['HMI_KTP2_SV.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_OFF.Value']
  Core['HMI_KTP2_SV.q.avoff']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_AvOFF.Value']
  Core['HMI_KTP2_SV.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_ON.reliabilityFlag']
  Core['HMI_KTP2_SV.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_SQ_IN.Value']
  Core['HMI_KTP2_SV.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_SQ_OUT.Value']
  Core['HMI_KTP2_SV.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN09_3Q_SQ_IN.reliabilityFlag']  
--  АВ1
  Core['HMI_KTP2_AV.du']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_X_PCONT.Value']
  Core['HMI_KTP2_AV.q.on']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_ON.Value']
  Core['HMI_KTP2_AV.q.off']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_OFF.Value']
  Core['HMI_KTP2_AV.q.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_ON.reliabilityFlag']
  Core['HMI_KTP2_AV.truck.in']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_SQ_IN.Value']
  Core['HMI_KTP2_AV.truck.out']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_SQ_OUT.Value']
  Core['HMI_KTP2_AV.truck.valid']=Core['GSP_SEV_KSSEV_E_USOKTP2_DI_PAN03_4Q_SQ_IN.reliabilityFlag']  
end

function GSU_dinit()
--  ВВ1   GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_Q_AvOFF
  Core['HMI_GSU_VV1.du']=Core['GSP_SEV_KSSEV_E_USOGSU_DI_X_PCONT.Value']
  Core['HMI_GSU_VV1.q.on']=Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_1Q_ON.Value']
  Core['HMI_GSU_VV1.q.off']= not Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_1Q_ON.Value']
  Core['HMI_GSU_VV1.q.valid']=Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_1Q_ON.reliabilityFlag']
  Core['HMI_GSU_VV1.q.avoff']= Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_Q_AvOFF.Value']
--  ВВ2
  Core['HMI_GSU_VV2.du']=Core['GSP_SEV_KSSEV_E_USOGSU_DI_X_PCONT.Value']
  Core['HMI_GSU_VV2.q.on']=Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_2Q_ON.Value']
  Core['HMI_GSU_VV2.q.off']=Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_2Q_OFF.Value']
  Core['HMI_GSU_VV2.q.valid']=Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_2Q_ON.reliabilityFlag']
  Core['HMI_GSU_VV2.q.avoff']= Core['GSP_SEV_KSSEV_E_USOGSU_DI_PAN01_Q_AvOFF.Value']
end

function ZRU_dinit()                               -----------------------1 Вызов по кругу
  zru_process_sonet('VV1', '1_11')                 -----------------------2 Вызываем zru_process_sonet(c аргументами VV1, 1_11)
  zru_process_sonet('VV2', '2_3')
  zru_process_sonet('SV', '1_13')
  zru_process_sonet('SHTN1', '1_5')
  zru_process_sonet('SHTN2', '2_2')
  zru_process_sonet('SRZ', '2_1')
  zru_process_sonet('TSN1','1_10')
  zru_process_sonet('TSN2','2_4')
  for _, id in pairs(ZRU_OL_IDS) do zru_process_sonet('OL',id)  end

  Core['HMI_ZRU_SV.zn.on']=Core['GSP_SEV_KSSEV_E_USOE_DI_KRU1_13_QN_ON.Value']
  Core['HMI_ZRU_SV.zn.off']= not Core['GSP_SEV_KSSEV_E_USOE_DI_KRU1_13_QN_ON.Value']
  Core['HMI_ZRU_SV.zn.valid']=Core['GSP_SEV_KSSEV_E_USOE_DI_KRU1_13_QN_ON.reliabilityFlag']
end
--	Вызов функций инициализации
ZRU_sinit()
KTP1_sinit()
KTP2_sinit()
GSU_sinit()

while(true)do	
  KTP1_dinit()
  KTP2_dinit()
  GSU_dinit()
  ZRU_dinit()
	os.sleep(0.05)
end