require 'spec_helper'

describe "atfcs/index" do
  before(:each) do
    assign(:atfcs, [
      stub_model(Atfc,
        :cid => 1,
        :description => "Description",
        :bundle => "Bundle",
        :status => 2
      ),
      stub_model(Atfc,
        :cid => 1,
        :description => "Description",
        :bundle => "Bundle",
        :status => 2
      )
    ])
  end

  it "renders a list of atfcs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Bundle".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
