require 'spec_helper'

describe "menus/index" do
  before(:each) do
    assign(:menus, [
      stub_model(Menu,
        :mid => "Mid",
        :menuname => "Menuname",
        :bundle => "Bundle"
      ),
      stub_model(Menu,
        :mid => "Mid",
        :menuname => "Menuname",
        :bundle => "Bundle"
      )
    ])
  end

  it "renders a list of menus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mid".to_s, :count => 2
    assert_select "tr>td", :text => "Menuname".to_s, :count => 2
    assert_select "tr>td", :text => "Bundle".to_s, :count => 2
  end
end
