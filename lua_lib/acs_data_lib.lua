-- auxiliary library for working with ACS data/вспомогательная библиотека для работы с данными

-- функция для сравнения двух таблиц
function deepcompare(t1,t2,ignore_mt)
-- Получаем типы таблиц поэлементно
  local ty1 = type(t1)
  local ty2 = type(t2)
  
  if ty1 ~= ty2 then return false end
  
  -- non-table types can be directly compared
  if ty1 ~= 'table' and ty2 ~= 'table' then return t1 == t2 end
  
  -- as well as tables which have the metamethod __eq
  local mt = getmetatable(t1)
  
  if not ignore_mt and mt and mt.__eq then return t1 == t2 end
  
  for k1,v1 in pairs(t1) do
    local v2 = t2[k1]
    if v2 == nil or not deepcompare(v1,v2) then return false end
  end

  for k2,v2 in pairs(t2) do
    local v1 = t1[k2]
    if v1 == nil or not deepcompare(v1,v2) then return false end
  end

  return true
end

-- Перевод массива байт в целочисленное значение, подходит для порядка байт от младшeго к старшему, если reverse_byte == true используется обратный порядок байт например для подсчёта IEEE754
-- Converting an array of bytes to an integer value, is suitable for the order of the byte from low to high, if reverse_byte == true uses the reverse order of bytes for example to calculate IEEE754 
function array_byte_to_int(array, reverse_byte)
  byte = {}
  lsh = 0
  int = 0

  if reverse_byte ~= true then -- проверяем опцию для обратного порядка байт/Check the option for the reverse byte order 
    for i = #array, 1, -1 do -- проходим по массиву байт/go through an array of bytes
      byte[i] = array[i] << lsh -- записываем байты в новый массив в соответствиии с их разрядом/write the bytes into a new array in accordance with their rank
      lsh = lsh + 8 -- настолько нужно сдвинуть следующий байт,чтобы записать его в соответствии с весом/so you need to move the next byte to write it in accordance with the weight
    end
    
    for i = 1, #byte, 1 do -- проход по массиву байт записанных в соответствии со своим весом/pass through the array of bytes written in accordance with their weight
      int = int | byte[i] -- сложение байт в единый байт/addition of bytes into a single byte
    end
  else
    reverse_i = 1 
    for i = #array, 1, -1 do  -- проходим по массиву байт/go through an array of bytes
      byte[i] = array[reverse_i] << lsh -- записываем байты в новый массив в соответствиии с их разрядом, но в обратном порядке/write the bytes into a new array in accordance with their rank, but in the reverse order
      lsh = lsh + 8
      reverse_i = reverse_i + 1
    end
    
    for i = 1, #byte, 1 do
      int = int | byte[i]
    end
  end
  
  return int
end

-- Разбиваем строку в массив байт
-- Convert string to byte array
function string_to_byte(str)
  byte_arr = {}
  
  for i = 1, #str do
    local c = str:byte(i)
    byte_arr[i] = c
  end
  
  return byte_arr
end

function bytes_array_to_string(arr_byte)
  str = ""
  
  for i = 1, #arr_byte, 1 do
    str = str..string.char(arr_byte[i])
  end
  
  return str
end

-- Функция для превращения байта(указанного количества бит) в побитные значения возвращаемые в виде массива булевых значений.
-- Принимает на вход байт и количество обарабатываемых бит. Возвращает массив булевых значений, где true = 1, false = 0
function byte_to_bool(bytes, amount_bit)
  b = {}
  
  if type(amount_bit) ~= "number" then
    amount_bit = 1
  end
  
  for i = 0, amount_bit, 1 do 
    b[i + 1] = bytes & 2^i
    if b[i + 1] == 0 then
      b[i + 1] = false
    else
      b[i + 1] = true
    end
  end
  
  return b
end

-- Функция для взятия старшего или младшего байта из слова, если case == 0 достаём младший
function word_to_byte(word, case)
  if case == 0 then
    small_byte = word & 0xFF
    return small_byte
  elseif case == 1 then
    big_byte = word >> 8
    return big_byte
  end
end

-- Присвоение массивов
function assigument_of_array(array)
  assig_array = {}
  
  for i = 1, #array, 1 do
    assig_array[i] = array[i]
  end
  
  return assig_array
end

-- Возвращает число, на вход бит(булевое значение) и разряд
function bits_to_int(bit, bit_capacity)
  if bit == true or bit == 1 then
    number = 1 << bit_capacity
  else
    number = 0
  end
  return number
end

