require 'spec_helper'

describe "atfcs/edit" do
  before(:each) do
    @atfc = assign(:atfc, stub_model(Atfc,
      :cid => 1,
      :description => "MyString",
      :bundle => "MyString",
      :status => 1
    ))
  end

  it "renders the edit atfc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atfc_path(@atfc), "post" do
      assert_select "input#atfc_cid[name=?]", "atfc[cid]"
      assert_select "input#atfc_description[name=?]", "atfc[description]"
      assert_select "input#atfc_bundle[name=?]", "atfc[bundle]"
      assert_select "input#atfc_status[name=?]", "atfc[status]"
    end
  end
end
