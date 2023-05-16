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

  def insert(index, data)
    current_node = @head
    inserted_node = Node.new(data)
    if index == 0
      inserted_node.set_next_node(current_node)
      @head = inserted_node
      inserted_node.data
    else
      (index -1).times do
        current_node = current_node.next_node
      end
      inserted_node.set_next_node(current_node.next_node) && current_node.set_next_node(inserted_node)
      inserted_node.data
    end
  end

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

