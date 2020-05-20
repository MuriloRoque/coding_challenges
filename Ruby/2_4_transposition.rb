# frozen_string_literal: true

def transpose(string, num = 0, iter = 0)
  arr = string.split('')
  while iter < arr.length
    if (arr[iter] == 'g') && (arr[iter + 1] == 'n') && (num != 0)
      arr[iter - num], arr[iter + 1] = arr[iter + 1], arr[iter - num]
    elsif (arr[iter] == 'g') && (arr[iter + 1] == 'n')
      arr[iter], arr[iter + 1] = arr[iter + 1], arr[iter]
    elsif (arr[iter] == 'g') && (arr[iter + 1] == 'g')
      num += 1
    end
    iter += 1
  end
  arr.join
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
