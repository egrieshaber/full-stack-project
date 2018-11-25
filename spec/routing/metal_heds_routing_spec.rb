require "rails_helper"

RSpec.describe MetalHedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/metal_heds").to route_to("metal_heds#index")
    end


    it "routes to #show" do
      expect(:get => "/metal_heds/1").to route_to("metal_heds#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/metal_heds").to route_to("metal_heds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/metal_heds/1").to route_to("metal_heds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/metal_heds/1").to route_to("metal_heds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/metal_heds/1").to route_to("metal_heds#destroy", :id => "1")
    end

  end
end
