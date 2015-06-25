require 'spec_helper'

describe "role_facilities/edit" do
  before(:each) do
    @role_facility = assign(:role_facility, stub_model(RoleFacility,
      :rid => "MyString",
      :fid => "MyString",
      :pid => "MyString",
      :role_name => "MyString"
    ))
  end

  it "renders the edit role_facility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", role_facility_path(@role_facility), "post" do
      assert_select "input#role_facility_rid[name=?]", "role_facility[rid]"
      assert_select "input#role_facility_fid[name=?]", "role_facility[fid]"
      assert_select "input#role_facility_pid[name=?]", "role_facility[pid]"
      assert_select "input#role_facility_role_name[name=?]", "role_facility[role_name]"
    end
  end
end
