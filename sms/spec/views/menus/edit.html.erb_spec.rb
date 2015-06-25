require 'spec_helper'

describe "menus/edit" do
  before(:each) do
    @menu = assign(:menu, stub_model(Menu,
      :mid => "MyString",
      :menuname => "MyString",
      :bundle => "MyString"
    ))
  end

  it "renders the edit menu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do
      assert_select "input#menu_mid[name=?]", "menu[mid]"
      assert_select "input#menu_menuname[name=?]", "menu[menuname]"
      assert_select "input#menu_bundle[name=?]", "menu[bundle]"
    end
  end
end
