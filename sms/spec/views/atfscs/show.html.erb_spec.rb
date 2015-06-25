require 'spec_helper'

describe "atfscs/show" do
  before(:each) do
    @atfsc = assign(:atfsc, stub_model(Atfsc,
      :cid => 1,
      :scid => 2,
      :description => "Description",
      :bundle => "Bundle",
      :status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Description/)
    rendered.should match(/Bundle/)
    rendered.should match(/3/)
  end
end
