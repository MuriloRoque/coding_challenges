# frozen_string_literal: true

# Node class
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# LinkedList class
class LinkedList
  def initialize
    @list = []
  end

  def add(number)
    @list.push(number)
  end

  def get(index)
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

# Stack class
class Stack
  def initialize
    @stack = LinkedList.new
  end

  def push(number)
    @stack.add(number)
  end

  def pop
    @stack.remove(-1)
  end
end

# Queue class
class Queue
  def initialize
    @queue = LinkedList.new
  end

  def add(number)
    @queue.add_at(0, number)
  end

  def remove
    if @queue.get(0).nil?
      -1
    else
      @queue.remove(-1)
    end
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
