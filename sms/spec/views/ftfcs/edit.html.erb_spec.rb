require 'spec_helper'

describe "ftfcs/edit" do
  before(:each) do
    @ftfc = assign(:ftfc, stub_model(Ftfc,
      :cid => "MyString",
      :description => "MyString",
      :status => 1
    ))
  end

  it "renders the edit ftfc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ftfc_path(@ftfc), "post" do
      assert_select "input#ftfc_cid[name=?]", "ftfc[cid]"
      assert_select "input#ftfc_description[name=?]", "ftfc[description]"
      assert_select "input#ftfc_status[name=?]", "ftfc[status]"
    end
  end
end
