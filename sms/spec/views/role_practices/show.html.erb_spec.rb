require 'spec_helper'

describe "role_practices/show" do
  before(:each) do
    @role_practice = assign(:role_practice, stub_model(RolePractice,
      :rid => "Rid",
      :pid => "Pid",
      :role_name => "Role Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rid/)
    rendered.should match(/Pid/)
    rendered.should match(/Role Name/)
  end
end
