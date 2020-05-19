def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  result = (max_interval + min_interval)/2
  if (result * result) == number
    return result
  else
    if (result * result) < number
      result = sqrt_recursive(number, result, max_interval)
    else
      result = sqrt_recursive(number, min_interval, result)
    end
  end
  return result
end

puts sqrt(25)
puts sqrt(7056)
