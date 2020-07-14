def partition(array, first, last)
  pivot = array[last]
  greater_index = first
  (first...last).each do |i|
    if array[i] < pivot
      array[i], array[greater_index] = array[greater_index], array[i]
      greater_index += 1
    end
  end
  array[last], array[greater_index] = array[greater_index], array[last]
  greater_index
end

def advanced_quicksort(array, first = 0, last = array.length - 1)
  if first < last
    pivot = partition(array, first, last)
    puts array.to_s
    advanced_quicksort(array, first, pivot - 1)
    advanced_quicksort(array, pivot + 1, last)
  end
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9
