class BeatBox
  attr_reader :list

  def initialize(data = nil)
    @list = LinkedList.new
    append(data)
  end

  def append(node_data)
    if node_data.nil?
      list.head
    else
      node_data_array = node_data.split.each do |node|
        list.append(node) 
        end
      node_data_array.join(" ")
    end
  end
  
  def count
    list.count
  end

  def play
    `say -r 150 -v Good News "deep doo ditt woo hoo shu"`
  end
end