require 'rails_helper'

RSpec.describe ListsController, :type => :controller do
  describe "create new list" do
    it "should create a list" do
      expect {
        post :create, list: {name: "test", description: "test"}
      }.to change(List, :count)
    end

    it "should not create a list" do
      expect {
        post :create, list: {name: "", description: ""}
      }.to_not change(List, :count)
    end
  end
end