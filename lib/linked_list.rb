class LinkedList
  attr_reader :head
  def initialize()
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    @head = node
    node.data
  end

  def count
    node_counter = 0
    if head.data != nil && head.next_node == nil
      node_counter += 1
    end
    node_counter
  end

end