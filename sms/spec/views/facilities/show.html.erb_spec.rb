require 'spec_helper'

describe "facilities/show" do
  before(:each) do
    @facility = assign(:facility, stub_model(Facility,
      :fid => "Fid",
      :pid => "Pid",
      :facility_name => "Facility Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fid/)
    rendered.should match(/Pid/)
    rendered.should match(/Facility Name/)
  end
end
