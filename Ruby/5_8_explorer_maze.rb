def maze_escape(maze)
  goal_pos = find_goal_pos(maze, [])
  shortest_route(maze, goal_pos, [])
end

def find_goal_pos(maze, goal_pos)
  (0...maze.length).each do |path|
    if maze[path].include? 9
      goal_pos << maze[path].index(9)
      goal_pos << path
    end
  end
  goal_pos
end

def shortest_route(maze, goal_pos, steps)
  while goal_pos[1] >= 0
    while goal_pos[0] >= 0
      i = goal_pos[0]
      j = goal_pos[1]
      steps << [i, j]
      break if (maze[j - 1][i]).zero? && (j - 1 >= 0)

      goal_pos[0] -= 1
    end
    goal_pos[1] -= 1
  end
  steps.reverse
end

p maze_escape(
  [
    [0, 0, 0, 0, 0],
    [0, 1, 0, 1, 0],
    [0, 1, 0, 1, 1],
    [0, 1, 0, 0, 0],
    [0, 0, 0, 1, 9]
  ]
)
# => [
#      [0, 0],
#      [1, 0],
#      [2, 0],
#      [2, 1],
#      [2, 2],
#      [2, 3],
#      [3, 3],
#      [4, 3],
#      [4, 4]
#    ]
