require 'spec_helper'

describe "role_facilities/show" do
  before(:each) do
    @role_facility = assign(:role_facility, stub_model(RoleFacility,
      :rid => "Rid",
      :fid => "Fid",
      :pid => "Pid",
      :role_name => "Role Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rid/)
    rendered.should match(/Fid/)
    rendered.should match(/Pid/)
    rendered.should match(/Role Name/)
  end
end
