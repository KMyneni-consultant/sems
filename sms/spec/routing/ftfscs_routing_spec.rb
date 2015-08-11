require "spec_helper"

describe FtfscsController do
  describe "routing" do

    it "routes to #index" do
      get("/ftfscs").should route_to("ftfscs#index")
    end

    it "routes to #new" do
      get("/ftfscs/new").should route_to("ftfscs#new")
    end

    it "routes to #show" do
      get("/ftfscs/1").should route_to("ftfscs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ftfscs/1/edit").should route_to("ftfscs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ftfscs").should route_to("ftfscs#create")
    end

    it "routes to #update" do
      put("/ftfscs/1").should route_to("ftfscs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ftfscs/1").should route_to("ftfscs#destroy", :id => "1")
    end

  end
end
