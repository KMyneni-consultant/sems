require 'spec_helper'

describe "tx_sections/new" do
  before(:each) do
    assign(:tx_section, stub_model(TxSection,
      :sid => "MyString",
      :section_name => "MyString",
      :fid => "MyString",
      :pid => "MyString"
    ).as_new_record)
  end

  it "renders new tx_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tx_sections_path, "post" do
      assert_select "input#tx_section_sid[name=?]", "tx_section[sid]"
      assert_select "input#tx_section_section_name[name=?]", "tx_section[section_name]"
      assert_select "input#tx_section_fid[name=?]", "tx_section[fid]"
      assert_select "input#tx_section_pid[name=?]", "tx_section[pid]"
    end
  end
end
