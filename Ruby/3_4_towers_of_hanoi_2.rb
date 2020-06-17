def hanoi_steps(number_of_discs)
  move_disks(number_of_discs, 1, 2, 3)
end

def move_disks(number, start, intermediate, goal)
  if number == 1
    puts "#{start}->#{goal}"
    return
  end
  move_disks((n - 1), start, goal, intermediate)
  move_disks(1, start, intermediate, goal)
  move_disks((n - 1), intermediate, start, goal)
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
