require 'spec_helper'

describe "RoleFacilities" do
  describe "GET /role_facilities" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get role_facilities_path
      response.status.should be(200)
    end
  end
end
