require 'spec_helper'

describe "atfscs/index" do
  before(:each) do
    assign(:atfscs, [
      stub_model(Atfsc,
        :cid => 1,
        :scid => 2,
        :description => "Description",
        :bundle => "Bundle",
        :status => 3
      ),
      stub_model(Atfsc,
        :cid => 1,
        :scid => 2,
        :description => "Description",
        :bundle => "Bundle",
        :status => 3
      )
    ])
  end

  it "renders a list of atfscs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Bundle".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
