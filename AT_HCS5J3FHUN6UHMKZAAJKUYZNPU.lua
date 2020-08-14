while true do

Core.PLC_GSP_SEV_KSSEV_E_USOP_NARAB.HOURS  = Core.GSP_SEV_KSSEV_E_USOP_NARAB.HOURS

Core.PLC_GSP_SEV_KSSEV_E_USOP_NARAB.ALG_ON = Core.GSP_SEV_KSSEV_E_USOP_NARAB.ALG_ON

Core.GSP_SEV_KSSEV_E_USOP_AI_H3_TIME.Value = Core.PLC_GSP_SEV_KSSEV_E_USOP_AI_H3_TIME.OUTPUT
Core.GSP_SEV_KSSEV_E_USOP_AI_H4_TIME.Value = Core.PLC_GSP_SEV_KSSEV_E_USOP_AI_H4_TIME.OUTPUT


--Флаги временно выставлены достоверными. Добавить переприсвоение флагов с нижнего уровня наверх при определении их в алгоритме подсчета наработки 
Core.GSP_SEV_KSSEV_E_USOP_AI_H3_TIME.reliabilityFlag = true
Core.GSP_SEV_KSSEV_E_USOP_AI_H4_TIME.reliabilityFlag = true 
os.sleep(60)

end