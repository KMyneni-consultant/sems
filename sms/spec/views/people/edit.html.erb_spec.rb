require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :fname => "MyString",
      :mname => "MyString",
      :lname => "MyString",
      :address => "MyString",
      :phno => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", person_path(@person), "post" do
      assert_select "input#person_fname[name=?]", "person[fname]"
      assert_select "input#person_mname[name=?]", "person[mname]"
      assert_select "input#person_lname[name=?]", "person[lname]"
      assert_select "input#person_address[name=?]", "person[address]"
      assert_select "input#person_phno[name=?]", "person[phno]"
      assert_select "input#person_email[name=?]", "person[email]"
    end
  end
end
