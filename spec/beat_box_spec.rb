require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  it "exists with readable attributes" do
    bb = BeatBox.new
    
    expect(bb.list).to be_an_instance_of(LinkedList)
    expect(bb.list.head).to eq(nil)
    expect(bb.append("deep doo ditt")).to eq("deep doo ditt")

    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
    expect(bb.append("woo hoo shu")).to eq("woo hoo shu")
    expect(bb.count).to eq(6)
  end
  
  it "can play beats" do
    bb = BeatBox.new
    expect(bb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
    expect(bb.count).to eq(6)
    expect(bb.list.count).to eq(6)
    expect(bb.play).to eq(`say -r 150 -v Good News "deep doo ditt woo hoo shu"`)
    
  end
end