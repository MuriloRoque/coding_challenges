# frozen_string_literal: true

# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# LinkedList class
class LinkedList
  # setup head and tail
  def initialize
    @list = []
  end

  def add(number)
    # your code here
    @list.push(number)
  end

  def get(index)
    # your code here
    @list[index]
  end

  def add_at(index, item)
    @list.insert(index, item)
  end

  def remove(index)
    @list.delete_at(index)
  end

  private

  def get_node(index)
    Node.new(index)
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
