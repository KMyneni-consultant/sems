require 'spec_helper'

describe "menu_links/index" do
  before(:each) do
    assign(:menu_links, [
      stub_model(MenuLink,
        :lid => "Lid",
        :linkname => "Linkname",
        :bundle => "Bundle"
      ),
      stub_model(MenuLink,
        :lid => "Lid",
        :linkname => "Linkname",
        :bundle => "Bundle"
      )
    ])
  end

  it "renders a list of menu_links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lid".to_s, :count => 2
    assert_select "tr>td", :text => "Linkname".to_s, :count => 2
    assert_select "tr>td", :text => "Bundle".to_s, :count => 2
  end
end
