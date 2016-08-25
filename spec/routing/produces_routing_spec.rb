require "rails_helper"

RSpec.describe ProducesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/produces").to route_to("produces#index")
    end

    it "routes to #new" do
      expect(:get => "/produces/new").to route_to("produces#new")
    end

    it "routes to #show" do
      expect(:get => "/produces/1").to route_to("produces#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/produces/1/edit").to route_to("produces#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/produces").to route_to("produces#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/produces/1").to route_to("produces#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/produces/1").to route_to("produces#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/produces/1").to route_to("produces#destroy", :id => "1")
    end

  end
end
