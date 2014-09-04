require 'rails_helper'

RSpec.describe TasksController, :type => :controller do
  describe "create new task" do
    it "should create a task" do
      expect {
        post :create, task: {name: "test", description: "test",
                          due_date: Time.now.to_date}
      }.to change(Task, :count)
    end

    it "should not create a task" do
      expect {
        post :create, task: {name: "", description: "",
              due_date: ""}
      }.to_not change(Task, :count)
    end
  end
end
