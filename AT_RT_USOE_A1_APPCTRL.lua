--local NodeName="USO1" --имя контролируемого узла
local TestVar="TEST_ON" --переменная переключения режимов
local MainAppDisVar="USOE_A1_FAULT.Disabled"   --переменная для отключения основного драйвера 
local TestAppDisVar="Test_Meandr_Disabled"   --переменная для включения тестового драйвера


local function SetCurApp()
		local Test_On=Core[TestVar]
		--Core.addLogMsg("Изменилось состояние "..TestVar.."=".. tostring(Test_On))
		if Test_On then
			Core[MainAppDisVar] = true
			Core[TestAppDisVar] = false
			
		else
			Core[MainAppDisVar] = false
			Core[TestAppDisVar] = true			
		end


os.sleep(0)

	
end --function SetCurApp(Value)

	
		



					Core.onExtChange({TestVar}, SetCurApp,{}) 
Core.waitEvents( )