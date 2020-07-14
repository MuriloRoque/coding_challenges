def simple_quicksort(array)
  return array if array.length <= 1

  pivot = array.shift
  left = []
  right = []
  array.each do |elem|
    if elem <= pivot
      left.push(elem)
    else
      right.push(elem)
    end
  end
  res = simple_quicksort(left).push(pivot) + simple_quicksort(right)
  print res.join(' ') + "\n"
  res
end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10
