require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :fname => "Fname",
        :mname => "Mname",
        :lname => "Lname",
        :address => "Address",
        :phno => "Phno",
        :email => "Email"
      ),
      stub_model(Person,
        :fname => "Fname",
        :mname => "Mname",
        :lname => "Lname",
        :address => "Address",
        :phno => "Phno",
        :email => "Email"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Mname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phno".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
