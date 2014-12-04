require "rails_helper"

RSpec.describe LiquorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/liquors").to route_to("liquors#index")
    end

    it "routes to #new" do
      expect(:get => "/liquors/new").to route_to("liquors#new")
    end

    it "routes to #show" do
      expect(:get => "/liquors/1").to route_to("liquors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/liquors/1/edit").to route_to("liquors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/liquors").to route_to("liquors#create")
    end

    it "routes to #update" do
      expect(:put => "/liquors/1").to route_to("liquors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/liquors/1").to route_to("liquors#destroy", :id => "1")
    end

  end
end
