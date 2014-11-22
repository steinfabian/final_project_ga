require "rails_helper"

RSpec.describe CustomisationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/customisations").to route_to("customisations#index")
    end

    it "routes to #new" do
      expect(:get => "/customisations/new").to route_to("customisations#new")
    end

    it "routes to #show" do
      expect(:get => "/customisations/1").to route_to("customisations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/customisations/1/edit").to route_to("customisations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/customisations").to route_to("customisations#create")
    end

    it "routes to #update" do
      expect(:put => "/customisations/1").to route_to("customisations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customisations/1").to route_to("customisations#destroy", :id => "1")
    end

  end
end
