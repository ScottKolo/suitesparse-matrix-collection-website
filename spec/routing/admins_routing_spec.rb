require "rails_helper"

RSpec.describe AdminsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admins").to route_to("admins#index")
    end

    it "routes to #new" do
      expect(:get => "/admins/new").to route_to("admins#new")
    end

    it "routes to #show" do
      expect(:get => "/admins/1").to route_to("admins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admins/1/edit").to route_to("admins#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admins").to route_to("admins#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admins/1").to route_to("admins#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admins/1").to route_to("admins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admins/1").to route_to("admins#destroy", :id => "1")
    end

  end
end
