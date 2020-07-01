def full_counting_sort(array)
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
  count.unshift(0)
  output = []
  array.each do |elem|
    int = elem.scan(/\d/).join('').to_i
    output[count[int]] = elem.scan(/[a-zA-Z]/).join('')
    count[int] += 1
  end
  output
end

p full_counting_sort(['0 ab', '6 cd', '0 ef', '6 gh',
                      '4 ij', '0 ab', '6 cd', '0 ef',
                      '6 gh', '0 ij', '4 that', '3 be',
                      '0 to', '1 be', '5 question', '1 or',
                      '2 not', '4 is', '2 to', '4 the'])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not",
#     "to", "be", "ij", "that", "is", "the", "question", "cd",
#     "gh", "cd", "gh"]
