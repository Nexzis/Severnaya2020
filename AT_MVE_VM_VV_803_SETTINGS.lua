--VOVA SASAI
-- Код для записи уставок, а так же записи текущих считанных уставок в регистры для записи.
-- Включаем библиотеку с вспомогательными функциями
require "./lua_lib/acs_data_lib"


-- Здесь массив в который нужно добавить устройство, для работы с его уставками
local group_prefix = {"SPAC_VV1_803.",
                      "SPAC_SV_803.",
                      "SPAC_1_1_803.",
                      "SPAC_1_2_803.", 
                      "SPAC_1_3_803.",
                      "SPAC_1_4_803.", 
                      "SPAC_1_6_803.", 
                      "SPAC_1_7_803.", 
                      "SPAC_1_8_803.", 
                      "SPAC_1_12_803.",
                      "SPAC_VV2_803.",
                      "SPAC_2_6_803.",
                      "SPAC_2_8_803.",
                      "SPAC_2_9_803.", 
                      "SPAC_2_10_803.",
                      "SPAC_2_11_803.",
                      "SPAC_2_13_803.",
                      "SPAC_2_14_803.",
                      "SPAC_2_15_803.",
                      "SPAC_2_16_803.",
                      "SPAC_2_17_803.",
                      "SPAC_2_18_803."}
					  
local write_prefix = "_WRITE_"
local read_prefix = "_READ_"
local raw_prefix = "RAW_SPAC"
local signal_on_write_L2210 = "_L2210_WRITE_UST_UPDATE"
local signal_on_write_4D28 = "_4D28_WRITE_UST_UPDATE"
local signal_on_read_L2210 = "_L2210_READ_UST_UPDATE"
local signal_on_read_4D28 = "_4D28_READ_UST_UPDATE"
local signals_on_write = "_WRITE_SETTINGS"
local rewrite_signals_on_write = "_REWRITE_READ_SETTINGS_IN_WR_REG"

-- Массив со всеми уставками устройств СПАК
local settings_803 = {
    "L2210_TIME_UROV",
    "L2210_TIME_USKOR",
    "L2210_TIME_ZASHC_SHIN",
    "L2210_TIME_APV",
    "L2210_SUMM_SW_SG1",
    "L2210_SUMM_SW_SG2",
    "L2210_SUMM_SW_SG3",
    "L2210_COUNT_APV_CYCLE",
    "L2210_COUNT_IMPULSE",
    "L2210_SUMM_SW_SG4",
    "L2210_1REG_CONF_VIH_RELE",
    "L2210_2REG_CONF_VIH_RELE",
    "L2210_TIME_E1",
    "L2210_TIME_E2",
    "L2210_TIME_E3",
    "L2210_TIME_E4",
    "4D28_I_START_I1",
    "4D28_TIME_ACT_I1",
    "4D28_I_START_I2",
    "4D28_TIME_ACT_I2",
    "4D28_I_START_I3",
    "4D28_TIME_ACT_I3",
    "4D28_I_START_I0_1",
    "4D28_TIME_ACT_I0_1",
    "4D28_I_START_I0_2",
    "4D28_TIME_ACT_I0_2",
    "4D28_I_START_dI",
    "4D28_TIME_ACT_dI",
    "4D28_SUMM_SGF1",
    "4D28_SUMM_SGF2",
    "4D28_SUMM_SGF3",
    "4D28_SUMM_SGF4",
    "4D28_SUMM_SGF5",
    "4D28_SUMM_SGF6",
    "4D28_SUMM_SGF7",
    "4D28_SUMM_SGF8",
    "4D28_SUMM_SGB1",
    "4D28_SUMM_SGB2",
    "4D28_SUMM_SGB3",
    "4D28_SUMM_SGR1",
    "4D28_SUMM_SGR2",
    "4D28_SUMM_SGR3",
    "4D28_SUMM_SGR4",
    "4D28_SUMM_SGR5",
    "4D28_SUMM_SGR6",
    "4D28_SUMM_SGR7",
    "4D28_SUMM_SGR8",
    "4D28_SUMM_SGR9",
    "4D28_SUMM_SGR10",
    "4D28_SUMM_SGR11",
    "4D28_TIME_ACT_UROV"
}

-- Функция для инициализации уставок текущими значениями этих уставок
local function rewrite_read_settings(rewrite_group)
  Core.addLogMsg("ВЫЗВАНО")
  if Core[rewrite_group[1]..raw_prefix..rewrite_signals_on_write] == true then
    if Core[rewrite_group[1]..raw_prefix..signal_on_read_L2210] == false then
      Core[rewrite_group[1]..raw_prefix..signal_on_read_L2210] = true
    else
      Core[rewrite_group[1]..raw_prefix..signal_on_read_L2210] = false
      os.sleep(0.2)
      Core[rewrite_group[1]..raw_prefix..signal_on_read_L2210] = true
    end
    
    os.sleep(5)
    
    if Core[rewrite_group[1]..raw_prefix..signal_on_read_4D28] == false then
      Core[rewrite_group[1]..raw_prefix..signal_on_read_4D28] = true
    else
      Core[rewrite_group[1]..raw_prefix..signal_on_read_4D28] = false
      os.sleep(0.2)
      Core[rewrite_group[1]..raw_prefix..signal_on_read_4D28] = true
    end
    
    os.sleep(5)
    
--   Присваиваем значения считанных уставок, переменным значения которых будут отправляться на запись
    for i =1 , #settings_803, 1 do
      Core[rewrite_group[1]..raw_prefix..write_prefix..settings_803[i]] = Core[rewrite_group[1]..raw_prefix..read_prefix..settings_803[i]] -- составное имя сигнала для каждоко спака своё
    end
    
--   Для удобной работы в интерфейсе(использования чекбоксов) переводим уставки, считываемые регистром, в отдельные булевые переменные
    sg_to_bits(rewrite_group[1])
  end
  Core[rewrite_group[1]..raw_prefix..rewrite_signals_on_write] = false
end

-- Функция для обновления сигнала на запись( посылает сигнал обновления в драйвер сигнала управления )
local function update_write_holding(update_group)
  if Core[update_group[1]..raw_prefix..signals_on_write] == true then
-- Собираем чекбоксы из интерфейса в единые значения которые будут записаны в регистры уставок
    local sg = bits_to_sg(update_group[1], 3, "_SG")
    for i =1, #sg, 1 do
      Core[update_group[1]..raw_prefix..write_prefix.."L2210_SUMM_SW_SG"..i] = sg[i]
    end
    
    local sgf = bits_to_sg(update_group[1], 8, "_SGF")
    for i =1, #sgf, 1 do
      Core[update_group[1]..raw_prefix..write_prefix.."4D28_SUMM_SGF"..i] = sgf[i]
    end
    
    local sgb = bits_to_sg(update_group[1], 3, "_SGB")
    for i =1, #sgb, 1 do
      Core[update_group[1]..raw_prefix..write_prefix.."4D28_SUMM_SGB"..i] = sgb[i]
    end
    
    local sgr = bits_to_sg(update_group[1], 11, "_SGR")
    for i =1, #sgr, 1 do
      Core[update_group[1]..raw_prefix..write_prefix.."4D28_SUMM_SGR"..i] = sgr[i]
    end
    
    if Core[update_group[1]..raw_prefix..signal_on_write_L2210] == false then   
      Core[update_group[1]..raw_prefix..signal_on_write_L2210] = true
    else
      Core[update_group[1]..raw_prefix..signal_on_write_L2210] = false
      os.sleep(0.2)
      Core[update_group[1]..raw_prefix..signal_on_write_L2210] = true
    end
    
    os.sleep(5)
    
    if Core[update_group[1]..raw_prefix..signal_on_write_4D28] == false then   
      Core[update_group[1]..raw_prefix..signal_on_write_4D28] = true
    else
      Core[update_group[1]..raw_prefix..signal_on_write_4D28] = false
      os.sleep(0.2)
      Core[update_group[1]..raw_prefix..signal_on_write_4D28] = true
    end
    
    os.sleep(5)
  end
  
  Core[update_group[1]..raw_prefix..signals_on_write] = false
end

-- Перевод числа, получаемого из регистра в массивы отдельных булевых значений
function sg_to_bits(group)
  local sg1_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."L2210_SUMM_SW_SG1"], 7)
  local sg2_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."L2210_SUMM_SW_SG2"], 7)
  local sg3_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."L2210_SUMM_SW_SG3"], 7)
  local sgf1_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF1"], 7)
  local sgf2_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF2"], 7)
  local sgf3_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF3"], 7)
  local sgf4_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF4"], 7)
  local sgf5_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF5"], 7)
  local sgf6_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF6"], 7)
  local sgf7_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF7"], 7)
  local sgf8_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGF8"], 7)
  local sgb1_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGB1"], 7)
  local sgb2_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGB2"], 7)
  local sgb3_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGB3"], 7)
  local sgr1_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR1"], 7)
  local sgr2_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR2"], 7)
  local sgr3_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR3"], 7)
  local sgr4_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR4"], 7)
  local sgr5_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR5"], 7)
  local sgr6_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR6"], 7)
  local sgr7_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR7"], 7)
  local sgr8_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR8"], 7)
  local sgr9_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR9"], 7)
  local sgr10_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR10"], 7)
  local sgr11_bool = byte_to_bool(Core[group..raw_prefix..write_prefix.."4D28_SUMM_SGR11"], 7)
  
  for i=0, #sg1_bool-1, 1 do 
    Core[group..raw_prefix.."_SG1["..i.."]"] = sg1_bool[i + 1]
    Core[group..raw_prefix.."_SG2["..i.."]"] = sg2_bool[i + 1]
    Core[group..raw_prefix.."_SG3["..i.."]"] = sg3_bool[i + 1]
    Core[group..raw_prefix.."_SGF1["..i.."]"] = sgf1_bool[i + 1]
    Core[group..raw_prefix.."_SGF2["..i.."]"] = sgf2_bool[i + 1]
    Core[group..raw_prefix.."_SGF3["..i.."]"] = sgf3_bool[i + 1]
    Core[group..raw_prefix.."_SGF4["..i.."]"] = sgf4_bool[i + 1]
    Core[group..raw_prefix.."_SGF5["..i.."]"] = sgf5_bool[i + 1]
    Core[group..raw_prefix.."_SGF6["..i.."]"] = sgf6_bool[i + 1]
    Core[group..raw_prefix.."_SGF7["..i.."]"] = sgf7_bool[i + 1]
    Core[group..raw_prefix.."_SGF8["..i.."]"] = sgf8_bool[i + 1]
    Core[group..raw_prefix.."_SGB1["..i.."]"] = sgb1_bool[i + 1]
    Core[group..raw_prefix.."_SGB2["..i.."]"] = sgb2_bool[i + 1]
    Core[group..raw_prefix.."_SGB3["..i.."]"] = sgb3_bool[i + 1]
    Core[group..raw_prefix.."_SGR1["..i.."]"] = sgr1_bool[i + 1]
    Core[group..raw_prefix.."_SGR2["..i.."]"] = sgr2_bool[i + 1]
    Core[group..raw_prefix.."_SGR3["..i.."]"] = sgr3_bool[i + 1]
    Core[group..raw_prefix.."_SGR4["..i.."]"] = sgr4_bool[i + 1]
    Core[group..raw_prefix.."_SGR5["..i.."]"] = sgr5_bool[i + 1]
    Core[group..raw_prefix.."_SGR6["..i.."]"] = sgr6_bool[i + 1]
    Core[group..raw_prefix.."_SGR7["..i.."]"] = sgr7_bool[i + 1]
    Core[group..raw_prefix.."_SGR8["..i.."]"] = sgr8_bool[i + 1]
    Core[group..raw_prefix.."_SGR9["..i.."]"] = sgr9_bool[i + 1]
    Core[group..raw_prefix.."_SGR10["..i.."]"] = sgr10_bool[i + 1]
    Core[group..raw_prefix.."_SGR11["..i.."]"] = sgr11_bool[i + 1]
  end
end

-- Переводим отдельные булевые переменные из интерфеса в готовую уставку на запись
function bits_to_sg(group, size_group, group_sg_prefix)
  local group_sg = {}
  for i = 0, size_group - 1, 1 do
    group_sg[i+1] = 0
  end
  for i = 1, size_group, 1 do
    local switch_name = group..raw_prefix..group_sg_prefix..i
    for j = 0, 7, 1 do
      group_sg[i] = group_sg[i] + bits_to_int(Core[switch_name.."["..j.."]"], j)
    end
  end

  return group_sg
end


----------------------------------------------------------------------------------------------------------
-- Создание сигналов по которым будут вызываться функции с аргументом group_prefix[i]
for i = 1, #group_prefix, 1 do
  Core.onExtChange({group_prefix[i]..raw_prefix..rewrite_signals_on_write}, rewrite_read_settings, {group_prefix[i]})
  Core.onExtChange({group_prefix[i]..raw_prefix..signals_on_write}, update_write_holding, {group_prefix[i]})
end

Core.waitEvents( )