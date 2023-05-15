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
    if @head.nil?
      node_counter = 0
    elsif current_node.next_node.nil?
      node_counter = 1
    else
      while current_node != nil
        node_counter += 1
        current_node = current_node.next_node
        if current_node.next_node.nil?
          node_counter += 1
          break 
        end
      end
    end
    node_counter
  end

  def to_string
    current_node = @head
    node_data = + " "
    if @head.nil?
      nil
    elsif current_node.next_node.nil?
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
# together as a single string. It first creates two variables. Current_node is set to equal head, or the beginning of the list. Node_data equals an empty space string and the plus sign to allow for concatenation.

# The method begins with an if conditional, checking to see if 
# current_node.next_node is equal to nil (for a linked list of only one node.) If so, it simply returns the data from head. However, if current_node does not equal nil, we enter a while loop.

# Inside that loop, current_node.data + " " is shovelled into node_data. Then, current_node is set to equal current_node.next_node, advancing through the list. Once the end of the list (nil) is reached, the while loop ends, and node_data is returned (with leading and trailing whitespaces removed).

  def prepend(data)
    node = Node.new(data)
    current_node = @head
    if  @head.nil?
      @head = node
    else 
      node.set_next_node(current_node)
      @head = node
    end
    node.data
  end

  # insert should be made more robust, with conditionals for inserting at head and other such cases

  def insert(index, data)
    current_node = @head
    (index -1).times do
      current_node = current_node.next_node
    end
    inserted_node = Node.new(data)
    inserted_node.set_next_node(current_node.next_node) && current_node.set_next_node(inserted_node)
    inserted_node.data
  end

  # Insert will insert one or more elements at a given position in the list. It takes two parameters. The first one is the position at which to insert nodes, and the second parameter is the string of data to be inserted. 
  
  # Insert will have to iterate through the linked list until it reaches the indicated position at which the new node is to be inserted. It will have to have the previous node point to the newly inserted node, and make sure that the new node points to the next node. Finally, it will have to return the data of the newly inserted node. 

  def find (index, number_of_elements)
    full_string = to_string
    string_return = full_string.split[index, number_of_elements]
    string_return.join(" ")
  end

  def includes?(data)
    full_string = to_string
    full_string.include?(data)
  end

  def pop
    current_node = @head
    data_return = (node_data_array = to_string.split).pop
    if @head.nil?
      nil
    elsif current_node.next_node == nil
      @head = nil
    else
      current_node = @head
      (count - 2).times do
        current_node = current_node.next_node
      end
      current_node.set_next_node(nil)
    end
    data_return
  end

end

