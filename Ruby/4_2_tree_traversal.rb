# frozen_string_literal: true

# Node Class
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, elem)
  return nil if elem >= array.length || array[elem].zero?

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def pre_order(node)
  return '' if node.nil?

  result = "#{node.data} "
  result += pre_order(node.left)
  result += pre_order(node.right)
  result
end

def post_order(node)
  return '' if node.nil?

  result = post_order(node.left)
  result += post_order(node.right)
  result += "#{node.data} "
  result
end

tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)
puts post_order(tree)
#=> 3 4 1 5 6 2 10
