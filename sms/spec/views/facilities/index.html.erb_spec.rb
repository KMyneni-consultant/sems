require 'spec_helper'

describe "facilities/index" do
  before(:each) do
    assign(:facilities, [
      stub_model(Facility,
        :fid => "Fid",
        :pid => "Pid",
        :facility_name => "Facility Name"
      ),
      stub_model(Facility,
        :fid => "Fid",
        :pid => "Pid",
        :facility_name => "Facility Name"
      )
    ])
  end

  it "renders a list of facilities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fid".to_s, :count => 2
    assert_select "tr>td", :text => "Pid".to_s, :count => 2
    assert_select "tr>td", :text => "Facility Name".to_s, :count => 2
  end
end
