require 'spec_helper'

describe "roles/index" do
  before(:each) do
    assign(:roles, [
      stub_model(Role,
        :rid => "Rid",
        :role_name => "Role Name"
      ),
      stub_model(Role,
        :rid => "Rid",
        :role_name => "Role Name"
      )
    ])
  end

  it "renders a list of roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rid".to_s, :count => 2
    assert_select "tr>td", :text => "Role Name".to_s, :count => 2
  end
end
