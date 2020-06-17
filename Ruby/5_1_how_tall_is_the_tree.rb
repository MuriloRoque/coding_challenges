def binary_tree_height(array_tree)
  h = 1
  n = array_tree.length - 1
  while n > 1
    h += 1
    n = (n - 1) / 2
  end
  h
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
