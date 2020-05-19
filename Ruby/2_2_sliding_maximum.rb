def sliding_maximum(k, array)
  i = 0
  bigs = []
  limit = array.length - k + 1
  while i < limit do
    j = i
    big = array[j]
    while (j + 2) <= (k + i) do
      big = array[j + 1] if big <= array[j + 1]
      j += 1
    end
    bigs.push(big)
    i += 1
  end
  return bigs
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
