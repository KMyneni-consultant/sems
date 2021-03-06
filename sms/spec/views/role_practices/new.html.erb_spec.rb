require 'spec_helper'

describe "role_practices/new" do
  before(:each) do
    assign(:role_practice, stub_model(RolePractice,
      :rid => "MyString",
      :pid => "MyString",
      :role_name => "MyString"
    ).as_new_record)
  end

  it "renders new role_practice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", role_practices_path, "post" do
      assert_select "input#role_practice_rid[name=?]", "role_practice[rid]"
      assert_select "input#role_practice_pid[name=?]", "role_practice[pid]"
      assert_select "input#role_practice_role_name[name=?]", "role_practice[role_name]"
    end
  end
end
