def smallest_difference(array)
  array.sort!
  res_diff = array[1] - array[0]
  res_arr = []
  (2...array.length).each do |i|
    diff = array[i] - array[i - 1]
    if diff < res_diff
      res_diff = diff
      res_arr = [array[i - 1], array[i]]
    end
  end
  res_arr
end

p smallest_difference([-20, -3_916_237, -357_920, -3_620_601, 7_374_819,
                       -7_330_761, 30, 6_246_457, -6_461_594, 266_854])
# => [-20, 30]
