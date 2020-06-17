# Node Class
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

# helper function
def array_to_tree(array, index = 0)
  return nil if index >= array.length || array[index].zero?

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2 * index + 1)
  node.right = array_to_tree(array, 2 * index + 2)

  node
end

# helper function
def height(node, hei = 1)
  return hei if node.nil?

  hei += height(node.left, hei)
  hei
end

def balanced_tree?(array)
  root = array_to_tree(array)
  balanced?(root)
end

def balanced?(node)
  return true if node.nil?

  left_height = height(node.left)
  right_height = height(node.right)
  return false if (left_height - right_height).abs > 1

  balanced?(node.left) && balanced?(node.right)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true
