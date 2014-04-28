require "spec_helper"

describe LendeesController do
  describe "routing" do

    it "routes to #index" do
      get("/lendees").should route_to("lendees#index")
    end

    it "routes to #new" do
      get("/lendees/new").should route_to("lendees#new")
    end

    it "routes to #show" do
      get("/lendees/1").should route_to("lendees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lendees/1/edit").should route_to("lendees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lendees").should route_to("lendees#create")
    end

    it "routes to #update" do
      put("/lendees/1").should route_to("lendees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lendees/1").should route_to("lendees#destroy", :id => "1")
    end

  end
end
