def tree_height(tree_as_list)
  h = 1
  n = tree_as_list.length - 1
  while n > 1
    h += 1
    n = (n - 1) / 2
  end
  h
end
