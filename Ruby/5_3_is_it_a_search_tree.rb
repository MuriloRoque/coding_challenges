# Node Class
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, index = 0)
  return nil if index >= array.length || array[index].zero?

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2 * index + 1)
  node.right = array_to_tree(array, 2 * index + 2)

  node
end

def search_tree?(array)
  root = array_to_tree(array)
  recursion(root)
end

# rubocop: disable Metrics/CyclomaticComplexity
def recursion(node, lower = nil, higher = nil)
  # rubocop: enable Metrics/CyclomaticComplexity
  return true if node.nil?
  return false if lower && (node.data < lower)
  return false if higher && (node.data > higher)

  recursion(node.left, lower, node.data) &&
    recursion(node.right, node.data, higher)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false
