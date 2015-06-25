require 'spec_helper'

describe "atfcs/show" do
  before(:each) do
    @atfc = assign(:atfc, stub_model(Atfc,
      :cid => 1,
      :description => "Description",
      :bundle => "Bundle",
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Description/)
    rendered.should match(/Bundle/)
    rendered.should match(/2/)
  end
end
