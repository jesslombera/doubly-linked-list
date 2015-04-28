class Node
  
  attr_accessor :data, :before_node, :after_node
  
  def initialize(d)
    self.data = d
  end
  
end

n1 = Node.new(7)         ### First
n2 = Node.new(345)       ### Second
n3 = Node.new(127)       ### Third

n1.after_node = n2
n2.before_node = n1
n2.after_node = n3
n3.before_node = n2


puts "Going forward..."

node = n1 # first node

# Traversing from first to last
while not node.nil?
  puts node.data
  node = node.after_node
end

puts "Going back..."

node = n3
# Traversing from last to first
while not node.nil?
  puts node.data
  node = node.before_node
end




# Remove one of the elements (the one in the middle)
puts "Removed n2"
n1.after_node = n3
n3.before_node = n1




puts "Going forward..."

node = n1 # first node
# Traversing from first to last
while not node.nil?
  puts node.data
  node = node.after_node
end

puts "Going back..."

node = n3
# Traversing from last to first
while not node.nil?
  puts node.data
  node = node.before_node
end