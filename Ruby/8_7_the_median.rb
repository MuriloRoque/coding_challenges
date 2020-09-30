def median(array, first = 0, last = array.length - 1)
  return array[array.length / 2] unless first < last

  pivot = partition(array, first, last)
  return array[pivot] if pivot == array.length / 2

  median(array, first, pivot - 1)
  median(array, pivot + 1, last)
end

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

puts median([0, 1, 2, 4, 6, 5, 3, 8, 9])
