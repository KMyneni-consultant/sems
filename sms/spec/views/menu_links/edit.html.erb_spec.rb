require 'spec_helper'

describe "menu_links/edit" do
  before(:each) do
    @menu_link = assign(:menu_link, stub_model(MenuLink,
      :lid => "MyString",
      :linkname => "MyString",
      :bundle => "MyString"
    ))
  end

  it "renders the edit menu_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", menu_link_path(@menu_link), "post" do
      assert_select "input#menu_link_lid[name=?]", "menu_link[lid]"
      assert_select "input#menu_link_linkname[name=?]", "menu_link[linkname]"
      assert_select "input#menu_link_bundle[name=?]", "menu_link[bundle]"
    end
  end
end
