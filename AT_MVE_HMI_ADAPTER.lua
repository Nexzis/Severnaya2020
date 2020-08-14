-- Добавление библиотеки
require "./lua_lib/acs_data_lib"

-- ключ - структура спака из нижнего уровня, значение - структура в ЧМИ
local spac_prefix = {["SPAC_VV1_803."] = "HMI_ZRU_VV1.",
                     ["SPAC_VV2_803."] = "HMI_ZRU_VV2.",
                     ["SPAC_SV_803."] = "HMI_ZRU_SV.",
                     ["SPAC_1_1_803."] = "HMI_ZRU_OL1_1.",
                     ["SPAC_1_3_803."] = "HMI_ZRU_OL1_3.",
                     ["SPAC_1_6_803."] = "HMI_ZRU_OL1_6.",
                     ["SPAC_1_12_803."] = "HMI_ZRU_OL1_12.",
                     ["SPAC_2_6_803."] = "HMI_ZRU_OL2_6.",
                     ["SPAC_2_8_803."] = "HMI_ZRU_OL2_8.",
                     ["SPAC_2_11_803."] = "HMI_ZRU_OL2_11.",
                     ["SPAC_2_17_803."] = "HMI_ZRU_OL2_17.",
			         ["SPAC_1_2_803."] = "HMI_ZRU_OL1_2.",			      
			         ["SPAC_1_4_803."] = "HMI_ZRU_OL1_4.",			        
			         ["SPAC_1_7_803."] = "HMI_ZRU_OL1_7.",
			         ["SPAC_1_8_803."] = "HMI_ZRU_OL1_8.",
			         ["SPAC_2_9_803."] = "HMI_ZRU_OL2_9.",
			         ["SPAC_2_10_803."]	= "HMI_ZRU_OL2_10.",	      
			         ["SPAC_2_13_803."] = "HMI_ZRU_OL2_13.",
		             ["SPAC_2_14_803."] = "HMI_ZRU_OL2_14.",
                     ["SPAC_2_15_803."] = "HMI_ZRU_OL2_15.",
                     ["SPAC_2_16_803."] = "HMI_ZRU_OL2_16.",
                     ["SPAC_2_18_803."] = "HMI_ZRU_OL2_18."}

-- Сопоставление конкретных переменных из структуры конкретным переменным из структуры ЧМИ          
local signal_spac_name = { ["RAW_SPAC_L2210_RPV_DP"] = "switch.q.on",
                     ["RAW_SPAC_L2210_RPO_DP"] = "switch.q.off",
                     ["RAW_SPAC_L2210_MU_DU_DP"] = "switch.du",
                     ["RAW_SPAC_L2210_DEVICE1_STATUS"] = "switch.q.valid",
                     ["RAW_SPAC_L2210_SIG_BLOCK_VIHOD2_DP[2]"] = "switch.q.avoff",
                     ["REQUEST_DISABLE"] = "switch.q.valid" }
                     
                     
local zn_prefix = {
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_1_QN_ON."] = "HMI_ZRU_OL1_1.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_2_QN_ON."] = "HMI_ZRU_OL1_2.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_3_QN_ON."] = "HMI_ZRU_OL1_3.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_4_QN_ON."] = "HMI_ZRU_OL1_4.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_6_QN_ON."] = "HMI_ZRU_OL1_6.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_7_QN_ON."] = "HMI_ZRU_OL1_7.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_8_QN_ON."] = "HMI_ZRU_OL1_8.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU1_12_QN_ON."] ="HMI_ZRU_OL1_12.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_6_QN_ON."] = "HMI_ZRU_OL2_6.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_8_QN_ON."] = "HMI_ZRU_OL2_8.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_9_QN_ON."] = "HMI_ZRU_OL2_9.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_10_QN_ON."] = "HMI_ZRU_OL2_10.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_11_QN_ON."] = "HMI_ZRU_OL2_11.",
--             ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_12_QN_ON."] = "HMI_ZRU_OL2_12.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_13_QN_ON."] = "HMI_ZRU_OL2_13.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_14_QN_ON."] = "HMI_ZRU_OL2_14.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_15_QN_ON."] = "HMI_ZRU_OL2_15.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_16_QN_ON."] = "HMI_ZRU_OL2_16.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_17_QN_ON."] = "HMI_ZRU_OL2_17.",
               ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_18_QN_ON."] = "HMI_ZRU_OL2_18."
               }

local signal_zn_name = { ["Value"] = "zn.on",
                   ["reliabilityFlag"] = "zn.valid"}

local truck_prefix = {
                ["GSP_SEV_KSSEV_E_USOE_DI_KRU2_1_SQ_ON."] = "HMI_ZRU_SRZ."
               }
  
local signal_truck_name = {
                      ["Value"] = "q.on",
                      ["reliabilityFlag"] = "q.valid"}

  
                   
-- адаптер который по изменению значения с устройства изменяет значение в ЧМИ для спака
local function adapter_spac(param_tables)
  local spac_name = param_tables[1]
  local hmi_spac_name = param_tables[2]
  local spac_signal = param_tables[3]
  local hmi_spac_signal = param_tables[4]

  if hmi_spac_signal == "switch.q.valid" then 
    if Core[spac_name..spac_signal] == 2 or Core[spac_name..spac_signal] == 128 or tostring(Core[spac_name..spac_signal]) == "true"  then
      Core[hmi_spac_name..hmi_spac_signal] = false
    else 
      Core[hmi_spac_name..hmi_spac_signal] = true
    end
  else
    signal = byte_to_bool(Core[spac_name..spac_signal])
    Core[hmi_spac_name..hmi_spac_signal] = signal[1]
  end
end
-- адаптер который по изменению значения с устройства изменяет значение в ЧМИ для заземляющих ножей
local function adapter_zn(param_tables)
  local zn_name = param_tables[1]
  local hmi_zn_name = param_tables[2]
  local zn_signal = param_tables[3]
  local hmi_zn_signal = param_tables[4]
  
  Core[hmi_zn_name..hmi_zn_signal] = Core[zn_name..zn_signal]
  if zn_signal == "Value" then
    if Core[zn_name..zn_signal] then 
      Core[hmi_zn_name.."zn.off"] = false
    else
      Core[hmi_zn_name.."zn.off"] = true
    end
  end
end
-- адаптер который по изменению значения с устройства изменяет значение в ЧМИ для тележки 
local function adapter_truck(param_tables)
  local truck_name = param_tables[1]
  local hmi_truck_name = param_tables[2]
  local truck_signal = param_tables[3]
  local hmi_truck_signal = param_tables[4]
  
  Core[hmi_truck_name..hmi_truck_signal] = Core[truck_name..truck_signal]
  if truck_signal == "Value" then
    if Core[truck_name..truck_signal] then 
      Core[hmi_truck_name.."q.off"] = false
    else
      Core[hmi_truck_name.."q.off"] = true
    end
  end
end

os.sleep(25)

-- инициализация  
for spac_name, hmi_spac_name in pairs(spac_prefix) do
  for spac_signal, hmi_spac_signal in pairs(signal_spac_name) do 
    adapter_spac({spac_name, hmi_spac_name, spac_signal, hmi_spac_signal})
  end
end

-- сторож по изменению
for spac_name, hmi_spac_name in pairs(spac_prefix) do
  for spac_signal, hmi_spac_signal in pairs(signal_spac_name) do
    Core.onExtChange({spac_name..spac_signal}, adapter_spac, {spac_name, hmi_spac_name, spac_signal, hmi_spac_signal})
  end
end

-- инициализация  
for zn_name, hmi_zn_name in pairs(zn_prefix) do
  for zn_signal, hmi_zn_signal in pairs(signal_zn_name) do 
    adapter_zn({zn_name, hmi_zn_name, zn_signal, hmi_zn_signal})
  end
end

-- сторож по изменению
for zn_name, hmi_zn_name in pairs(zn_prefix) do
  for zn_signal, hmi_zn_signal in pairs(signal_zn_name) do
    Core.onExtChange({zn_name..zn_signal}, adapter_zn, {zn_name, hmi_zn_name, zn_signal, hmi_zn_signal})
  end
end

for truck_name, hmi_truck_name in pairs(truck_prefix) do
  for truck_signal, hmi_truck_signal in pairs(signal_truck_name) do 
    adapter_truck({truck_name, hmi_truck_name, truck_signal, hmi_truck_signal})
  end
end

-- сторож по изменению
for truck_name, hmi_truck_name in pairs(truck_prefix) do
  for truck_signal, hmi_truck_signal in pairs(signal_truck_name) do
    Core.onExtChange({truck_name..truck_signal}, adapter_truck, {truck_name, hmi_truck_name, truck_signal, hmi_truck_signal})
  end
end
Core.waitEvents()