local g_Logs=true --вести логи событий
local g_ScreenID="ZRU" -- идентификатор мнемосхемы технологического объекта
local g_USO_ID="USOE_" -- идентификатор технологического объекта
local g_ObjID="GSP_SEV_KSSEV_E_"..g_USO_ID -- идентификатор технологического объекта
local g_PLC_Name="A1_" -- название контроллера в УСО
local g_ObjDesc= "УСО ЗРУ. "--описание источника сигналов
local g_User=g_ObjDesc.."ПЛК "..string.gsub(g_PLC_Name,"_"," ").. "(система)"
local g_TstGroup="GInputE_" -- группа тестовых переменных УСО Э


local count = 0;
local oldValue = false;
local newValue = oldValue;
local oldTime = os.clock();
local newTime = oldTime;
DI_Input = "GInputE_5.i10"--Core.DR_TST_Input; --считаем из ядра номер опрашиваемого входа
			--	DI_Channel=g_PLC_Name..DI_Input-- сформируем полное имя канала
while true do
	newValue = Core[DI_Input];
	if newValue ~= oldValue then
		count = count + 1;
		oldValue = newValue;
	end
	newTime = os.clock();
	if newTime - oldTime >= 1 then
		Core.setMessage('Frequency - '..count);
		Core.addEvent("Тестовое сообщение meandr", 101, 1 ,"Источник", "Пользователь", "Tag", os.clock(), g_ScreenID )
		count = 0;
		oldTime = newTime;
	end
	os.sleep(0);
end