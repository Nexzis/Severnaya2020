local LocalID = 'GSP_SEV_KSSEV_E_'   --Сигнал вернего уровня
local PLCID = 'PLC_GSP_SEV_KSSEV_E_' --Сигнал нижнего уровня


local Check_signal_gsu = 'USOGSU_A1_FAULT.Connect'
local Check_signal_ktp1 = 'USOKTP1_A1_FAULT.Connect'
local Check_signal_ktp2 = 'USOKTP2_A1_FAULT.Connect'
local Check_signal_usoe = 'USOE_A1_FAULT.Connect'
local Check_signal_sauvos= 'SAUVOS_A1_FAULT.Connect'
local Check_signal_usok = 'USOK_A1_FAULT.Connect'
local Check_signal_usop = 'USOP_A1_FAULT.Connect'

--Таблица сигналов
DI_SIG_TABLE_gsu = {
		'USOGSU_DI_DIAGN_1',
		'USOGSU_DI_DIAGN_2',
		'USOGSU_DI_DIAGN_3',
		'USOGSU_DI_DIAGN_4',
		'USOGSU_DI_DIAGN_5',
		'USOGSU_DI_DIAGN_6',
		'USOGSU_DI_DIAGN_7',
		'USOGSU_DI_DIAGN_8',
		'USOGSU_DI_DIAGN_9',
		'USOGSU_DI_DIAGN_RES03',
		'USOGSU_DI_DIAGN_RES04',
		'USOGSU_DI_DIAGN_RES05',
		'USOGSU_DI_DIAGN_RES06',
		'USOGSU_DI_DIAGN_RES07',
		'USOGSU_DI_DIAGN_RES08',
		'USOGSU_DI_DIAGN_RES09',
		'USOGSU_DI_PAN01_1Q_OFF',
		'USOGSU_DI_PAN01_1Q_ON',
		'USOGSU_DI_PAN01_2Q_OFF',
		'USOGSU_DI_PAN01_2Q_ON',
		'USOGSU_DI_PAN01_Q_AvOFF',
		'USOGSU_DI_PAN01_AVR_OFF',
		'USOGSU_DI_X_PCONT',
		'USOGSU_DI_X_RES10',
		'USOGSU_DI_X_RES11',
		'USOGSU_DI_AB1_VDC_LOW',
		'USOGSU_DI_AB1_SYSPSAC_FL',
		'USOGSU_DI_AB1_BAT_FL',
		'USOGSU_DI_X_RES12',

				}

DI_SIG_TABLE_ktp1 = {
	      'USOKTP1_DI_ADES_AVG_OFF',
	      'USOKTP1_DI_ADES_AVG_ON',
	      'USOKTP1_DI_ADES_DG_FL',
	      'USOKTP1_DI_ADES_DG_OL',
	      'USOKTP1_DI_ADES_DG_RD',
	      'USOKTP1_DI_ADES_DG_WK',
	      'USOKTP1_DI_ADES_FL',
	      'USOKTP1_DI_ADES_OL',
	     'USOKTP1_DI_DIAGN_1',
	      'USOKTP1_DI_DIAGN_2',
	      'USOKTP1_DI_DIAGN_3',
	      'USOKTP1_DI_DIAGN_4',
	      'USOKTP1_DI_DIAGN_5',
	      'USOKTP1_DI_DIAGN_6',
	      'USOKTP1_DI_DIAGN_7',
	      'USOKTP1_DI_DIAGN_8',
	      'USOKTP1_DI_DIAGN_9',
	      'USOKTP1_DI_DIAGN_RES06',
	      'USOKTP1_DI_DIAGN_RES07',
	     'USOKTP1_DI_DIAGN_RES09',
	      'USOKTP1_DI_DIAGN_RES10',
	      'USOKTP1_DI_DIAGN_RES11',
	      'USOKTP1_DI_DIAGN_RES12',
	      'USOKTP1_DI_DIAGN_RES08',
	      'USOKTP1_DI_KTP1_FL',
	      'USOKTP1_DI_PAN01_1Q_AvOFF',
	      'USOKTP1_DI_PAN01_1Q_FL',
	      'USOKTP1_DI_PAN01_1Q_OFF',
	      'USOKTP1_DI_PAN01_1Q_ON',
	      'USOKTP1_DI_PAN01_1Q_SQ_IN',
	      'USOKTP1_DI_PAN01_1Q_SQ_OUT',
	      'USOKTP1_DI_PAN02_4Q_AVR_FL',
	      'USOKTP1_DI_PAN02_4Q_AVR_FLRT',
	      'USOKTP1_DI_PAN02_4Q_AVR_OFF',
	      'USOKTP1_DI_PAN02_4Q_AVR_ON',
	      'USOKTP1_DI_PAN02_4Q_AVR_RT',
	      'USOKTP1_DI_PAN02_4Q_AVR_WK',
	      'USOKTP1_DI_PAN03_4Q_AvOFF',
	      'USOKTP1_DI_PAN03_4Q_FL',
	      'USOKTP1_DI_PAN03_4Q_OFF',
	      'USOKTP1_DI_PAN03_4Q_ON',
	      'USOKTP1_DI_PAN03_4Q_SQ_IN',
	      'USOKTP1_DI_PAN03_4Q_SQ_OUT',
	      'USOKTP1_DI_PAN03_6Q_OFF',
	      'USOKTP1_DI_PAN03_6Q_ON',
	      'USOKTP1_DI_PAN07_2Q_AvOFF',
	      'USOKTP1_DI_PAN07_2Q_FL',
	       'USOKTP1_DI_PAN07_2Q_OFF',
	       'USOKTP1_DI_PAN07_2Q_ON',
	      'USOKTP1_DI_PAN07_2Q_SQ_IN',
	      'USOKTP1_DI_PAN07_2Q_SQ_OUT',
	      'USOKTP1_DI_PAN08_3Q_AVR_FL',
	       'USOKTP1_DI_PAN08_3Q_AVR_FLRT',
	      'USOKTP1_DI_PAN08_3Q_AVR_OFF',
	      'USOKTP1_DI_PAN08_3Q_AVR_ON',
	      'USOKTP1_DI_PAN08_3Q_AVR_RT',
	       'USOKTP1_DI_PAN08_3Q_AVR_WK',
	      'USOKTP1_DI_PAN09_3Q_AvOFF',
	      'USOKTP1_DI_PAN09_3Q_FL',
	      'USOKTP1_DI_PAN09_3Q_OFF',
	      'USOKTP1_DI_PAN09_3Q_ON',
	      'USOKTP1_DI_PAN09_3Q_SQ_IN',
	       'USOKTP1_DI_PAN09_3Q_SQ_OUT',
	      'USOKTP1_DI_PAN13_5Q_AvOFF',
	      'USOKTP1_DI_PAN13_5Q_OFF',
	       'USOKTP1_DI_PAN13_5Q_ON',
	      'USOKTP1_DI_PAN13_5Q_SQ_IN',
	      'USOKTP1_DI_PAN13_5Q_SQ_OUT',
	      'USOKTP1_DI_TR1_T_OL',
	      'USOKTP1_DI_TR2_T_OL',
	      'USOKTP1_DI_X_POS_CONT',
	      'USOKTP1_DI_X_RES13',
	      'USOKTP1_DI_X_RES14',
	       'USOKTP1_DI_X_RES15',
	      'USOKTP1_DI_X_RES16',
	       'USOKTP1_DI_X_RES17',
	      'USOKTP1_DI_X_RES18',
	      'USOKTP1_DI_X_RES19',
	      'USOKTP1_DI_X_RES20',
	      'USOKTP1_DI_X_RES21',
-- с ПЛК А2
	      --['USOKTP1_DI_X_RES22'] = 'USOKTP1_DI_X_RES22',
	      --['USOKTP1_DI_X_RES23'] = 'USOKTP1_DI_X_RES23',
	      --['USOKTP1_DI_X_RES24'] = 'USOKTP1_DI_X_RES24',
	      --['USOKTP1_DI_X_RES25'] = 'USOKTP1_DI_X_RES25',
	      --['USOKTP1_DI_X_RES26'] = 'USOKTP1_DI_X_RES26',
	      --['USOKTP1_DI_X_RES27'] = 'USOKTP1_DI_X_RES27',
	      --['USOKTP1_DI_X_RES28'] = 'USOKTP1_DI_X_RES28',
	      --['USOKTP1_DI_X_RES29'] = 'USOKTP1_DI_X_RES29',
	      --['USOKTP1_DI_X_RES30'] = 'USOKTP1_DI_X_RES30',
	      --['USOKTP1_DI_X_RES31'] = 'USOKTP1_DI_X_RES31',
	      --['USOKTP1_DI_X_RES32'] = 'USOKTP1_DI_X_RES32',
	      --['USOKTP1_DI_X_RES33'] = 'USOKTP1_DI_X_RES33',
	      --['USOKTP1_DI_X_RES34'] = 'USOKTP1_DI_X_RES34',
	      --['USOKTP1_DI_X_RES35'] = 'USOKTP1_DI_X_RES35',
	      --['USOKTP1_DI_X_RES36'] = 'USOKTP1_DI_X_RES36',
	      --['USOKTP1_DI_X_RES37'] = 'USOKTP1_DI_X_RES37',

				}


DI_SIG_TABLE_ktp2 = {
				'USOKTP2_DI_DIAGN_1',
				'USOKTP2_DI_DIAGN_2',
				'USOKTP2_DI_DIAGN_3',
				'USOKTP2_DI_DIAGN_4',
				'USOKTP2_DI_DIAGN_5',
				'USOKTP2_DI_DIAGN_6',
				'USOKTP2_DI_DIAGN_7',
				'USOKTP2_DI_DIAGN_8',
				'USOKTP2_DI_DIAGN_9',
				'USOKTP2_DI_DIAGN_RES05',
				'USOKTP2_DI_DIAGN_RES06',
				'USOKTP2_DI_DIAGN_RES07',
				'USOKTP2_DI_DIAGN_RES08',
				'USOKTP2_DI_DIAGN_RES09',
				'USOKTP2_DI_DIAGN_RES10',
				'USOKTP2_DI_DIAGN_RES11',
				'USOKTP2_DI_PAN01_1Q_OFF',
				'USOKTP2_DI_PAN01_1Q_ON',
				'USOKTP2_DI_PAN01_1Q_FL',
				'USOKTP2_DI_PAN01_1Q_AvOFF',
				'USOKTP2_DI_PAN01_1Q_SQ_OUT',
				'USOKTP2_DI_PAN01_1Q_SQ_IN',
				'USOKTP2_DI_PAN03_4Q_OFF',
				'USOKTP2_DI_PAN03_4Q_ON',
				'USOKTP2_DI_PAN03_4Q_FL',
				'USOKTP2_DI_PAN03_4Q_SQ_OUT',
				'USOKTP2_DI_PAN03_4Q_SQ_IN',
				'USOKTP2_DI_PAN07_2Q_OFF',
				'USOKTP2_DI_PAN07_2Q_ON',
				'USOKTP2_DI_PAN07_2Q_FL',
				'USOKTP2_DI_PAN07_2Q_AvOFF',
				'USOKTP2_DI_PAN07_2Q_SQ_OUT',
				'USOKTP2_DI_PAN07_2Q_SQ_IN',
				'USOKTP2_DI_PAN09_3Q_OFF',
				'USOKTP2_DI_PAN09_3Q_ON',
				'USOKTP2_DI_PAN09_3Q_FL',
				'USOKTP2_DI_PAN09_3Q_AvOFF',
				'USOKTP2_DI_PAN09_3Q_SQ_OUT',
				'USOKTP2_DI_PAN09_3Q_SQ_IN',
				'USOKTP2_DI_PAN08_3Q_AVR_OFF',
				'USOKTP2_DI_PAN08_3Q_AVR_ON',
				'USOKTP2_DI_PAN08_3Q_AVR_FL',
				'USOKTP2_DI_PAN08_3Q_AVR_WK',
				'USOKTP2_DI_PAN08_3Q_AVR_RT',
				'USOKTP2_DI_PAN08_3Q_AVR_FLRT',
				'USOKTP2_DI_PAN02_4Q_AVR_OFF',
				'USOKTP2_DI_PAN02_4Q_AVR_ON',
				'USOKTP2_DI_PAN02_4Q_AVR_FL',
				'USOKTP2_DI_PAN02_4Q_AVR_WK',
				'USOKTP2_DI_PAN02_4Q_AVR_RT',
				'USOKTP2_DI_PAN02_4Q_AVR_FLRT',
				'USOKTP2_DI_KTP2_FL',
				'USOKTP2_DI_X_PCONT',
				'USOKTP2_DI_TR1_T_OL',
				'USOKTP2_DI_TR2_T_OL',
				'USOKTP2_DI_SHUOT_LOWCURRESIST',
				'USOKTP2_DI_SHUOT_AB_OFF',
				'USOKTP2_DI_X_RES12',
				'USOKTP2_DI_X_RES13',
				'USOKTP2_DI_X_RES14',
				'USOKTP2_DI_X_RES15',
				'USOKTP2_DI_X_RES16',
				'USOKTP2_DI_X_RES17',
				'USOKTP2_DI_X_RES18',
				'USOKTP2_DI_X_RES19',
				'USOKTP2_DI_X_RES20',
				'USOKTP2_DI_X_RES21',
				'USOKTP2_DI_X_RES22',
				'USOKTP2_DI_X_RES23',
				'USOKTP2_DI_X_RES24',
				'USOKTP2_DI_X_RES25',
				'USOKTP2_DI_X_RES26',
				'USOKTP2_DI_X_RES27',
				'USOKTP2_DI_X_RES28',
				'USOKTP2_DI_X_RES29',
				'USOKTP2_DI_X_RES30',
				'USOKTP2_DI_X_RES31',
				'USOKTP2_DI_X_RES32',
				'USOKTP2_DI_X_RES33',
				'USOKTP2_DI_X_RES34',

				}

DI_SIG_TABLE_usoe = {
				'USOE_DI_DIAGN_1',
				'USOE_DI_DIAGN_2',
				'USOE_DI_DIAGN_3',
				'USOE_DI_DIAGN_4',
				'USOE_DI_DIAGN_5',
				'USOE_DI_DIAGN_6',
				'USOE_DI_DIAGN_7',
				'USOE_DI_DIAGN_8',
				'USOE_DI_DIAGN_9',
				'USOE_DI_DIAGN_RES02',
				'USOE_DI_DIAGN_RES03',
				'USOE_DI_DIAGN_RES04',
				'USOE_DI_DIAGN_RES05',
				'USOE_DI_DIAGN_RES06',
				'USOE_DI_DIAGN_RES07',
				'USOE_DI_DIAGN_RES08',
				'USOE_DI_KRU1_1_SQ_ON',
				'USOE_DI_KRU1_2_SQ_ON',
				'USOE_DI_KRU1_3_SQ_ON',
				'USOE_DI_KRU1_4_SQ_ON',
				'USOE_DI_KRU1_5_SQ_ON',
				'USOE_DI_KRU1_6_SQ_ON',
				'USOE_DI_KRU1_7_SQ_ON',
				'USOE_DI_KRU1_8_SQ_ON',
				'USOE_DI_KRU1_10_SQ_ON',
				'USOE_DI_KRU1_11_SQ_ON',
				'USOE_DI_KRU1_12_SQ_ON',
				'USOE_DI_KRU1_13_SQ_ON',
				'USOE_DI_KRU2_1_SQ_ON',
				'USOE_DI_KRU2_2_SQ_ON',
				'USOE_DI_KRU2_3_SQ_ON',
				'USOE_DI_KRU2_4_SQ_ON',
				'USOE_DI_KRU2_6_SQ_ON',
				'USOE_DI_KRU2_8_SQ_ON',
				'USOE_DI_KRU2_9_SQ_ON',
				'USOE_DI_KRU2_10_SQ_ON',
				'USOE_DI_KRU2_11_SQ_ON',
				'USOE_DI_KRU2_12_SQ_ON',
				'USOE_DI_KRU2_13_SQ_ON',
				'USOE_DI_KRU2_14_SQ_ON',
				'USOE_DI_KRU2_15_SQ_ON',
				'USOE_DI_KRU2_16_SQ_ON',
				'USOE_DI_KRU2_17_SQ_ON',
				'USOE_DI_KRU2_18_SQ_ON',
				'USOE_DI_KRU1_1_QN_ON',
				'USOE_DI_KRU1_2_QN_ON',
				'USOE_DI_KRU1_3_QN_ON',
				'USOE_DI_KRU1_4_QN_ON',
				'USOE_DI_KRU1_5_QN_ON',
				'USOE_DI_KRU1_6_QN_ON',
				'USOE_DI_KRU1_7_QN_ON',
				'USOE_DI_KRU1_8_QN_ON',
				'USOE_DI_KRU1_11_QN_ON',
				'USOE_DI_KRU1_12_QN_ON',
				'USOE_DI_KRU1_13_QN_ON',
				'USOE_DI_KRU2_2_QN_ON',
				'USOE_DI_KRU2_3_QN_ON',
				'USOE_DI_KRU2_6_QN_ON',
				'USOE_DI_KRU2_8_QN_ON',
				'USOE_DI_KRU2_9_QN_ON',
				'USOE_DI_KRU2_10_QN_ON',
				'USOE_DI_KRU2_11_QN_ON',
				'USOE_DI_KRU2_12_QN_ON',
				'USOE_DI_KRU2_13_QN_ON',
				'USOE_DI_KRU2_14_QN_ON',
				'USOE_DI_KRU2_15_QN_ON',
				'USOE_DI_KRU2_16_QN_ON',
				'USOE_DI_KRU2_17_QN_ON',
				'USOE_DI_KRU2_18_QN_ON',
				'USOE_DI_KRU1_13_AVR_OFF',
				'USOE_DI_KRU1_13_AVR_ON',
				'USOE_DI_UKP_1_QF_PS_OFF',
				'USOE_DI_UKP_1_QF_PS_ON',
				'USOE_DI_UKP_1_RV_OFF',
				'USOE_DI_UKP_1_RV_ON',
				'USOE_DI_UKP_1_FU_BL',
				'USOE_DI_UKP_1_L_BR',
				'USOE_DI_UKP_2_QF_PS_OFF',
				'USOE_DI_UKP_2_QF_PS_ON',
				'USOE_DI_UKP_2_RV_OFF',
				'USOE_DI_UKP_2_RV_ON',
				'USOE_DI_UKP_2_FU_BL',
				'USOE_DI_UKP_2_L_BR',
				'USOE_DI_SHUOT_OFF',
				'USOE_DI_SHUOT_EN_FL',
				'USOE_DI_SHUOT_BAT_V_LOW',
				'USOE_DI_SHUOT_BAT_CIR_FL',
				'USOE_DI_SHUOT_SC_POS',
				'USOE_DI_SHUOT_SC_NEG',
				'USOE_DI_SHUOT_QF_WK',
				'USOE_DI_SHUOT_BAT_MODE',
				'USOE_DI_X_RES09',
				'USOE_DI_X_RES10',
				'USOE_DI_X_RES11',
				'USOE_DI_X_RES12',
				'USOE_DI_X_RES13',
				'USOE_DI_X_RES14',
				'USOE_DI_X_RES15',
				'USOE_DI_X_RES16',
				'USOE_DI_X_RES17',
				'USOE_DI_X_RES18',
				'USOE_DI_X_RES19',
				'USOE_DI_X_RES20',
				'USOE_DI_X_RES21',
				'USOE_DI_X_RES22',
				'USOE_DI_X_RES23',
				'USOE_DI_X_RES24',
				'USOE_DI_X_RES25',
				'USOE_DI_X_RES26',
				'USOE_DI_X_RES27',
				'USOE_DI_X_RES28',
				'USOE_DI_X_RES29',

				}

DI_SIG_TABLE_sauvos = {
         'SAUVOS_DI_DIAGN_1',
         'SAUVOS_DI_DIAGN_2',
         'SAUVOS_DI_DIAGN_3',
         'SAUVOS_DI_DIAGN_4',
         'SAUVOS_DI_DIAGN_5',
         'SAUVOS_DI_DIAGN_6',
         'SAUVOS_DI_DIAGN_7',
         'SAUVOS_DI_CMR_FULL',
         'SAUVOS_DI_H1_ON',
         'SAUVOS_DI_H1_DRYRUN',
         'SAUVOS_DI_H1_FL',
         'SAUVOS_DI_CA_FULL',
         'SAUVOS_DI_H2_ON',
         'SAUVOS_DI_H2_DRYRUN',
         'SAUVOS_DI_H2_FL',
         'SAUVOS_DI_X_RES01',
         'SAUVOS_DI_ART2_H_ON',
         'SAUVOS_DI_X_MCONT',
         'SAUVOS_DI_X_ACONT',
         'SAUVOS_DI_H_OL',
         'SAUVOS_DI_X_DRYRUN',
         'SAUVOS_DI_PS_NORMAL',
         'SAUVOS_DI_X_RES02',
         'SAUVOS_DI_X_RES03',
         'SAUVOS_DI_X_RES04',
         'SAUVOS_DI_X_RES05',
         'SAUVOS_DI_X_RES06',
         'SAUVOS_DI_X_RES07',
         'SAUVOS_DI_X_RES08',
         'SAUVOS_DI_X_RES09',
         'SAUVOS_DI_X_RES10',
         'SAUVOS_DI_X_RES11',	
				
				}



--Таблица сигналов
DI_SIG_TABLE_usok = {
				'USOK_DI_DIAGN_1',
				'USOK_DI_DIAGN_2',
				'USOK_DI_DIAGN_3',
				'USOK_DI_DIAGN_4',
				'USOK_DI_DIAGN_5',
				'USOK_DI_DIAGN_6',
				'USOK_DI_DIAGN_7',
				'USOK_DI_X_RES01',
				'USOK_DI_B_AvOST',
				'USOK_DI_BURN_AvOST',
				'USOK_DI_B_TOUT_HIGH',
				'USOK_DI_B_P_LOW',
				'USOK_DI_B_C_LOW',
				'USOK_DI_B_P_HIGH',
				'USOK_DI_FIREBOX_P_HIGH',
				'USOK_DI_H1_WK',
				'USOK_DI_H1_FL',
				'USOK_DI_H2_WK',
				'USOK_DI_H2_FL',
				'USOK_DI_GVS_H1_WK',
				'USOK_DI_GVS_H1_FL',
				'USOK_DI_GVS_H2_WK',
				'USOK_DI_GVS_H2_FL',
				'USOK_DI_X_RES02',
				'USOK_DI_X_RES03',
				'USOK_DI_BOILER1_ON',
				'USOK_DI_BOILER2_ON',
				'USOK_DI_BOILER3_ON',
				'USOK_DI_BOILER4_ON',
				'USOK_DI_BOILER_GVS_ON',
				
				}


DI_SIG_TABLE_usop = {
				'USOP_DI_DIAGN_1',
				'USOP_DI_DIAGN_2',
				'USOP_DI_DIAGN_3',
				'USOP_DI_DIAGN_4',
				'USOP_DI_DIAGN_5',
				'USOP_DI_DIAGN_6',
				'USOP_DI_DIAGN_7',
				'USOP_DI_KEY_H1',
				'USOP_DI_KEY_H2',
				'USOP_DI_KEY_H1_ACONT',
				'USOP_DI_KEY_H1_MCONT',
				'USOP_DI_H1_ON',
				'USOP_DI_KEY_H2_ACONT',
				'USOP_DI_KEY_H2_MCONT',
				'USOP_DI_H2_ON',
				'USOP_DI_KEY_H3',
				'USOP_DI_KEY_H4',
				'USOP_DI_KEY_H3_ACONT',
				'USOP_DI_KEY_H3_MCONT',
				'USOP_DI_H3_ON',
				'USOP_DI_KEY_H4_ACONT',
				'USOP_DI_KEY_H4_MCONT',
				'USOP_DI_H4_ON',
				'USOP_DI_BOOST_H_START',
				'USOP_DI_BOOST_H_STOP',
				'USOP_DI_X_RES01',
				'USOP_DI_X_RES02',
				'USOP_DI_X_RES03',
				'USOP_DI_X_RES04',
				'USOP_DI_X_RES05',
				'USOP_DI_X_RES06',
				'USOP_DI_X_RES07',
				
				}

--Таблица значений сигналов
DI_PARAM_TABLE = {	'.Value', '.reliabilityFlag', }

--функция переприсвоения
function GRAB_DI_gsu(DI_params_gsu)
	local signal_gsu = DI_params_gsu[1]
	local param_gsu = DI_params_gsu[2]
--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core[Check_signal_gsu] == true then
			Core[LocalID..signal_gsu..param_gsu] = Core[PLCID..signal_gsu..param_gsu]
		else
			Core[LocalID..signal_gsu..'.reliabilityFlag'] = false
			Core[PLCID..signal_gsu..'.reliabilityFlag'] = false
		end
end

--инициализация при старте
for _, signal_gsu in pairs(DI_SIG_TABLE_gsu) do
  for _, param_gsu in pairs(DI_PARAM_TABLE) do
    GRAB_DI_gsu({signal_gsu, param_gsu})
  end
end
--Core.onExtChange 
for _, signal_gsu in pairs(DI_SIG_TABLE_gsu) do
  for _, param_gsu in pairs(DI_PARAM_TABLE) do
   Core.onExtChange({PLCID..signal_gsu..param_gsu, Check_signal_gsu}, GRAB_DI_gsu, {signal_gsu, param_gsu})
  end
end


--функция переприсвоения
function GRAB_DI_ktp1(DI_params_ktp1)
	local signal_ktp1 = DI_params_ktp1[1]
	local param_ktp1 = DI_params_ktp1[2]
--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core[Check_signal_ktp1] == true then
			Core[LocalID..signal_ktp1..param_ktp1] = Core[PLCID..signal_ktp1..param_ktp1]
		else
			Core[LocalID..signal_ktp1..'.reliabilityFlag'] = false
			Core[PLCID..signal_ktp1..'.reliabilityFlag'] = false
		end
end

--инициализация при старте
for _, signal_ktp1 in pairs(DI_SIG_TABLE_ktp1) do
  for _, param_ktp1 in pairs(DI_PARAM_TABLE) do
    GRAB_DI_ktp1({signal_ktp1, param_ktp1})
  end
end
--Core.onExtChange 
for _, signal_ktp1 in pairs(DI_SIG_TABLE_ktp1) do
  for _, param_ktp1 in pairs(DI_PARAM_TABLE) do
   Core.onExtChange({PLCID..signal_ktp1..param_ktp1, Check_signal_ktp1}, GRAB_DI_ktp1, {signal_ktp1, param_ktp1})
  end
end


--функция переприсвоения
function GRAB_DI_ktp2(DI_params_ktp2)
	local signal_ktp2 = DI_params_ktp2[1]
	local param_ktp2 = DI_params_ktp2[2]
--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core[Check_signal_ktp2] == true then
			Core[LocalID..signal_ktp2..param_ktp2] = Core[PLCID..signal_ktp2..param_ktp2]
		else
			Core[LocalID..signal_ktp2..'.reliabilityFlag'] = false
			Core[PLCID..signal_ktp2..'.reliabilityFlag'] = false
		end
end

--инициализация при старте
for _, signal_ktp2 in pairs(DI_SIG_TABLE_ktp2) do
  for _, param_ktp2 in pairs(DI_PARAM_TABLE) do
    GRAB_DI_ktp2({signal_ktp2, param_ktp2})
  end
end
--Core.onExtChange 
for _, signal_ktp2 in pairs(DI_SIG_TABLE_ktp2) do
  for _, param_ktp2 in pairs(DI_PARAM_TABLE) do
   Core.onExtChange({PLCID..signal_ktp2..param_ktp2, Check_signal_ktp2}, GRAB_DI_ktp2, {signal_ktp2, param_ktp2})
  end
end

--функция переприсвоения
function GRAB_DI_usoe(DI_params_usoe)
	local signal_usoe = DI_params_usoe[1]
	local param_usoe = DI_params_usoe[2]
--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core[Check_signal_usoe] == true then
			Core[LocalID..signal_usoe..param_usoe] = Core[PLCID..signal_usoe..param_usoe]
		else
			Core[LocalID..signal_usoe..'.reliabilityFlag'] = false
			Core[PLCID..signal_usoe..'.reliabilityFlag'] = false
		end
end

--инициализация при старте
for _, signal_usoe in pairs(DI_SIG_TABLE_usoe) do
  for _, param_usoe in pairs(DI_PARAM_TABLE) do
    GRAB_DI_usoe({signal_usoe, param_usoe})
  end
end
--Core.onExtChange 
for _, signal_usoe in pairs(DI_SIG_TABLE_usoe) do
  for _, param_usoe in pairs(DI_PARAM_TABLE) do
   Core.onExtChange({PLCID..signal_usoe..param_usoe, Check_signal_usoe}, GRAB_DI_usoe, {signal_usoe, param_usoe})
  end
end


--функция переприсвоения
function GRAB_DI_sauvos(DI_params_sauvos)
	local signal_sauvos = DI_params_sauvos[1]
	local param_sauvos = DI_params_sauvos[2]
--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core[Check_signal_sauvos] == true then
			Core[LocalID..signal_sauvos..param_sauvos] = Core[PLCID..signal_sauvos..param_sauvos]
		else
			Core[LocalID..signal_sauvos..'.reliabilityFlag'] = false
			Core[PLCID..signal_sauvos..'.reliabilityFlag'] = false
		end
end

--инициализация при старте
for _, signal_sauvos in pairs(DI_SIG_TABLE_sauvos) do
  for _, param_sauvos in pairs(DI_PARAM_TABLE) do
    GRAB_DI_sauvos({signal_sauvos, param_sauvos})
  end
end
--Core.onExtChange 
for _, signal_sauvos in pairs(DI_SIG_TABLE_sauvos) do
  for _, param_sauvos in pairs(DI_PARAM_TABLE) do
   Core.onExtChange({PLCID..signal_sauvos..param_sauvos, Check_signal_sauvos}, GRAB_DI_sauvos, {signal_sauvos, param_sauvos})
  end
end


--функция переприсвоения
function GRAB_DI_usok(DI_params_usok)
	local signal_usok = DI_params_usok[1]
	local param_usok = DI_params_usok[2]
--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core[Check_signal_usok] == true then
			Core[LocalID..signal_usok..param_usok] = Core[PLCID..signal_usok..param_usok]
		else
			Core[LocalID..signal_usok..'.reliabilityFlag'] = false
			Core[PLCID..signal_usok..'.reliabilityFlag'] = false
		end
end

--инициализация при старте
for _, signal_usok in pairs(DI_SIG_TABLE_usok) do
  for _, param_usok in pairs(DI_PARAM_TABLE) do
    GRAB_DI_usok({signal_usok, param_usok})
  end
end
--Core.onExtChange 
for _, signal_usok in pairs(DI_SIG_TABLE_usok) do
  for _, param_usok in pairs(DI_PARAM_TABLE) do
   Core.onExtChange({PLCID..signal_usok..param_usok, Check_signal_usok}, GRAB_DI_usok, {signal_usok, param_usok})
  end
end


--функция переприсвоения
function GRAB_DI_usop(DI_params_usop)
	local signal_usop = DI_params_usop[1]
	local param_usop = DI_params_usop[2]
--Условие: если имеется наличие связи с узлом то переприсваеваем сигналы, иначе выставляем флаги достоверности в false
		if  Core[Check_signal_usop] == true then
			Core[LocalID..signal_usop..param_usop] = Core[PLCID..signal_usop..param_usop]
		else
			Core[LocalID..signal_usop..'.reliabilityFlag'] = false
			Core[PLCID..signal_usop..'.reliabilityFlag'] = false
		end
end

--инициализация при старте
for _, signal_usop in pairs(DI_SIG_TABLE_usop) do
  for _, param_usop in pairs(DI_PARAM_TABLE) do
    GRAB_DI_usop({signal_usop, param_usop})
  end
end
--Core.onExtChange 
for _, signal_usop in pairs(DI_SIG_TABLE_usop) do
  for _, param_usop in pairs(DI_PARAM_TABLE) do
   Core.onExtChange({PLCID..signal_usop..param_usop, Check_signal_usop}, GRAB_DI_usop, {signal_usop, param_usop})
  end
end






--=================ПЕРЕПРИСВОЕНИЕ СИГНАЛОВ О СОСТОЯНИИ МОДУЛЕЙ=======--

--Префикс сигналов
StatusID_GSU = 'USOGSU_A1_FAULT'        --Верхнийуровень
PLCStatusID_GSU = 'PLC_USOGSU_A1_FAULT' --Нижний уровень
--Префикс сигналов
StatusID_USOKTP1_A1 = 'USOKTP1_A1_FAULT'        --Верхнийуровень
PLCStatusID_USOKTP1_A1 = 'PLC_USOKTP1_A1_FAULT' --Нижний уровень
--Префикс сигналов
StatusID_USOKTP1_A2 = 'USOKTP1_A2_FAULT'        --Верхнийуровень
PLCStatusID_USOKTP1_A2 = 'PLC_USOKTP1_A2_FAULT' --Нижний уровень
--Префикс сигналов
StatusID_USOKTP2_A1 = 'USOKTP2_A1_FAULT'        --Верхнийуровень
PLCStatusID_USOKTP2_A1 = 'PLC_USOKTP2_A1_FAULT' --Нижний уровень
--Префикс сигналов
StatusID_USOKTP2_A2 = 'USOKTP2_A2_FAULT'        --Верхнийуровень
PLCStatusID_USOKTP2_A2 = 'PLC_USOKTP2_A2_FAULT' --Нижний уровень

StatusID_SAUVOS = 'SAUVOS_A1_FAULT'        --Верхнийуровень
PLCStatusID_SAUVOS = 'PLC_SAUVOS_A1_FAULT' --Нижний уровень

StatusID_USOK = 'USOK_A1_FAULT'        --Верхнийуровень
PLCStatusID_USOK = 'PLC_USOK_A1_FAULT' --Нижний уровень


--Префикс сигналов
StatusID_USOP = 'USOP_A1_FAULT'        --Верхнийуровень
PLCStatusID_USOP = 'PLC_USOP_A1_FAULT' --Нижний уровень

StatusID_USOE = 'USOE_A1_FAULT'        --Верхнийуровень
PLCStatusID_USOE = 'PLC_USOE_A1_FAULT' --Нижний уровень


--Таблица значений
SLOT_TABLE_GSU = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			'.Slot6',
			'.Slot7',
			'.Slot8',
			'.Slot9',
			'.Slot10',
				 }

--Таблица значений
SLOT_TABLE_USOKTP1_A1 = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			'.Slot6',
			'.Slot7',
			'.Slot8',
			'.Slot9',
			'.Slot10',
				 }

--Таблица значений
SLOT_TABLE_USOKTP1_A2 = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			'.Slot6',
			'.Slot7',
			'.Slot8',
			'.Slot9',
			'.Slot10',
				 }


--Таблица значений
SLOT_TABLE_USOKTP2_A1 = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			'.Slot6',
			'.Slot7',
			'.Slot8',
			'.Slot9',
			'.Slot10',
				 }

--Таблица значений
SLOT_TABLE_USOKTP2_A2 = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			'.Slot6',
			'.Slot7',
			'.Slot8',
			'.Slot9',
			'.Slot10',
				 }

--Таблица значений
SLOT_TABLE_SAUVOS = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			--'.Slot6',
			--'.Slot7',
			--'.Slot8',
			--'.Slot9',
			--'.Slot10',
				 }

--Таблица значений
SLOT_TABLE_USOE = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			'.Slot6',
			'.Slot7',
			'.Slot8',
			'.Slot9',
			'.Slot10',
				 }

--Таблица значений
SLOT_TABLE_USOK = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			--'.Slot5',
			--'.Slot6',
			--'.Slot7',
			--'.Slot8',
			--'.Slot9',
			--'.Slot10',
				 }

--Таблица значений
SLOT_TABLE_USOP = {
			'.CPU',
			'.Slot3',
			'.Slot4',
			'.Slot5',
			--'.Slot6',
			--'.Slot7',
			--'.Slot8',
			--'.Slot9',
			--'.Slot10',
				 }

--функция переприсвоения
function GRAB_SLOT_GSU(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_GSU..slot] = Core[PLCStatusID_GSU..slot]
end


for _, slot in pairs(SLOT_TABLE_GSU) do
    GRAB_SLOT_GSU({slot})
end

for _, slot in pairs(SLOT_TABLE_GSU) do
    Core.onExtChange({PLCStatusID_GSU..slot}, GRAB_SLOT_GSU, {slot})
end







--функция переприсвоения
function GRAB_SLOT_USOKTP1_A1(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_USOKTP1_A1..slot] = Core[PLCStatusID_USOKTP1_A1..slot]
end


for _, slot in pairs(SLOT_TABLE_USOKTP1_A1) do
    GRAB_SLOT_USOKTP1_A1({slot})
end

for _, slot in pairs(SLOT_TABLE_USOKTP1_A1) do
    Core.onExtChange({PLCStatusID_USOKTP1_A1..slot}, GRAB_SLOT_USOKTP1_A1, {slot})
end







--функция переприсвоения
function GRAB_SLOT_USOKTP1_A2(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_USOKTP1_A2..slot] = Core[PLCStatusID_USOKTP1_A2..slot]
end


for _, slot in pairs(SLOT_TABLE_USOKTP1_A2) do
    GRAB_SLOT_USOKTP1_A2({slot})
end

for _, slot in pairs(SLOT_TABLE_USOKTP1_A2) do
    Core.onExtChange({PLCStatusID_USOKTP1_A2..slot}, GRAB_SLOT_USOKTP1_A2, {slot})
end







--функция переприсвоения
function GRAB_SLOT_USOKTP2_A1(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_USOKTP2_A1..slot] = Core[PLCStatusID_USOKTP2_A1..slot]
end


for _, slot in pairs(SLOT_TABLE_USOKTP2_A1) do
    GRAB_SLOT_USOKTP2_A1({slot})
end

for _, slot in pairs(SLOT_TABLE_USOKTP2_A1) do
    Core.onExtChange({PLCStatusID_USOKTP2_A1..slot}, GRAB_SLOT_USOKTP2_A1, {slot})
end








--функция переприсвоения
function GRAB_SLOT_USOKTP2_A2(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_USOKTP2_A2..slot] = Core[PLCStatusID_USOKTP2_A2..slot]
end


for _, slot in pairs(SLOT_TABLE_USOKTP2_A2) do
    GRAB_SLOT_USOKTP2_A2({slot})
end

for _, slot in pairs(SLOT_TABLE_USOKTP2_A2) do
    Core.onExtChange({PLCStatusID_USOKTP2_A2..slot}, GRAB_SLOT_USOKTP2_A2, {slot})
end







--функция переприсвоения
function GRAB_SLOT_SAUVOS(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_SAUVOS..slot] = Core[PLCStatusID_SAUVOS..slot]
end


for _, slot in pairs(SLOT_TABLE_SAUVOS) do
    GRAB_SLOT_SAUVOS({slot})
end

for _, slot in pairs(SLOT_TABLE_SAUVOS) do
    Core.onExtChange({PLCStatusID_SAUVOS..slot}, GRAB_SLOT_SAUVOS, {slot})
end






--функция переприсвоения
function GRAB_SLOT_USOE(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_USOE..slot] = Core[PLCStatusID_USOE..slot]
end


for _, slot in pairs(SLOT_TABLE_USOE) do
    GRAB_SLOT_USOE({slot})
end

for _, slot in pairs(SLOT_TABLE_USOE) do
    Core.onExtChange({PLCStatusID_USOE..slot}, GRAB_SLOT_USOE, {slot})
end








--функция переприсвоения
function GRAB_SLOT_USOK(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_USOK..slot] = Core[PLCStatusID_USOK..slot]
end


for _, slot in pairs(SLOT_TABLE_USOK) do
    GRAB_SLOT_USOK({slot})
end

for _, slot in pairs(SLOT_TABLE_USOK) do
    Core.onExtChange({PLCStatusID_USOK..slot}, GRAB_SLOT_USOK, {slot})
end







--функция переприсвоения
function GRAB_SLOT_USOP(SLOT_params)
	local slot = SLOT_params[1]

	Core[StatusID_USOP..slot] = Core[PLCStatusID_USOP..slot]
end


for _, slot in pairs(SLOT_TABLE_USOP) do
    GRAB_SLOT_USOP({slot})
end

for _, slot in pairs(SLOT_TABLE_USOP) do
    Core.onExtChange({PLCStatusID_USOP..slot}, GRAB_SLOT_USOP, {slot})
end



Core.waitEvents()

