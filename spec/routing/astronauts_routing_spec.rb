require "rails_helper"

RSpec.describe AstronautsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/astronauts").to route_to("astronauts#index")
    end

    it "routes to #new" do
      expect(:get => "/astronauts/new").to route_to("astronauts#new")
    end

    it "routes to #show" do
      expect(:get => "/astronauts/1").to route_to("astronauts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/astronauts/1/edit").to route_to("astronauts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/astronauts").to route_to("astronauts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/astronauts/1").to route_to("astronauts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/astronauts/1").to route_to("astronauts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/astronauts/1").to route_to("astronauts#destroy", :id => "1")
    end

  end
end
