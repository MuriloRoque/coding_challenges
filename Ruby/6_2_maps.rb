def appears_most_times(array)
  hash = array.each_with_object(Hash.new(0)) do |k, v|
    v[k] += 1
    v
  end
  array.max_by { |v| hash[v] }
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4_376, -345, -345, 4_376, -345, 84_945,
                         4_376, -345, -26_509, 4_376, 84_945, 84_945,
                         -26_509, 896_341, 4_376])
# => 4376
