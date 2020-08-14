-- !!! Кодировка текста UTF-8
-- УСО КТП2. ПЛК А1.
-- таблица соответствия  дискретных выходов ПЛК и тегов (со свойствами).
-- ["A1_9.o1"] - описание выходного канала ( например: ПЛК А1_модуль в слоте 9.канал i1).
-- Tag - имя тега без указания источника (УСО, ПЛК и т.д.).
-- Comment - Текстовое описание тега. Применяется при формировании строки сообщений.
-- Txt_1 - текстовое описание сигнала, принявшего значение true.
-- Txt_0 - текстовое описание сигнала, принявшего значение false, если значение не требует описание - можно оставить пустым (например когда состояние объекта описавыется двумя сигналами).
-- InvFlag - признак инверсии сигнала. Когда принимает значение true - Txt_0 и Txt_1 меняются местами. Предусмотрен для сигналов, источник которых  - нормально закрытые контакты (НЗ). По умолчаниею ставить false (НО).
-- AlarmClass - класс сообщения. Может задаваться буквами ("a", "e", "w") или числами. Описано в таблице event. При отключении сообщения в строке событий принимает значение 0 ("disabled").
-- AlarmMsg -- текст тревожного сообщения в строке событий. Применимо для аварийных и предупредительных событий.
-- reliabilityFlag - признак достоверности сигнала. Не заполнять. По умолчанию принимает значение  true.
-- repaireFlag - признак вывода сигнала из опроса. Используется при выводе оборудования в ремонт. Не заполнять. По умолчанию принимает значение false.
--  relatedTag не используется (персппектива)
-- Fix_Con - признак типа выходного сигнала (импульсный/постоянная фиксация)

local DO_Signals=  -- таблица соответствия дискретных выходов тэгам - привязка тэгов и их свойств к конкретному каналу ПЛК в формате "ПЛК_Слот.Канал
	{
		-- адрес           тэг             оисание						состояние    состояние         инверсия       команда      тескст сообщения достоверность		ремонт			фиксация контакта после срабатывания
 		
	
} --DO_Signals

return DO_Signals;