-- Функция для преобразования в тип данных с плавающей запятой 4-байтного значения/Function for converting a 4-byte value to a floating-point data type
-- Принимает на вход массив байт, в первом элементе должен быть записан младший байт, далее байты должны располагаться от младшего к страшему/
-- It takes an array of bytes on the input, in the first element a lower byte must be written, then bytes must be located from the youngest to the worst
-- Алгоритм взят с Википедии/Algoritm from wikipedia
function ieee754_from_hex(hex)
  if hex >> 31 == 0 then
    sign = 1
  else
    sign = -1
  end
  
  exponent = (hex >> 23)  & 0xFF
  
  if exponent ~= 0 then
    mantiss =  (hex & 0x7FFFFF) | 0x800000 
  else 
    mantiss = (hex & 0x7FFFFF) << 1
  end
  
  float = sign * (mantiss * 2^-23) * (2^(exponent-127))
  
  return float
end
