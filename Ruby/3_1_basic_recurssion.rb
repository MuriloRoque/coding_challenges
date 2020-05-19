def sum(number)
  if number == 1
    return number
  else
    result = number + sum(number - 1)
  end
  return result
end

puts sum(4)
puts sum(10)