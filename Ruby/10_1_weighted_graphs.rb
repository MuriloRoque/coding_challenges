def weighted_graphs(matrix)
  res = Array.new(matrix[0].length, false)
  queue = []
  queue.push(0)
  res[0] = 0
  queueing(queue, matrix, res)
end

def queueing(queue, matrix, res)
  num = 1
  until queue.empty?
    len = queue.length
    len.times do
      current = queue.shift
      (0...matrix[0].length).each do |i|
        next if matrix[current][i].zero? || res[i]

        queue.push(i)
        res[i] = num unless res[i]
      end
    end
    num += 1
  end
  res
end

p weighted_graphs([[0, 0, 1, 3, 0, 0],
                   [0, 0, 0, 5, 0, 0],
                   [1, 0, 0, 2, 1, 4],
                   [3, 5, 2, 0, 7, 0],
                   [0, 0, 1, 7, 0, 2],
                   [0, 0, 4, 0, 2, 0]])
# => [0, 2, 1, 1, 2, 2]
