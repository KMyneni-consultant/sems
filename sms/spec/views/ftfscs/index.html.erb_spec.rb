require 'spec_helper'

describe "ftfscs/index" do
  before(:each) do
    assign(:ftfscs, [
      stub_model(Ftfsc,
        :ftfc_id => "Ftfc",
        :scid => "Scid",
        :description => "Description",
        :status => 1
      ),
      stub_model(Ftfsc,
        :ftfc_id => "Ftfc",
        :scid => "Scid",
        :description => "Description",
        :status => 1
      )
    ])
  end

  it "renders a list of ftfscs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ftfc".to_s, :count => 2
    assert_select "tr>td", :text => "Scid".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
