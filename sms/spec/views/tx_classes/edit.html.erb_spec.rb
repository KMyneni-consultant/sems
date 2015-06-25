require 'spec_helper'

describe "tx_classes/edit" do
  before(:each) do
    @tx_class = assign(:tx_class, stub_model(TxClass,
      :cid => "MyString",
      :class_name => "MyString",
      :fid => "MyString",
      :pid => "MyString"
    ))
  end

  it "renders the edit tx_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tx_class_path(@tx_class), "post" do
      assert_select "input#tx_class_cid[name=?]", "tx_class[cid]"
      assert_select "input#tx_class_class_name[name=?]", "tx_class[class_name]"
      assert_select "input#tx_class_fid[name=?]", "tx_class[fid]"
      assert_select "input#tx_class_pid[name=?]", "tx_class[pid]"
    end
  end
end
