# frozen_string_literal: true

# Node Class
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

# BST Class
class BST
  def insert(node)
    parent = nil
    current = @root
    parent = sorting(parent, current, node)
    if parent.nil?
      @root = node
    elsif node.data <= parent.data
      parent.left = node
    elsif node.data > parent.data
      parent.right = node
    end
  end

  def sorting(parent, current, node)
    until current.nil?
      parent = current
      if node.data <= current.data
        current = current.left
      elsif node.data > current.data
        current = current.right
      end
    end
    parent
  end

  def pre_order(node = @root)
    return '' if node.nil?

    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
    result
  end
end

def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
