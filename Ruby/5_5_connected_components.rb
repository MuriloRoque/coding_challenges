def connected_graph?(graph)
  discovered = Array.new(graph.keys.length, false)
  stack = []
  stack.push(0)
  discovered[0] = true
  discovered = stacking(stack, graph, discovered)
  discovered.none?(false)
end

def stacking(stack, graph, discovered)
  until stack.empty?
    graph[stack.pop].reverse_each do |adjacent|
      stack.push(adjacent) unless discovered[adjacent]
      discovered[adjacent] = true
    end
  end
  discovered
end
