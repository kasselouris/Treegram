require "rails_helper"

RSpec.describe FollowsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/follows").to route_to("follows#index")
    end

    it "routes to #new" do
      expect(:get => "/follows/new").to route_to("follows#new")
    end

    it "routes to #show" do
      expect(:get => "/follows/1").to route_to("follows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/follows/1/edit").to route_to("follows#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/follows").to route_to("follows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/follows/1").to route_to("follows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/follows/1").to route_to("follows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/follows/1").to route_to("follows#destroy", :id => "1")
    end
  end
end
