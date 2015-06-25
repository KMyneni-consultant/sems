require 'spec_helper'

describe "menu_links/new" do
  before(:each) do
    assign(:menu_link, stub_model(MenuLink,
      :lid => "MyString",
      :linkname => "MyString",
      :bundle => "MyString"
    ).as_new_record)
  end

  it "renders new menu_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", menu_links_path, "post" do
      assert_select "input#menu_link_lid[name=?]", "menu_link[lid]"
      assert_select "input#menu_link_linkname[name=?]", "menu_link[linkname]"
      assert_select "input#menu_link_bundle[name=?]", "menu_link[bundle]"
    end
  end
end
