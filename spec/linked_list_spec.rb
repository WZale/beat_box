require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists with readable attributes" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end
  
  it "has an append method" do
    list = LinkedList.new
    
    expect(list.append("doop")).to eq("doop")
    expect(list).to eq(list)
    expect(list.head.next_node).to eq(nil)
  end
  
  it "has a count method" do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
  end
end