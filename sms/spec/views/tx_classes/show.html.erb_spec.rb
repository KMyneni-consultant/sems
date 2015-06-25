require 'spec_helper'

describe "tx_classes/show" do
  before(:each) do
    @tx_class = assign(:tx_class, stub_model(TxClass,
      :cid => "Cid",
      :class_name => "Class Name",
      :fid => "Fid",
      :pid => "Pid"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cid/)
    rendered.should match(/Class Name/)
    rendered.should match(/Fid/)
    rendered.should match(/Pid/)
  end
end
