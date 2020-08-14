-- /////////////////////// ���� �������////////////////////
local Sonet_DI_Processing={}
-- ///////////////////////��������� �������� ����������////////////////////
function Sonet_DI_Processing.Process_DI_Data(Signal) 
		
		
		-- ����������
		local points=2 -- ���������� �������������� ����� ��� ��������
		local timestamp=os.time(); -- ����� �������� ������� (�������� �����)--������ � ������� ��������������� �������� ���, �������� ��� �������
		local OutputName --��� ��������� ���� 
		--local InputName=Signal[1] -- �������� ��������������� ������� �� ����� ���
		local VarName=Signal[1]
		--local ModuleReliabilityFlag =Signal[3]
		local ModuleNum=Signal[3]	
		--if Module_ready[ModuleNum] ==true then aa="true!" else aa="false!" end
		--Core.addLogMsg("Process_DI_Data. Slot "..ModuleNum.. "    " .. aa)
		local InputName=string.gsub(Signal[1], ObjID, "")
		--local repairedFlag= Core[ObjID..Signals[InputName]["Tag"]..".repaireFlag"] -- ������ ������� ��������� ������
		local e_type -- ��� ������� (���������/������������)
		local oldValue= oldsignals[InputName]
					
				if Signals[InputName]==nil then -- ���� ������ � ������� �� ������
						Core.addLogMsg("����� "..InputName..". ��� ������� DI ����� ����������� �������� � ������� Signals") -- �������� ��������� �� ������ � ����
						return -- ��������� ������ ������� Process_DI_Data
				else
				  	    OutputName=ObjID..Signals[InputName]["Tag"] --��� ��������� ���� ��������
						if Signals[InputName]["repaireFlag"]== true -- � �������� �� ���������� � ������� (������ ������)
						then
						   	Core.addLogMsg("����� ����"..ObjID..Signals[InputName]["Tag"].." �������� ��-�� ������ ������������ � ������(����� ".. InputName.. ").") -- �������� ��������� � ����	 
					   		return -- ���������� ������ ������� Process_DI_Data
						end
				end --Signals[InputName]["Tag"]
			
			-- �������� �� �������
				if  bounce_check==true then --���� �������� �������� �� �������
					local InDI={} -- ������ ������ �� ����� 
					local bounce_flag=false -- ������� �������� ���������
					local step=pulse_duration/points --��� �������� ������������ �������� (/2 ������ �� ��� ������)
					-- ���� ������������ ������ �����
							for i=1, points+1 do  
								InDI[i]=Core[ObjID..InputName] -- ���������� ����
								os.sleep(0.001*step) -- ���� ������� �� ���������� ������ �����
						--	if Core["bounce"]==true then ChangeIn() end -- ��������� ������� ���� ���������
				 			end --for

					-- ���� �������� ������� �������� 
							for i=1, points do  
								if InDI[i]~=InDI[i+1] then bounce_flag=true end
							end --for
					if bounce_flag==false then 
						OutDI=InDI[1] --����������� ���������� ������ ��������
						Core[OutputName..".dt"]=timestamp -- � ����� �������
					else
						Core[ObjID..InputName]=InDI[1] -- ���������� �� ���� �������������� ��������
					 end --if
 		  	 else
					OutDI=Core[ObjID..InputName] -- ���� �������� �������� ��������� - ����������� ��������
 		 	  end --if  bounce_check
			-- �������� �� ������� �����
			-- �������� ��������, ����� ���������� �� �������� ���������, � ��� ��������
			if OutDI==oldsignals[InputName]
			then
					--Core.addLogMsg("��������� �������� ��������� "..ObjID..Signals[InputName]["Tag"].." �� ��������.") -- �������� ��������� � ����	 
					return -- ���������� ������ ������� Process_DI_Data
			end


			Core[OutputName..".Value"]=OutDI -- ����������� �������� ���������� ����������
			Signals[InputName]["Value"]=OutDI  -- � ������� � �������
			-- �������� �� ������ � ������ ��������
		-- �������� �� ������ � ������ �������� �����
	-- �������� �� ������������� �����

	
 		--////// ������������ ��������� � ������ �������
	
-- �������� ��������� �������
				if OutDI~=oldsignals[InputName] -- ������ ����� �������������, ���� ���������� � ���������� �������� ������� �� ���������
				then	
					-- �������� �� �������� ������
					--if Signals[InputName]["AlarmClass"]== nil or Signals[InputName]["AlarmClass"]==0 -- ���� ����� ������ �� �����
				--	then
					--		Core.addLogMsg(Signals[InputName]["AlarmClass"].."���������� ��������� ��� "..OutputName.." �� �������������") 
					--else
							--���������� ��� �������
							local e_type
							if Signals[InputName]["Value"]==true  -- ��� ������� 1-�������������, 0 - ������������
							then
									if Signals[InputName]["InvFlag"]==false --������ �����������������,
									then 
										e_type=1
									else	--������ ���������������,
										e_type=0
									end
							else
									if Signals[InputName]["InvFlag"]==false --������ �����������������,
									then 
										e_type=0
									else	--������ ���������������,
										e_type=1
									end
							end --��� �������
							--���� ��� �������
							Core.addLogMsg(tostring(e_type))
				
-- ��������� ��������� �������
							--
						if Signals[InputName]["AlarmClass"]~=0 -- ���� �������� ��������� ��� �������
						then
								local EventMsg=ObjDesc -- ����� ���������
								if Signals[InputName]["AlarmClass"]==event.s or Signals[InputName]["AlarmClass"]==event.c -- ���� ������� ��� �������, �� ��������� ������ ��������� �� �������� ������� � ��� ����������
								then
									EventMsg=EventMsg..Signals[InputName]["Comment"]	-- �������� �������
									if OutDI==true -- ���� ������ ������ �������� "1"
									then
											if Signals[InputName]["InvFlag"]==false -- �������� ����� � ����������� �� �������� �������,
											then 
													EventMsg=EventMsg.." "..Signals[InputName]["Txt_1"]--���� �������� ��� - �� ��� true �������� ������� �������� ����� ��������� "1"
											else
													EventMsg=EventMsg.." "..Signals[InputName]["Txt_0"] -- ���� ���� - �� ��� "0"
											end--Signals[InputName]["InvFlag"]==false
									 else -- ���� ������ ������ �������� "0"	
											if Signals[InputName]["InvFlag"]==false-- �������� ����� � ����������� �� �������� �������,
											then 
														EventMsg=EventMsg.." "..Signals[InputName]["Txt_0"] --���� �������� ��� - �� ��� false �������� ������� �������� ����� ��������� "0"
											else
														EventMsg=EventMsg.." "..Signals[InputName]["Txt_1"]-- ���� ���� - �� ��� "1"
											end	--	Signals[InputName]["InvFlag"]==false
								 	end	--if OutDI==true
								 else -- ���� ������ ��� ��������������
										EventMsg=EventMsg..Signals[InputName]["Comment"]..". "..Signals[InputName]["AlarmMsg"] -- ������� ����� 

								 end	-- Signals[InputName]["AlarmClass"]==event.s 
								if  Signals[InputName]["reliabilityFlag"] == false then EventMsg="�������� ������������. "..EventMsg end -- ���� ������������ - ������� � ���
								-- �������� ��������� � �����
								Core.addLogMsg(EventMsg.." "..Signals[InputName]["AlarmClass"].." "..ObjID..Signals[InputName]["Tag"].." "..timestamp.."_"..e_type.." "..ScreenID)
								-- �������� ��������� � ����� �������
								Core.addEvent(EventMsg, Signals[InputName]["AlarmClass"], e_type, ObjID..Signals[InputName]["Tag"], timestamp, ScreenID )
						 end --Signals[InputName]["AlarmClass"]~=0
		
				--	end  -- ���� ����� ������ �� �����
				end --if OutDI~=oldsignals[InputName]
							
--////// ������������ ��������� � ������ ������� �����
	
  	oldsignals[InputName]=OutDI -- �������� �������� ���������� � ������ ����������� ��������
		 	
end --of Process_DI_Data(Signal) 

-- ///////////////////////������� �������������� �������� ����������////////////////////
function Sonet_DI_Processing.Init_DI_Data(Signal) --������� ������������� DI ����� �����������
-- ����������
local OutputName --��� ��������� ����
local inputValue--�������� �������� ����
local OutputValue--  �������� ��������� ����
local InputName=string.gsub(Signal, ObjID, "") -- �������� ��������������� ������� �� ����� ��� ��������� �������� ���
if Signals[InputName]==nil then -- ���� ������ � ������� �� ������
		Core.addLogMsg("����� "..InputName..". ��� ������� DI ����� ����������� �������� � ������� Signals") -- �������� ��������� �� ������ � ����
		return -- ��������� ������ ������� Process_DI_Data
	else
		inputValue=Core[ObjID..InputName] --������� �������� ����� ���
		oldsignals[InputName]=inputValue -- �������� ��� � ����� ��������
		OutputName=ObjID..Signals[InputName]["Tag"] --��� ��������� ���� ��������
		--Core.addLogMsg("INIT! OutputName "..OutputName)
		OutputTag=OutputName..".Value" -- ���������� ��� ���� (���� � ������� ���������)
	--	Core.addLogMsg("INIT! OutputTag "..OutputTag)
		Core[OutputTag]=inputValue -- ��������� �������� ����� ��� ����
			--//������������� ������ ������� �������� (��������� � ���)
		
-- �������� ���������
			if  not Signals[InputName]["Comment"] or string.len(Signals[InputName]["Comment"])==0  --���� �� ������ � ���
			then 
				local tmp_var=Core[OutputName..".Comment"] -- ������� �� �������
				if  not tmp_var or string.len(tmp_var)==0 --==nil  --���� � ��� �����
					then 
						Signals[InputName]["Comment"]="�������� ���������� ".. tostring(OutputName) -- �������� �� ��������� ��� ����
						Core[OutputName..".Comment"]=Signals[InputName]["Comment"] -- � �������� � �������
						--Core.addLogMsg(tostring(Signals[InputName]["Comment"]))
					else
						Signals[InputName]["Comment"]=tmp_var -- ����� �������� �������� �� �������
					end --tmp_var
			else 
				Core[OutputName..".Comment"]=Signals[InputName]["Comment"] -- � �������� �������� � �������
			end --Comment
		
-- �������� �������� �������� "1"
			if not Signals[InputName]["Txt_1"] or string.len( Signals[InputName]["Txt_1"])==0--���� �� ������ � ���
			then 
				local tmp_var=Core[OutputName..".Txt_1"] -- ������� �� �������
				if  not tmp_var or string.len(tmp_var)==0--���� � ��� �����
					then 
						Signals[InputName]["Txt_1"]="��������� �������� '1'" -- �������� �� ��������� ��� ����
						Core[OutputName..".Txt_1"]=Signals[InputName]["Txt_1"] -- � �������� � �������
					else 
						Signals[InputName]["Txt_1"]=tmp_var -- ����� �������� �������� �� �������
					end --tmp_var
			 else 		
				Core[OutputName..".Txt_1"]=Signals[InputName]["Txt_1"] -- �������� � �������
			 end --Txt_1
				
-- �������� �������� �������� "0"
			if not Signals[InputName]["Txt_0"] or 	string.len(Signals[InputName]["Txt_0"])==0 --���� �� ������ � ���
			then 
				local tmp_var=Core[OutputName..".Txt_0"] -- ������� �� �������
				if not tmp_var or string.len(tmp_var)==0--���� � ��� �����
					then 
						Signals[InputName]["Txt_0"]=Signals[InputName]["Txt_1"] -- �������� �� ��������� ��� ���� (��� ��������� "1")
						Core[OutputName..".Txt_0"]=Signals[InputName]["Txt_1"] -- � �������� � �������
					else 
						Signals[InputName]["Txt_0"]=tmp_var -- ����� �������� �������� �� �������
					end --tmp_var
			 else 
				
				 Core[OutputName..".Txt_0"]=Signals[InputName]["Txt_0"] --  �������� � �������
			 end --Txt_0
			
-- �������� ����� �������� �������
			if not Signals[InputName]["InvFlag"] --���� �� ������ � ���
			then 
				local tmp_var=Core[OutputName..".InvFlag"] -- ������� �� �������
				if not tmp_var --���� � ��� �����
					then 
						Signals[InputName]["InvFlag"]=false -- �������� �� ��������� �������� "����"
						Core[OutputName..".InvFlag"]=Signals[InputName]["InvFlag"] -- � �������� � �������
					else 
						Signals[InputName]["InvFlag"]=tmp_var -- ����� �������� �������� �� �������
					end --tmp_var
			 else 
				Core[OutputName..".InvFlag"]=Signals[InputName]["InvFlag"] -- �������� � �������
			 end --InvFlag
			
-- �������� ����� ������������� �������  
			if not Signals[InputName]["reliabilityFlag"] or string.len(tostring(Signals[InputName]["reliabilityFlag"]))==0--���� �� ������ � ���
			then 
				local tmp_var=Core[OutputName..".reliabilityFlag"] -- ������� �� �������
				if  not tmp_var or string.len(tostring(tmp_var))==0--���� � ��� �����
					then 
						Signals[InputName]["reliabilityFlag"]=true -- �������� �� ��������� �������� "����"
						Core[OutputName..".reliabilityFlag"]=Signals[InputName]["reliabilityFlag"] -- � �������� � �������
					else 
						Signals[InputName]["reliabilityFlag"]=tmp_var -- ����� �������� �������� �� �������
					end --tmp_var
			 else
				Core[OutputName..".reliabilityFlag"]=Signals[InputName]["reliabilityFlag"] -- �������� � �������
			 end --repaireFlag

-- �������� ����� ������� ������ ������� (������ � ������) 
			if not Signals[InputName]["repaireFlag"] or string.len(tostring(Signals[InputName]["repaireFlag"]))==0--���� �� ������ � ���
			then 
				local tmp_var=Core[OutputName..".repaireFlag"] -- ������� �� �������
				if  not tmp_var or string.len(tostring(tmp_var))==0--���� � ��� �����
					then 
						Signals[InputName]["repaireFlag"]=false-- �������� �� ��������� �������� "����"
						Core[OutputName..".repaireFlag"]=Signals[InputName]["repaireFlag"] -- � �������� � �������
					else 
						Signals[InputName]["repaireFlag"]=tmp_var -- ����� �������� �������� �� �������
					end --tmp_var
			 else
				Core[OutputName..".repaireFlag"]=Signals[InputName]["repaireFlag"] -- �������� � �������
			 end --repaireFlag
				
-- �������� ����� �������� ��������� � ������� (������)
			if not Signals[InputName]["AlarmClass"] or string.len(Signals[InputName]["AlarmClass"])==0 --���� �� ������ � ���
			then 
					local tmp_var=Core[OutputName..".AlarmClass"] -- ������� �� �������
					if  not tmp_var or string.len(tmp_var)==0  --���� � ��� �����
					then 
						Signals[InputName]["AlarmClass"]=event.disabled -- �������� �� ��������� �������� �� ��������� ���������
						Core[OutputName..".AlarmClass"]=Signals[InputName]["AlarmFlag"] -- � �������� � �������
					--else --���� ���-�� � �������� ����...
				--			
					end --tmp_var
			else --���� � ������� �� �����
					local tmp_var=Signals[InputName]["AlarmClass"] -- ������� �� �������
					local zamena
								--Core.addLogMsg(tostring(Signals[InputName]["AlarmClass"]))
						for al_type, al_type_val in pairs(event) --�������� ������ ������ �� ������� event
						do 
							if 	tmp_var==al_type or tmp_var==al_type_val --���� ��� ������ � �������, �� ��������
							then 
								Core.addLogMsg(tostring(Signals[InputName]["Tag"]).." "..tostring(al_type).. " "..tostring(al_type_val))
								Signals[InputName]["AlarmClass"]=al_type_val 
								Core[OutputName..".AlarmClass"]=al_type_val
								break
							end--if 	tmp_var==al_type or tmp_var==al_type_val
					--
				  		end --al_type, al_type_val in pairs(event)
			end --AlarmClass

		
	--Signals[InputName]["AlarmMsg"]=Core[OutputName..".AlarmMsg"]

-- ����� ���������� ���������
			if not Signals[InputName]["AlarmMsg"] or 	string.len(Signals[InputName]["AlarmMsg"])==0 --���� �� ������ � ���
			then 
				local tmp_var=Core[OutputName..".AlarmMsg"] -- ������� �� �������
				if not tmp_var or string.len(tmp_var)==0--���� � ��� �����
					then 
						Signals[InputName]["AlarmMsg"]="��������� �������:".. tostring(OutputName) -- �������� �� ��������� ��� ����
						Core[OutputName..".AlarmMsg"]=Signals[InputName]["AlarmMsg"] -- � �������� � �������
					else 
						Signals[InputName]["AlarmMsg"]=tmp_var -- ����� �������� �������� �� �������
					end --tmp_var
			 else 
				
				 Core[OutputName..".AlarmMsg"]=Signals[InputName]["AlarmMsg"] --  �������� � �������
			 end --Txt_0

--Tag="Q1_ON", ="����������� Q1", Value="", OldValue="", Txt_1 =" �������", Txt_0=" ��������", InvFlag=false, AlarmClass=101, AlarmMsg="AlarmA_1!", reliabilityFlag="",repaireFlag=true, Type=0, relatedTag="Q1_OFF",},

		--Core["TST"]=inputValue
        
	end --Signals[InputName]




--Core.addLogMsg(OutputName)

end --of Init_Data

--.......���������� ������� � ��������������� ������� �� ����� ���


function Sonet_DI_Processing.add_DR_msg(ModuleStat) -- ���������� ������� � ��������������� ������� �� ����� ���
	local DR_Value=Core[ModuleStat[2]] -- ����������/������������
	local timestamp=os.time(); -- ����� �������
    local AlarmMsg -- ��������� � ������
	local e_type -- ���������/������������
	if DR_Value==true then e_type=1 else e_type=0 end -- ���� ����������,
	for Module, ChNum in pairs(RawDI) --��������� ������ ������� 
			do 
				if Module==ModuleStat[1] -- ���� ����� ������ ������������� ������������ - ������� ��������� ��� ���� �������
				then 
							for _, Ch in pairs(ChNum) -- ��������� �� �������
							do
									DI_Channel=PLC_Name..ModuleStat[1].."."..Ch -- ���������� ������ ��� ������
									AlarmMsg=ObjDesc..Signals[DI_Channel].Comment..Signals[DI_Channel].Txt_1..". �������� ������������"-- ���������� ����� ���������
									--tmp_txt=ObjID..PLC_Name..Signals[DI_Channel]["Tag"]["reliabilityFlag"]
									Core.addLogMsg(AlarmMsg.. " " ..  tostring(DR_Value))
 									Core.addEvent(AlarmMsg, event.dr, e_type, ObjID..Signals[DI_Channel].Tag, timestamp, ScreenID)
									Signals[DI_Channel].reliabilityFlag=not DR_Value -- ��������� ���� ��������������� �������
									Core[ObjID..Signals[DI_Channel].Tag..".reliabilityFlag"]=not DR_Value 

							end --_, Ch
				end --if
			end --for Module, ChNum 
end


function Sonet_DI_Processing.SetRepaireMode(Signal)-- ������� ���������\���������� ���������� ������
	local DI_Channel=ObjID..Signal[1]
	local InputName=Signal[1]
	local repaireFlagValue=Core[Signal[2]]
	if repaireFlagValue~=Signals[InputName]["repaireFlag"] --���� �������� ����� � ������� � � ������� �� ���������
	then
		Signals[InputName]["repaireFlag"]=repaireFlagValue
		--if Signals[InputName]["repaireFlag"]~=Signals[InputName]["oldrepaireFlag"]
			--then 
				--Signals[InputName]["oldrepaireFlag"]=Signals[InputName]["repaireFlag"]-- �������� ������
				if Signals[InputName]["repaireFlag"]==true 
					then
						e_type=1 --������� ���������
						Signals[InputName]["reliabilityFlag"]=false-- ������� �������� �������������
					else
						e_type=0 --������� �������
						Signals[InputName]["reliabilityFlag"]=true-- ������� �������� �����������
				 end --if Signals[InputName]["repaireFlag"]==true 

				Core.addEvent("�������� ��������� '".. ObjDesc.." " ..Signals[InputName]["Comment"]..Signals[InputName]["Txt_1"] .."' (��� '"..ObjID..Signals[InputName]["Tag"].. "') ������������. ������������ �������� � ������", event.dr, e_type, ObjID..Signals[InputName].Tag, timestamp, ScreenID )
				Core.addLogMsg("�������� ��������� '".. ObjDesc.." " ..Signals[InputName]["Comment"]..Signals[InputName]["Txt_1"] .."' (��� '"..ObjID..Signals[InputName]["Tag"].. "') ������������. ������������ �������� � ������_"..e_type)	
			--end --if Signals[InputName]["repaireFlag"]~=Signals[InputName]["oldrepaireFlag"]
	end --if repaireFlagValue~=Signals[InputName]["repaireFlag"]
	if repaireFlagValue == false then Process_DI_Data({DI_Channel,os.time(), 1})end --���� ������� ������� ����� - ����� ������� ������������ �������� �������
end --local function SetRepaireMode

return Sonet_DI_Processing

-- ///////////////////////����� ����� �������////////////////////