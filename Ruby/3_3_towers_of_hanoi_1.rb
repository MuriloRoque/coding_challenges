# frozen_string_literal: true

def move(starting, goal)
  arr = [1, 2, 3]
  intermediate = (arr - [starting, goal]).pop
  str = "#{starting}->#{intermediate} #{starting}->#{goal}
        #{intermediate}->#{goal}"
  str
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
