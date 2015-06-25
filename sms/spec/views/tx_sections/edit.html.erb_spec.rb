require 'spec_helper'

describe "tx_sections/edit" do
  before(:each) do
    @tx_section = assign(:tx_section, stub_model(TxSection,
      :sid => "MyString",
      :section_name => "MyString",
      :fid => "MyString",
      :pid => "MyString"
    ))
  end

  it "renders the edit tx_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tx_section_path(@tx_section), "post" do
      assert_select "input#tx_section_sid[name=?]", "tx_section[sid]"
      assert_select "input#tx_section_section_name[name=?]", "tx_section[section_name]"
      assert_select "input#tx_section_fid[name=?]", "tx_section[fid]"
      assert_select "input#tx_section_pid[name=?]", "tx_section[pid]"
    end
  end
end
