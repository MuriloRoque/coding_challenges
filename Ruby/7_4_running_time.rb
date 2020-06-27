def running_time(array)
  i = 1
  num = 0
  while i < array.length
    element = array[i]
    j = i - 1
    while j >= 0 and element < array[j]
      array[j + 1] = array[j]
      j -= 1
      num += 1
    end
    array[j + 1] = element
    i += 1
  end
  num
end

puts running_time([2, 1, 3, 1, 2])
# => 4
