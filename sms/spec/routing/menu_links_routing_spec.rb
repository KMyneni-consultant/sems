require "spec_helper"

describe MenuLinksController do
  describe "routing" do

    it "routes to #index" do
      get("/menu_links").should route_to("menu_links#index")
    end

    it "routes to #new" do
      get("/menu_links/new").should route_to("menu_links#new")
    end

    it "routes to #show" do
      get("/menu_links/1").should route_to("menu_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/menu_links/1/edit").should route_to("menu_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/menu_links").should route_to("menu_links#create")
    end

    it "routes to #update" do
      put("/menu_links/1").should route_to("menu_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/menu_links/1").should route_to("menu_links#destroy", :id => "1")
    end

  end
end
