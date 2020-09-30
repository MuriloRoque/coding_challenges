def index_match(array)
  array.each_with_index do |elem, i|
    return elem if elem == i
  end
  -1
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0
