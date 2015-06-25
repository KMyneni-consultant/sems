require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :fname => "Fname",
      :mname => "Mname",
      :lname => "Lname",
      :address => "Address",
      :phno => "Phno",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fname/)
    rendered.should match(/Mname/)
    rendered.should match(/Lname/)
    rendered.should match(/Address/)
    rendered.should match(/Phno/)
    rendered.should match(/Email/)
  end
end
