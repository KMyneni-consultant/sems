require 'spec_helper'

describe "practices/edit" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :pid => "MyString",
      :practice_name => "MyString"
    ))
  end

  it "renders the edit practice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", practice_path(@practice), "post" do
      assert_select "input#practice_pid[name=?]", "practice[pid]"
      assert_select "input#practice_practice_name[name=?]", "practice[practice_name]"
    end
  end
end
