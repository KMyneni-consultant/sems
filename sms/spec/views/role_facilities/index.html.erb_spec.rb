require 'spec_helper'

describe "role_facilities/index" do
  before(:each) do
    assign(:role_facilities, [
      stub_model(RoleFacility,
        :rid => "Rid",
        :fid => "Fid",
        :pid => "Pid",
        :role_name => "Role Name"
      ),
      stub_model(RoleFacility,
        :rid => "Rid",
        :fid => "Fid",
        :pid => "Pid",
        :role_name => "Role Name"
      )
    ])
  end

  it "renders a list of role_facilities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rid".to_s, :count => 2
    assert_select "tr>td", :text => "Fid".to_s, :count => 2
    assert_select "tr>td", :text => "Pid".to_s, :count => 2
    assert_select "tr>td", :text => "Role Name".to_s, :count => 2
  end
end
