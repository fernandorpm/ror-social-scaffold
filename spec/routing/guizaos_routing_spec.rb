require "rails_helper"

RSpec.describe GuizaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/guizaos").to route_to("guizaos#index")
    end

    it "routes to #new" do
      expect(get: "/guizaos/new").to route_to("guizaos#new")
    end

    it "routes to #show" do
      expect(get: "/guizaos/1").to route_to("guizaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/guizaos/1/edit").to route_to("guizaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/guizaos").to route_to("guizaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/guizaos/1").to route_to("guizaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/guizaos/1").to route_to("guizaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/guizaos/1").to route_to("guizaos#destroy", id: "1")
    end
  end
end
