require "spec_helper"

describe AtfcsController do
  describe "routing" do

    it "routes to #index" do
      get("/atfcs").should route_to("atfcs#index")
    end

    it "routes to #new" do
      get("/atfcs/new").should route_to("atfcs#new")
    end

    it "routes to #show" do
      get("/atfcs/1").should route_to("atfcs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/atfcs/1/edit").should route_to("atfcs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/atfcs").should route_to("atfcs#create")
    end

    it "routes to #update" do
      put("/atfcs/1").should route_to("atfcs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/atfcs/1").should route_to("atfcs#destroy", :id => "1")
    end

  end
end
