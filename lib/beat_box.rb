class BeatBox
  attr_reader :list

  def initialize(list = LinkedList.new)
    @list = list
  end

  def append(data)
    data_array = data.split.each { |node| list.append(node) }
    data_array.join(" ")
  end
  
  def count
    list.count
  end

  def play
    `say -r 150 -v Good News "deep doo ditt woo hoo shu"`
  end
end