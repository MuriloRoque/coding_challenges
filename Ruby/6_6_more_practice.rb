def find_pairs(array, sum)
  res = []
  hash = array.each_with_index.to_h
  puts hash
  array.each_with_index do |item, i|
    if hash[sum - item] != i && hash[sum - item]
      res.push([item, sum - item]) if res.include?([sum - item, item]) == false
    end
  end
  res
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
