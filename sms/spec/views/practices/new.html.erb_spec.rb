require 'spec_helper'

describe "practices/new" do
  before(:each) do
    assign(:practice, stub_model(Practice,
      :pid => "MyString",
      :practice_name => "MyString"
    ).as_new_record)
  end

  it "renders new practice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", practices_path, "post" do
      assert_select "input#practice_pid[name=?]", "practice[pid]"
      assert_select "input#practice_practice_name[name=?]", "practice[practice_name]"
    end
  end
end
