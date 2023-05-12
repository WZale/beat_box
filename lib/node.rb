class Node
  attr_reader :data,
              :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

# this might be better placed in linked_list.rb,
# as it is involving the linked list overall (and not just a node)
  def node_linker(node)
    current_node = self
    new_node = node
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.set_next_node(new_node)
  end

  # this is a setter method, while attr_reader is a getter
  def set_next_node(node)
    @next_node = node
  end
end
