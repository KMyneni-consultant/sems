require 'spec_helper'

describe "practices/show" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :pid => "Pid",
      :practice_name => "Practice Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pid/)
    rendered.should match(/Practice Name/)
  end
end
