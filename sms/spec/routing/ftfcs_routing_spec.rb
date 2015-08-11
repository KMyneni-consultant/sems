require "spec_helper"

describe FtfcsController do
  describe "routing" do

    it "routes to #index" do
      get("/ftfcs").should route_to("ftfcs#index")
    end

    it "routes to #new" do
      get("/ftfcs/new").should route_to("ftfcs#new")
    end

    it "routes to #show" do
      get("/ftfcs/1").should route_to("ftfcs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ftfcs/1/edit").should route_to("ftfcs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ftfcs").should route_to("ftfcs#create")
    end

    it "routes to #update" do
      put("/ftfcs/1").should route_to("ftfcs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ftfcs/1").should route_to("ftfcs#destroy", :id => "1")
    end

  end
end
