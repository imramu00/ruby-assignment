class Node
  attr_accessor :value, :left, :right

  def initialize(value)
      @value = value
      @left = nil
      @right = nil
  end
end

class Bst
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

  def height(root = self.root)
    if root == nil
      return 0
    else
      lheight = height(root.left)
      rheight = height(root.right)
      if lheight > rheight
        return lheight+1
      else
        return rheight+1
      end
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

  def print_levelorder(root = self.root)
    h = height()
    (1..h).each {|i| print_level(i,root)}
  end

  def print_level(level, root = self.root)
    if root == nil
      return
    end
    if level == 1
      print "#{root.value} "
    else
      print_level(level-1, root.left)
      print_level(level-1, root.right)
    end
  end

  def delete_val(val)
    if has_val?(val)
      @size -=1
      delete_node(val)
    else
      print("#{val} doesn't exist in the tree")
    end
  end

  def delete_node(value, root = self.root)
    if root == nil
      return nil
    end

    if root.value > value
      root.left= delete_node(value, root.left)
    elsif root.value < value
      root.right = delete_node(value, root.right)
    end

    if root.value == value
      if root.right.nil? && root.left.nil?
        root = nil
      elsif root.left.nil?
        root = root.right
      elsif root.right.nil?
        root = root.left
      else
        root.value = min(root.right)
        root.right = delete_node(root.data, root.right)
      end
    end
 end

  def size()
    puts @size
  end

  def clear()
    self.root = nil
    self.size = 0
  end
end

tree = Bst.new()
tree.insert(1)
tree.insert(2)
tree.insert(3)
tree.insert(4)
tree.insert(5)
tree.insert(6)
tree.insert(7)
tree.inorder
puts
tree.preorder
puts
tree.postorder
puts
tree.print_levelorder
puts
puts tree.has_val?(7)
puts
puts tree.has_val?(10)
puts
tree.print_levelorder
puts
tree.size
puts
tree.delete_val(1)
puts
tree.clear
tree.inorder
puts
tree.size