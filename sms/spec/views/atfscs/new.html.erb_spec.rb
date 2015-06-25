require 'spec_helper'

describe "atfscs/new" do
  before(:each) do
    assign(:atfsc, stub_model(Atfsc,
      :cid => 1,
      :scid => 1,
      :description => "MyString",
      :bundle => "MyString",
      :status => 1
    ).as_new_record)
  end

  it "renders new atfsc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atfscs_path, "post" do
      assert_select "input#atfsc_cid[name=?]", "atfsc[cid]"
      assert_select "input#atfsc_scid[name=?]", "atfsc[scid]"
      assert_select "input#atfsc_description[name=?]", "atfsc[description]"
      assert_select "input#atfsc_bundle[name=?]", "atfsc[bundle]"
      assert_select "input#atfsc_status[name=?]", "atfsc[status]"
    end
  end
end
