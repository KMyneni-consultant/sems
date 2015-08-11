require 'spec_helper'

describe "ftfcs/show" do
  before(:each) do
    @ftfc = assign(:ftfc, stub_model(Ftfc,
      :cid => "Cid",
      :description => "Description",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cid/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
