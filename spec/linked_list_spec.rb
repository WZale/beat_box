require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists with readable attributes" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to eq(nil)
  end
  
  it "can append nodes" do
    list = LinkedList.new
    
    expect(list.append("doop")).to eq("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
    
    expect(list.append("deep")).to eq("deep")
    expect(list.head.next_node).to be_an_instance_of(Node)

    expect(list.append("plop")).to eq("plop")
    expect(list.append("suu")).to eq("suu")

    expect(list.to_string).to eq("doop deep plop suu")
  end
  
  it "has a prepend method" do
    list = LinkedList.new
    expect(list.prepend("dop")).to eq("dop")

  end
  
  it "has a count method" do
    list = LinkedList.new
    expect(list.count).to eq(0)

    list.append("doop")
    expect(list.count).to eq(1)

    list.append("deep")
    expect(list.count).to eq(2)
  end
  
  it "has a to_string method" do
    list = LinkedList.new
    expect(list.to_string).to eq(nil)
    
    list.append("doop")
    expect(list.to_string).to eq("doop")

    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end
  
  it "has an insert method" do
    list = LinkedList.new
    
    expect(list.append("plop")).to eq("plop")
    expect(list.to_string).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
    
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)

    expect(list.insert(0, "woo")).to eq("woo")
    expect(list.to_string).to eq("woo dop plop suu")

    expect(list.insert(1, "hoo")).to eq("hoo")
    expect(list.to_string).to eq("woo hoo dop plop suu")

    headless_list = LinkedList.new
    expect(headless_list.insert(0, "woah")).to eq("woah")
    expect(headless_list.to_string).to eq("woah")
  end
  
  it "has a find method" do
    list = LinkedList.new
    
    expect(list.append("deep")).to eq("deep")
    expect(list.append("woo")).to eq("woo")
    expect(list.append("shi")).to eq("shi")
    expect(list.append("shu")).to eq("shu")
    expect(list.append("blop")).to eq("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
    
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it "has an includes? method" do
    list = LinkedList.new
    
    expect(list.append("deep")).to eq("deep")
    expect(list.append("woo")).to eq("woo")
    expect(list.append("shi")).to eq("shi")
    expect(list.append("shu")).to eq("shu")
    expect(list.append("blop")).to eq("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)
  end

  it "has a pop method" do
    list = LinkedList.new
    
    expect(list.append("deep")).to eq("deep")
    expect(list.append("woo")).to eq("woo")
    expect(list.append("shi")).to eq("shi")
    expect(list.append("shu")).to eq("shu")
    expect(list.append("blop")).to eq("blop")

    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end
end