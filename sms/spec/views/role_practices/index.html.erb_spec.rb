require 'spec_helper'

describe "role_practices/index" do
  before(:each) do
    assign(:role_practices, [
      stub_model(RolePractice,
        :rid => "Rid",
        :pid => "Pid",
        :role_name => "Role Name"
      ),
      stub_model(RolePractice,
        :rid => "Rid",
        :pid => "Pid",
        :role_name => "Role Name"
      )
    ])
  end

  it "renders a list of role_practices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rid".to_s, :count => 2
    assert_select "tr>td", :text => "Pid".to_s, :count => 2
    assert_select "tr>td", :text => "Role Name".to_s, :count => 2
  end
end
