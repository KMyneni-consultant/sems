require 'spec_helper'

describe "tx_sections/index" do
  before(:each) do
    assign(:tx_sections, [
      stub_model(TxSection,
        :sid => "Sid",
        :section_name => "Section Name",
        :fid => "Fid",
        :pid => "Pid"
      ),
      stub_model(TxSection,
        :sid => "Sid",
        :section_name => "Section Name",
        :fid => "Fid",
        :pid => "Pid"
      )
    ])
  end

  it "renders a list of tx_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sid".to_s, :count => 2
    assert_select "tr>td", :text => "Section Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fid".to_s, :count => 2
    assert_select "tr>td", :text => "Pid".to_s, :count => 2
  end
end
