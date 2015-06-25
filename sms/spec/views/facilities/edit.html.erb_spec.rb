require 'spec_helper'

describe "facilities/edit" do
  before(:each) do
    @facility = assign(:facility, stub_model(Facility,
      :fid => "MyString",
      :pid => "MyString",
      :facility_name => "MyString"
    ))
  end

  it "renders the edit facility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", facility_path(@facility), "post" do
      assert_select "input#facility_fid[name=?]", "facility[fid]"
      assert_select "input#facility_pid[name=?]", "facility[pid]"
      assert_select "input#facility_facility_name[name=?]", "facility[facility_name]"
    end
  end
end
