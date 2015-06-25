require 'spec_helper'

describe "roles/new" do
  before(:each) do
    assign(:role, stub_model(Role,
      :rid => "MyString",
      :role_name => "MyString"
    ).as_new_record)
  end

  it "renders new role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", roles_path, "post" do
      assert_select "input#role_rid[name=?]", "role[rid]"
      assert_select "input#role_role_name[name=?]", "role[role_name]"
    end
  end
end