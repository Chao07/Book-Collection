require "rails_helper"

RSpec.describe UserCollectionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_collections").to route_to("user_collections#index")
    end

    it "routes to #new" do
      expect(get: "/user_collections/new").to route_to("user_collections#new")
    end

    it "routes to #show" do
      expect(get: "/user_collections/1").to route_to("user_collections#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_collections/1/edit").to route_to("user_collections#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_collections").to route_to("user_collections#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_collections/1").to route_to("user_collections#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_collections/1").to route_to("user_collections#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_collections/1").to route_to("user_collections#destroy", id: "1")
    end
  end
end
