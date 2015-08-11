require 'spec_helper'

describe "ftfscs/new" do
  before(:each) do
    assign(:ftfsc, stub_model(Ftfsc,
      :ftfc_id => "MyString",
      :scid => "MyString",
      :description => "MyString",
      :status => 1
    ).as_new_record)
  end

  it "renders new ftfsc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ftfscs_path, "post" do
      assert_select "input#ftfsc_ftfc_id[name=?]", "ftfsc[ftfc_id]"
      assert_select "input#ftfsc_scid[name=?]", "ftfsc[scid]"
      assert_select "input#ftfsc_description[name=?]", "ftfsc[description]"
      assert_select "input#ftfsc_status[name=?]", "ftfsc[status]"
    end
  end
end
