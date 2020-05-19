class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @list = []
  end

  def add(number)
    @list.push(number)
  end

  def get(index)
    return @list[index]
  end
  
  def add_at(index, item)
    @list.insert(index, item)
  end
  
  def remove(index)
    @list.delete_at(index)
  end
  
  private
  
  def get_node(index)
    return Node.new(index)
  end
end

class Stack
  def initialize
    @stack = LinkedList.new()
  end
  def push(number)
    @stack.add(number)
  end
  
  def pop
    @stack.remove(-1)
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3