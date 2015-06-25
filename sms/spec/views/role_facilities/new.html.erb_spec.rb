require 'spec_helper'

describe "role_facilities/new" do
  before(:each) do
    assign(:role_facility, stub_model(RoleFacility,
      :rid => "MyString",
      :fid => "MyString",
      :pid => "MyString",
      :role_name => "MyString"
    ).as_new_record)
  end

  it "renders new role_facility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", role_facilities_path, "post" do
      assert_select "input#role_facility_rid[name=?]", "role_facility[rid]"
      assert_select "input#role_facility_fid[name=?]", "role_facility[fid]"
      assert_select "input#role_facility_pid[name=?]", "role_facility[pid]"
      assert_select "input#role_facility_role_name[name=?]", "role_facility[role_name]"
    end
  end
end
