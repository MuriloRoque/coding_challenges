def insertion_sort(array)
  unsorted = array[-1]
  array[-1] = array[-2]
  i = 1
  while i < array.length + 1
    if array[-i - 1].nil?
      array[-i] = unsorted
      puts array.join(' ')
      return
    end
    if array[-i - 1] < unsorted
      array[-i] = unsorted
      puts array.join(' ')
      return
    else
      array[-i] = array[-i - 1]
      puts array.join(' ')
      i += 1
    end
  end
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
