class Node
  attr_accessor :value, :left, :right

  def initialize(value)
      @value = value
      @left = nil
      @right = nil
  end
end

class BST
  attr_accessor :root, :size

  def initialize()
      @root = nil
      @size = 0;
  end

  def insert(value)
    if @root == nil
      @root = Node.new(value)
    else
      current = @root
      previous = @root
      while current != nil
        previous = current
        if value < current.value
          current = current.left
        else
          current = current.right
        end
      end
      if value < previous.value
        previous.left = Node.new(value)
      else
        previous.right = Node.new(value)
      end
    end
    @size += 1
  end

  def max(node = self.root)
    if node == nil
      return nil
    elsif node.right == nil
      return node
    else
      return max(node.right)
    end
  end

  def min(node = self.root)
    if node == nil
      return nil
    elsif node.left == nil
      return node
    else
      return min(node.left)
    end
  end

  def has_val?(value, node = self.root)
    if node == nil
      return false
    elsif value < node.value
      return has_val?(value, node.left)
    elsif value > node.value
      return has_val?(value, node.right)
    else
      return true
    end
  end

  def inorder(root = self.root)
    if root != nil
      inorder(root.left)
      print "#{root.value} "
      inorder(root.right)
    end
  end

  def preorder(root = self.root)
    if root != nil
      print "#{root.value} "
      preorder(root.left)
      preorder(root.right)
    end
  end

  def postorder(root = self.root)
    if root != nil
      postorder(root.left)
      postorder(root.right)
      print "#{root.value} "
    end
  end


end

tree = BST.new()
tree.insert(100)
tree.insert(20)
tree.insert(200)
tree.inorder()
tree.preorder
tree.postorder
puts tree.has_val?(20)
puts tree.has_val?(10)
