# frozen_string_literal: true

def greatest_peaks(map)
  i = 0
  graph = {}
  peaks = []

  while i < map.size
    j = 0
    while j < map[i].size
      k = nil
      c = map[i][j]
      l = (j - 1).negative? ? 0 : map[i][j - 1]
      r = map[i][j + 1] || 0
      t = (i - 1).negative? ? 0 : map[i - 1][j]
      b = (map[i + 1] && map[i + 1][j]) || 0

      if c < t && t > r && t > b && t > l then k = [i - 1, j]
      elsif c < r && r > b && r > l && r > t then k = [i, j + 1]
      elsif c < b && b > l && b > t && b > r then k = [i + 1, j]
      elsif c < l && l > t && l > r && l > b then k = [i, j - 1]
      end

      if k.nil? then peaks << [i, j]
      elsif graph[k] then graph[k] << [i, j]
      else graph[k] = [[i, j]] end
      j += 1
    end
    i += 1
  end

  grid = peaks.map do |key|
    i = 0
    q = [key]
    loop do
      break if i == q.size

      q += graph[q[i]] || []
      i += 1
    end
    q.size
  end
  grid.minmax
end

p greatest_peaks(
  [
    [9, 8, 5],
    [5, 6, 3],
    [8, 4, 1]
  ]
)
# => [3, 6]

p greatest_peaks(
  [
    [8, 12],
    [9, 3]
  ]
)
# => [1, 3]
