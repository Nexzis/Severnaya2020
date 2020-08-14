-- Calculation CRC-16 ANSI(LUA 5.3)
-- Подсчёт CRC-16
function count_crc(msg)
  crc = 0xFFFF -- initialization CRC according to algorithm/инициализация crc значением согласно алгоритму
  msg_len = #msg
  
  for i = 1, msg_len, 1 do -- pass for each byte of the packet/проход по каждому байту посылки
    crc = crc ~ msg[i] --excluding or over the packet byte and crc/исключающее или над байтом пакета и crc
    for j = 1, 8, 1 do -- according to the algorithm, we make 8 shifts to the right/производим восемь сдвигов вправо согласно алгоритму
      if ((math.floor(crc/2)*2) ~= crc) then --If the extended bit is 1, the "Exclusive" or above the CRC variable and the number 0xa001/Если выдвинутый бит равен 1, выполняется операция “Исключающее или” над переменной CRC и числом 0xa001
        crc = math.floor(crc/2) ~ 0xA001
      else
        crc = math.floor(crc/2) -- If the extended bit is 0, then a shift to the right by one bit/Если выдвинутый бит равен 0 то выпоняем сдвиг вправо на один бит
      end
    end
  end

-- Split the counted CRC into the low and high bytes for further write to array
  small_byte = crc  & 0xFF 
  big_byte = crc >> 8
  crc = {small_byte, big_byte}
  
  return crc
end