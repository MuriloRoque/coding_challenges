# frozen_string_literal: true

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  result = (max_interval + min_interval) / 2
  return result if (result * result) == number

  result = if (result * result) < number
             sqrt_recursive(number, result, max_interval)
           else
             sqrt_recursive(number, min_interval, result)
           end

  result
end

puts sqrt(25)
puts sqrt(7056)
