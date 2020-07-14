def merge_sort(array1, array2)
  res = []
  while !array1.empty? and !array2.empty?
    if array1[0] < array2[0]
      res.push(array1.shift)
    else
      res.push(array2.shift)
    end
  end
  res += if array1.empty?
           array2
         else
           array1
         end
  res
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
