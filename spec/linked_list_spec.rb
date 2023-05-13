require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists with readable attributes" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end
  
  it "can append more than one node" do
    list = LinkedList.new
    
    expect(list.append("doop")).to eq("doop")
    expect(list).to eq(list)
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)

    expect(list.append("deep")).to eq("deep")
    expect(list.head.next_node).to be_an_instance_of(Node)
  end
  
  it "has a count method" do
    list = LinkedList.new

    list.append("doop")
    list.append("deep")

    expect(list.count).to eq(2)
  end
  
  it "has a to_string method" do
    list = LinkedList.new

    list.append("doop")
    list.append("deep")
    
    expect(list.to_string).to eq("doop deep")
  end
  
  it "has an append method" do
    list = LinkedList.new

    expect(list.append("plop")).to eq("plop")
    expect(list.to_string).to eq("plop")
    
    expect(list.append("suu")).to eq("suu")
    
    expect(list.prepend("dop")).to eq("dop")
    expect(list.to_string).to eq("plop")
    expect(list.count).to eq(3)
  end

end