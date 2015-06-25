require 'spec_helper'

describe "atfscs/edit" do
  before(:each) do
    @atfsc = assign(:atfsc, stub_model(Atfsc,
      :cid => 1,
      :scid => 1,
      :description => "MyString",
      :bundle => "MyString",
      :status => 1
    ))
  end

  it "renders the edit atfsc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atfsc_path(@atfsc), "post" do
      assert_select "input#atfsc_cid[name=?]", "atfsc[cid]"
      assert_select "input#atfsc_scid[name=?]", "atfsc[scid]"
      assert_select "input#atfsc_description[name=?]", "atfsc[description]"
      assert_select "input#atfsc_bundle[name=?]", "atfsc[bundle]"
      assert_select "input#atfsc_status[name=?]", "atfsc[status]"
    end
  end
end
