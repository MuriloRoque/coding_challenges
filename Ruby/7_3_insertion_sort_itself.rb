def sort_itself(array)
  i = 1
  while i < array.length
    element = array[i]
    j = i - 1
    while j >= 0 and element < array[j]
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = element
    puts array.join(' ')
    i += 1
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
