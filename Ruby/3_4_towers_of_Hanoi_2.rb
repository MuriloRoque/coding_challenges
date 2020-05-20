def hanoi_steps(number_of_discs)
  move_disks(number_of_discs, 1, 2, 3)
end

def move_disks(n, start, intermediate, goal)
  if n == 1
    puts move_text(start, goal)
    return
  end
  move_disks((n - 1), start, goal, intermediate)
  move_disks(1, start, intermediate, goal)
  move_disks((n - 1), intermediate, start, goal)
end

def move_text(from, to)
  "#{from}->#{to}"
end


hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3