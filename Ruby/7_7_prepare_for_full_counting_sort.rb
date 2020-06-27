def full_counting_sort_prep(array)
  count = Array.new(100, 0)
  array.each do |elem|
    int = elem.scan(/\d/).join('').to_i
    count[int] += 1
  end
  i = 1
  while i < count.length
    count[i] += count[i - 1]
    i += 1
  end
  count
end

p full_counting_sort_prep(['4 that', '3 be', '0 to', '1 be',
                           '5 question', '1 or', '2 not',
                           '4 is', '2 to', '4 the'])
# => [1, 3, 5, 6, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
#     10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
#     10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
#     10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
#     10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
#     10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
#     10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
