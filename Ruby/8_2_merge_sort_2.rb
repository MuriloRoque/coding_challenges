def full_merge_sort(array)
  merge_sort(array).map { |e| e.split[1] }
end

def merge_sort(array)
  return array if array.size <= 1

  mid = array.size / 2
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])

  merge(left, right)
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?

  if left[0].split[0].to_i <= right[0].split[0].to_i
    [left.first] + merge(left[1..-1], right)
  else
    [right.first] + merge(left, right[1..-1])
  end
end

full_merge_sort(['0 ab', '6 cd', '0 ef', '6 gh',
                 '4 ij', '0 ab', '6 cd', '0 ef',
                 '6 gh', '0 ij', '4 that', '3 be',
                 '0 to', '1 be', '5 question', '1 or',
                 '2 not', '4 is', '2 to', '4 the'])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or",
#     "not", "to", "be", "ij", "that", "is", "the",
#     "question", "cd", "gh", "cd", "gh"]
