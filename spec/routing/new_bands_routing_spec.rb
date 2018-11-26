require "rails_helper"

RSpec.describe NewBandsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/new_bands").to route_to("new_bands#index")
    end


    it "routes to #show" do
      expect(:get => "/new_bands/1").to route_to("new_bands#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/new_bands").to route_to("new_bands#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/new_bands/1").to route_to("new_bands#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/new_bands/1").to route_to("new_bands#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/new_bands/1").to route_to("new_bands#destroy", :id => "1")
    end

  end
end
