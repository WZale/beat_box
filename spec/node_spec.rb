require "./lib/node"

RSpec.describe Node do
  it "exists with readable attributes" do
    node = Node.new("plop")
    
    expect(node).to be_an_instance_of(Node)
    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
end