require "spec_helper"

describe TxClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/tx_classes").should route_to("tx_classes#index")
    end

    it "routes to #new" do
      get("/tx_classes/new").should route_to("tx_classes#new")
    end

    it "routes to #show" do
      get("/tx_classes/1").should route_to("tx_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tx_classes/1/edit").should route_to("tx_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tx_classes").should route_to("tx_classes#create")
    end

    it "routes to #update" do
      put("/tx_classes/1").should route_to("tx_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tx_classes/1").should route_to("tx_classes#destroy", :id => "1")
    end

  end
end
