require 'spec_helper'

describe AdminController do

  describe "GET 'links'" do
    it "returns http success" do
      get 'links'
      response.should be_success
    end
  end

end
