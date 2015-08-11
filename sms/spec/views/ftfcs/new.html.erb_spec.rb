require 'spec_helper'

describe "ftfcs/new" do
  before(:each) do
    assign(:ftfc, stub_model(Ftfc,
      :cid => "MyString",
      :description => "MyString",
      :status => 1
    ).as_new_record)
  end

  it "renders new ftfc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ftfcs_path, "post" do
      assert_select "input#ftfc_cid[name=?]", "ftfc[cid]"
      assert_select "input#ftfc_description[name=?]", "ftfc[description]"
      assert_select "input#ftfc_status[name=?]", "ftfc[status]"
    end
  end
end
