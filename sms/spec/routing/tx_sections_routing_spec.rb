require "spec_helper"

describe TxSectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/tx_sections").should route_to("tx_sections#index")
    end

    it "routes to #new" do
      get("/tx_sections/new").should route_to("tx_sections#new")
    end

    it "routes to #show" do
      get("/tx_sections/1").should route_to("tx_sections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tx_sections/1/edit").should route_to("tx_sections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tx_sections").should route_to("tx_sections#create")
    end

    it "routes to #update" do
      put("/tx_sections/1").should route_to("tx_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tx_sections/1").should route_to("tx_sections#destroy", :id => "1")
    end

  end
end
