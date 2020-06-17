require 'set'

def number_of_primes(arr)
  list = sieve
  i = 0
  arr.each do |item|
    i += 1 if list.include?(item)
  end
  i
end

def sieve()
  list = Set.new(2..10_000)
  list.each do |item|
    n = 2
    while n * item <= 10_000
      list.delete(n * item)
      n += 1
    end
  end
  list
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3
