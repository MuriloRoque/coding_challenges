def hash_table(arr)
  hash = {}
  arr.each do |item|
    index = item.abs % 11
    if hash[index].nil?
      sub_arr = []
      sub_arr.push(item)
      hash[index] = sub_arr
    else
      hash[index].push(item)
    end
  end
  print_table(hash)
end

def print_table(hash)
  arr = []
  i = 0
  11.times do
    if hash&.[](i)
      hash[i].each do |sub_item|
        arr.push(sub_item)
      end
    end
    i += 1
  end
  arr
end

p hash_table([12, 24, 125, 5, 91, 1_106, 2, 1_021, 29, 3_536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8_265, 234_004, 602, 7_400_000, 200_000_000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]
