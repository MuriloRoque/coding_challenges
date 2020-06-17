def depth_first_search(graph)
  discovered = Array.new(graph.keys.length, false)
  path = []
  stack = []
  stack.push(0)
  discovered[0] = true
  stacking(stack, path, graph, discovered)
end

def stacking(stack, path, graph, discovered)
  until stack.empty?
    current = stack.pop
    path.push(current)
    graph[current].reverse_each do |adjacent|
      stack.push(adjacent) unless discovered[adjacent]
      discovered[adjacent] = true
    end
  end
  path
end
