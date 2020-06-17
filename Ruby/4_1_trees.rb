def leftmost_nodes_sum(array)
  i = 0
  sum = 0
  while i < array.length
    sum += array[i]
    i = 2 * i + 1
  end
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11
