require 'spec_helper'

describe "atfcs/new" do
  before(:each) do
    assign(:atfc, stub_model(Atfc,
      :cid => 1,
      :description => "MyString",
      :bundle => "MyString",
      :status => 1
    ).as_new_record)
  end

  it "renders new atfc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atfcs_path, "post" do
      assert_select "input#atfc_cid[name=?]", "atfc[cid]"
      assert_select "input#atfc_description[name=?]", "atfc[description]"
      assert_select "input#atfc_bundle[name=?]", "atfc[bundle]"
      assert_select "input#atfc_status[name=?]", "atfc[status]"
    end
  end
end
