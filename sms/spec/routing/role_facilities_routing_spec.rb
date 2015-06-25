require "spec_helper"

describe RoleFacilitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/role_facilities").should route_to("role_facilities#index")
    end

    it "routes to #new" do
      get("/role_facilities/new").should route_to("role_facilities#new")
    end

    it "routes to #show" do
      get("/role_facilities/1").should route_to("role_facilities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/role_facilities/1/edit").should route_to("role_facilities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/role_facilities").should route_to("role_facilities#create")
    end

    it "routes to #update" do
      put("/role_facilities/1").should route_to("role_facilities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/role_facilities/1").should route_to("role_facilities#destroy", :id => "1")
    end

  end
end
