local signals ={
["10_i1"] = {["Tag"]="DI_ADES_OL",           ["Comment"]="Перегрузка АДЭС",                                ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i2"] = {["Tag"]="DI_ADES_AVG_ON",       ["Comment"]="АВГ",                                            ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =" включен",                               Txt_0 =" включен"},
["10_i3"] = {["Tag"]="DI_ADES_AVG_OFF",      ["Comment"]="АВГ",                                            ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =" отключен",                              Txt_0 =" отключен"},
["10_i4"] = {["Tag"]="DI_ADES_DG_RD",        ["Comment"]="Готовность ДГ",                                  ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i5"] = {["Tag"]="DI_ADES_DG_WK",        ["Comment"]="Работа",                                         ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i6"] = {["Tag"]="DI_ADES_DG_OL",        ["Comment"]="Перегрузка ДГ",                                  ["Source"]="АДЭС КТП №8516. ПУ",       Txt_1 =": активна",                              Txt_0 =": неактивна"},
["10_i7"] = {["Tag"]="DI_ADES_DG_FL",        ["Comment"]="Неисправность ДГ",                               ["Source"]="Щит УСО КТП1. ПЛК А1",     Txt_1 =": активна",                              Txt_0 =": неактивна"},
}
local prefix = "GSP_SEV_KSSEV_E_USOKTP1_"


local int_bool = 0
local function syncronization(data_table)
  if Core[prefix..data_table["Tag"]..".Value"] == true then
    int_bool = 1
    
    math.randomseed(os.date("*t")["usec"])
    math.random() 
    math.random()
    math.random()
    local timestamp = {}
    local usec = math.random(18)
    local time = os.date("*t")
    timestamp.day = time.day
    timestamp.month = time.month
    timestamp.year = time.year
    timestamp.hour = time.hour
    timestamp.min = time.min
    timestamp.sec = time.sec
    timestamp.usec = usec * 1000

    local DT =  os.time(timestamp) + os.tz()
    Core.addLogMsg("vvv"..usec)
    Core.addLogMsg(tostring(DT))
    
    Core.addEvent(data_table["Comment"],
                  101 ,
                  int_bool,
                  data_table["Source"], 
                  "КТП 1",
                  prefix..data_table["Tag"]..".Value",
                  DT)




  else
    int_bool = 0
    math.randomseed(os.date("*t")["usec"])
    math.random() 
    math.random()
    math.random()    
    local timestamp = {}
    local usec = math.random(19)
    local time = os.date("*t")
    timestamp.day = time.day
    timestamp.month = time.month
    timestamp.year = time.year
    timestamp.hour = time.hour
    timestamp.min = time.min
    timestamp.sec = time.sec
    timestamp.usec = (usec + 200) * 1000

    local DT =  os.time(timestamp) + os.tz()
        Core.addEvent(data_table["Comment"],
                  101 ,
                  int_bool,
                  data_table["Source"], 
                  "КТП 1",
                  prefix..data_table["Tag"]..".Value",
                  DT)

  end
end

for plc_tag, data_table in pairs(signals) do
 Core.onExtChange({prefix..data_table["Tag"]..".Value"}, syncronization, data_table)
end
Core.waitEvents()