def transpose(string)
  arr = string.split('')
  n = 0
  i = 0
  while i < arr.length() do
    if arr[i] == 'g' and arr[i+1] == 'n' and n != 0
      arr[i-n], arr[i+1] = arr[i+1], arr[i-n]
    elsif arr[i] == 'g' and arr[i+1] == 'n'
      arr[i], arr[i+1] = arr[i+1], arr[i]
    elsif arr[i] == 'g' and arr[i+1] == 'g'
      n += 1
    end
    i += 1
  end
  return arr.join()
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg