def minimum_spanning_tree(matrix)
  visited = [matrix[0]]
  res = []
  until visited.length == matrix.length
    min = Float::INFINITY
    node = 0
    visited.each do |elem|
      elem.each_with_index do |adjacent, i|
        next unless adjacent != 0 && !visited.include?(matrix[i])

        if adjacent < min
          min = adjacent
          node = i
        end
      end
    end
    visited.push(matrix[node])
    res.push(min)
  end
  res
end

p minimum_spanning_tree([[0, 4, 1, 4, 0, 0, 0, 0, 0, 0],
                         [4, 0, 5, 0, 9, 9, 0, 7, 0, 0],
                         [1, 5, 0, 3, 0, 0, 0, 9, 0, 0],
                         [4, 0, 3, 0, 0, 0, 0, 10, 0, 18],
                         [0, 9, 0, 0, 0, 2, 4, 0, 6, 0],
                         [0, 9, 0, 0, 2, 0, 2, 8, 0, 0],
                         [0, 0, 0, 0, 4, 2, 0, 9, 3, 9],
                         [0, 7, 9, 10, 0, 8, 9, 0, 0, 8],
                         [0, 0, 0, 0, 6, 0, 3, 0, 0, 9],
                         [0, 0, 0, 18, 0, 0, 9, 8, 9, 0]])
# => [1, 3, 4, 7, 8, 2, 2, 3, 8]

p minimum_spanning_tree([[0, 0, 1, 3, 0, 0],
                         [0, 0, 0, 5, 0, 0],
                         [1, 0, 0, 2, 1, 4],
                         [3, 5, 2, 0, 7, 0],
                         [0, 0, 1, 7, 0, 2],
                         [0, 0, 4, 0, 2, 0]])
# => [1, 1, 2, 2, 5]
