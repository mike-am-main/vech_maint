require "spec_helper"

describe VechiclesController do
  describe "routing" do

    it "routes to #index" do
      get("/vechicles").should route_to("vechicles#index")
    end

    it "routes to #new" do
      get("/vechicles/new").should route_to("vechicles#new")
    end

    it "routes to #show" do
      get("/vechicles/1").should route_to("vechicles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vechicles/1/edit").should route_to("vechicles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vechicles").should route_to("vechicles#create")
    end

    it "routes to #update" do
      put("/vechicles/1").should route_to("vechicles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vechicles/1").should route_to("vechicles#destroy", :id => "1")
    end

  end
end
