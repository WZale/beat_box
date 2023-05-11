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
  end
end