require 'spec_helper'

describe "tx_classes/index" do
  before(:each) do
    assign(:tx_classes, [
      stub_model(TxClass,
        :cid => "Cid",
        :class_name => "Class Name",
        :fid => "Fid",
        :pid => "Pid"
      ),
      stub_model(TxClass,
        :cid => "Cid",
        :class_name => "Class Name",
        :fid => "Fid",
        :pid => "Pid"
      )
    ])
  end

  it "renders a list of tx_classes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cid".to_s, :count => 2
    assert_select "tr>td", :text => "Class Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fid".to_s, :count => 2
    assert_select "tr>td", :text => "Pid".to_s, :count => 2
  end
end
