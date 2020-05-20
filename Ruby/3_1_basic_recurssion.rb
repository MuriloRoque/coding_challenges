# frozen_string_literal: true

def sum(number)
  return number if number == 1

  result = number + sum(number - 1)
  result
end

puts sum(4)
puts sum(10)
