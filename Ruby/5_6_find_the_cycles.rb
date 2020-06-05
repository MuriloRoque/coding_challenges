# frozen_string_literal: true

def graph_cycle?(graph)
  visited = Array.new(graph.size, false)
  graph.keys.each do |vertex|
    return true if !visited[vertex] && cycle_rec?(graph, vertex, visited, -1)
  end
  false
end

def cycle_rec?(graph, vertex, visited, parent)
  visited[vertex] = true
  graph[vertex]&.each do |i|
    if !visited[i]
      return true if cycle_rec?(graph, i, visited, vertex)
    elsif i != parent
      return true
    end
  end
  false
end

puts graph_cycle?({
                    0 => [2],
                    1 => [4],
                    2 => [0, 5, 3],
                    3 => [5, 2],
                    4 => [5, 1],
                    5 => [4, 2, 3]
                  })
# => true

puts graph_cycle?({
                    0 => [2],
                    1 => [2],
                    2 => [0, 1, 3, 4, 5],
                    3 => [2],
                    4 => [2]
                  })
# => false)
