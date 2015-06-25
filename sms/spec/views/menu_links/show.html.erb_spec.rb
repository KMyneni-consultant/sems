require 'spec_helper'

describe "menu_links/show" do
  before(:each) do
    @menu_link = assign(:menu_link, stub_model(MenuLink,
      :lid => "Lid",
      :linkname => "Linkname",
      :bundle => "Bundle"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lid/)
    rendered.should match(/Linkname/)
    rendered.should match(/Bundle/)
  end
end
