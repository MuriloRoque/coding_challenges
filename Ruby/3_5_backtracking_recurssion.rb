# frozen_string_literal: true

def exact_sum?(total, coins)
  return true if total.zero?
  return false if coins.length.zero? || total.negative?
  return true if exact_sum?(total - coins[0], coins[1, coins.length])
  return true if exact_sum?(total, coins[1, coins.length])

  false
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false
