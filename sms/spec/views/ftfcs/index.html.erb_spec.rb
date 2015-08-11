require 'spec_helper'

describe "ftfcs/index" do
  before(:each) do
    assign(:ftfcs, [
      stub_model(Ftfc,
        :cid => "Cid",
        :description => "Description",
        :status => 1
      ),
      stub_model(Ftfc,
        :cid => "Cid",
        :description => "Description",
        :status => 1
      )
    ])
  end

  it "renders a list of ftfcs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cid".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
