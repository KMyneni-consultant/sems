require 'spec_helper'

describe "tx_sections/show" do
  before(:each) do
    @tx_section = assign(:tx_section, stub_model(TxSection,
      :sid => "Sid",
      :section_name => "Section Name",
      :fid => "Fid",
      :pid => "Pid"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sid/)
    rendered.should match(/Section Name/)
    rendered.should match(/Fid/)
    rendered.should match(/Pid/)
  end
end
