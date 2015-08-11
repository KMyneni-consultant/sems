require 'spec_helper'

describe "ftfscs/show" do
  before(:each) do
    @ftfsc = assign(:ftfsc, stub_model(Ftfsc,
      :ftfc_id => "Ftfc",
      :scid => "Scid",
      :description => "Description",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ftfc/)
    rendered.should match(/Scid/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
