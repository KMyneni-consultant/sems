require "spec_helper"

describe AtfscsController do
  describe "routing" do

    it "routes to #index" do
      get("/atfscs").should route_to("atfscs#index")
    end

    it "routes to #new" do
      get("/atfscs/new").should route_to("atfscs#new")
    end

    it "routes to #show" do
      get("/atfscs/1").should route_to("atfscs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/atfscs/1/edit").should route_to("atfscs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/atfscs").should route_to("atfscs#create")
    end

    it "routes to #update" do
      put("/atfscs/1").should route_to("atfscs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/atfscs/1").should route_to("atfscs#destroy", :id => "1")
    end

  end
end
