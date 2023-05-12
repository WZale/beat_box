class LinkedList
  attr_reader :head

  def initialize()
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    if  @head.nil?
      @head = node
    else 
      @head.node_linker(node)
    end
    node.data
  end

  def count
    node_counter = 0
    current_node = @head
    while current_node != nil
      node_counter += 1
      current_node = current_node.next_node
      if current_node.next_node.nil?
        node_counter += 1
        break 
      end
    end
    node_counter
  end

  def to_string
    current_node = @head
    require 'pry'; binding.pry
    if current_node.next_node.nil?
      head.data
    else
      
    end

  end

# the to_string method iterates through the linked list
# and provides the data from each node as one joined string, unless
# the head is pointing to nil (in which case only head would print).
end