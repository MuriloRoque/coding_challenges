# rubocop: disable Metrics/MethodLength, Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
def prime_prime(array)
  # rubocop: enable Metrics/MethodLength, Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
  hash = {}
  list = sieve
  array.each do |item|
    current = item
    i = 0
    if list.include?(current)
      if hash[current].nil?
        hash[current] = 1
      else
        hash[current] += 1
      end
    else
      while current >= list[i]
        if (current % list[i]).zero?
          # rubocop: disable Metrics/BlockNesting
          if hash[list[i]].nil?
            # rubocop: enable Metrics/BlockNesting
            hash[list[i]] = 1
          else
            hash[list[i]] += 1
          end
        end
        i += 1
      end
    end
  end
  hash.max_by { |_k, v| v }[0]
end

def sieve()
  list = (2..10_000).to_a
  list.each do |item|
    n = 2
    while n * item <= 10_000
      list.delete(n * item)
      n += 1
    end
  end
  list
end

puts prime_prime([2, 3, 5, 6, 9])
# => 3

puts prime_prime([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 11

puts prime_prime([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 7
