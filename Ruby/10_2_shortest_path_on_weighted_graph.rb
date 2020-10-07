def shortest_path_wg(matrix)
  init = 0
  vertex = []
  v = matrix[0].length
  dist = []
  prev = []
  v.times do |i|
    dist << Float::INFINITY
    prev << -1
    vertex << i
  end
  dist[init] = 0
  find_paths(vertex, matrix, dist, prev)
end

def find_paths(vertex, matrix, dist, prev)
  until vertex.empty?
    u = vertex.shift
    matrix[u].each_with_index do |i, j|
      next if i.zero?

      alt = dist[u] + i
      if alt < dist[j]
        dist[j] = alt
        prev[j] = i
      end
    end
  end
  dist
end

p shortest_path_wg([[0, 0, 1, 3, 0, 0],
                    [0, 0, 0, 5, 0, 0],
                    [1, 0, 0, 2, 1, 4],
                    [3, 5, 2, 0, 7, 0],
                    [0, 0, 1, 7, 0, 2],
                    [0, 0, 4, 0, 2, 0]])
# => [0, 8, 1, 3, 2, 4]
