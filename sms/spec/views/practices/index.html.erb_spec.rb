require 'spec_helper'

describe "practices/index" do
  before(:each) do
    assign(:practices, [
      stub_model(Practice,
        :pid => "Pid",
        :practice_name => "Practice Name"
      ),
      stub_model(Practice,
        :pid => "Pid",
        :practice_name => "Practice Name"
      )
    ])
  end

  it "renders a list of practices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pid".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Name".to_s, :count => 2
  end
end
