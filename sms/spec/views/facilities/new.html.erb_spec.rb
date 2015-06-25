require 'spec_helper'

describe "facilities/new" do
  before(:each) do
    assign(:facility, stub_model(Facility,
      :fid => "MyString",
      :pid => "MyString",
      :facility_name => "MyString"
    ).as_new_record)
  end

  it "renders new facility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", facilities_path, "post" do
      assert_select "input#facility_fid[name=?]", "facility[fid]"
      assert_select "input#facility_pid[name=?]", "facility[pid]"
      assert_select "input#facility_facility_name[name=?]", "facility[facility_name]"
    end
  end
end
