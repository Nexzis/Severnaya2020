while true do
	
	--Core.USOKTP1_A1_3.i1_status = 0	
	--Core.USOKTP1_A1_6.i1_status = 0
	Core.SOTEC_VV1.I_1 = 350
	Core.SOTEC_VV1.I_2 = 360
	Core.SOTEC_VV1.I_3 = 370
	Core.SOTEC_VV1.U_12 = 44000
	Core.SOTEC_VV1.U_23 = 44400
	os.sleep(50)

	--Core.USOKTP1_A1_3.i1 = 5
	--Core.USOKTP1_A1_6.i1 = true
	Core.SOTEC_VV1.I_1 = 380
	Core.SOTEC_VV1.I_2 = 390
	Core.SOTEC_VV1.I_3 = 400
	Core.SOTEC_VV1.U_12 = 44200
	Core.SOTEC_VV1.U_23 = 44500
	os.sleep(50)

	--Core.USOKTP1_A1_3.i1 = 5
	--Core.USOKTP1_A1_6.i1 = true
	Core.SOTEC_VV1.I_1 = 440
	Core.SOTEC_VV1.I_2 = 450
	Core.SOTEC_VV1.I_3 = 500
	Core.SOTEC_VV1.U_12 = 45000
	Core.SOTEC_VV1.U_23 = 45100
	os.sleep(50)

	--Core.USOKTP1_A1_3.i1 = 5
	--Core.USOKTP1_A1_6.i1 = true
	Core.SOTEC_VV1.I_1 = 460
	Core.SOTEC_VV1.I_2 = 470
	Core.SOTEC_VV1.I_3 = 550
	Core.SOTEC_VV1.U_12 = 45500
	Core.SOTEC_VV1.U_23 = 45800
	os.sleep(50)

	--Core.USOKTP1_A1_3.i1 = 15
	--Core.USOKTP1_A1_6.i1 = false
	Core.SOTEC_VV1.I_1 = 480
	Core.SOTEC_VV1.I_2 = 490
	Core.SOTEC_VV1.I_3 = 600
	Core.SOTEC_VV1.U_12 = 46000
	Core.SOTEC_VV1.U_23 = 46200
	os.sleep(50)

	--Core.USOKTP1_A1_3.i1 = 5
	--Core.USOKTP1_A1_6.i1 = true
	Core.SOTEC_VV1.I_1 = 500
	Core.SOTEC_VV1.I_2 = 540
	Core.SOTEC_VV1.I_3 = 640
	Core.SOTEC_VV1.U_12 = 46500
	Core.SOTEC_VV1.U_23 = 46700
	os.sleep(50)
	--Core.USOKTP1_A1_3.i1 = 15
		--Core.USOKTP1_A1_6.i1 = false
	Core.SOTEC_VV1.I_1 = 530
	Core.SOTEC_VV1.I_2 = 570
	Core.SOTEC_VV1.I_3 = 670
	Core.SOTEC_VV1.U_12 = 46800
	Core.SOTEC_VV1.U_23 = 47100
	os.sleep(50)
	

	--Core.USOKTP1_A1_3.i1 = 5
		--Core.USOKTP1_A1_6.i1 = true
Core.SOTEC_VV1.I_1 = 500
	os.sleep(50)


	--Core.USOKTP1_A1_3.i1 = 15
		--Core.USOKTP1_A1_6.i1 = false
Core.SOTEC_VV1.I_1 = 550
	os.sleep(50)

	--Core.USOKTP1_A1_3.i1 = 5
		--Core.USOKTP1_A1_6.i1 = true
Core.SOTEC_VV1.I_1 = 600
	os.sleep(50)

--	Core.USOKTP1_A1_3.i1 = 35000
		--Core.USOKTP1_A1_6.i1 = false
Core.SOTEC_VV1.I_1 = 650
	os.sleep(50)

end