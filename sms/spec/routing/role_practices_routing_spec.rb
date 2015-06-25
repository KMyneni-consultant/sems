require "spec_helper"

describe RolePracticesController do
  describe "routing" do

    it "routes to #index" do
      get("/role_practices").should route_to("role_practices#index")
    end

    it "routes to #new" do
      get("/role_practices/new").should route_to("role_practices#new")
    end

    it "routes to #show" do
      get("/role_practices/1").should route_to("role_practices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/role_practices/1/edit").should route_to("role_practices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/role_practices").should route_to("role_practices#create")
    end

    it "routes to #update" do
      put("/role_practices/1").should route_to("role_practices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/role_practices/1").should route_to("role_practices#destroy", :id => "1")
    end

  end
end
