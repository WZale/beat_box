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
    node_data = + " "
    if current_node.next_node.nil?
      @head.data
    else
      while current_node != nil
        node_data << current_node.data + " "
        current_node = current_node.next_node
      end
      node_data.strip 
    end

  end

# The to_string method provides the data from each node, joined
# together as a single string. It first creates two variables. Current_node
# is set to equal head, or the beginning of the list. Node_data equals
# an empty space string and the plus sign to allow for concatenation.

# The method begins with an if conditional, checking to see if 
# current_node.next_node is equal to nil (for a linked list of only one node.)
# If so, it simply returns the data from head. However, if current_node does
# not equal nil, we enter a while loop.

# Inside that loop, current_node.data + " " is shovelled into node_data. Then,
# current_node is set to equal current_node.next_node, advancing through the 
# list. Once the end of the list (nil) is reached, the while loop ends, and
# node_data is returned (with leading and trailing whitespaces removed).

end