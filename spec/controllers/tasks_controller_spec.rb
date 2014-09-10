require 'rails_helper'

RSpec.describe TasksController, :type => :controller do
  describe "create new task" do
    it "should create a task" do
      expect {
        post :create, task: {name: "test", description: "test",
                          due_date: Time.now.to_date, listid: 1}
      }.to change(Task, :count)
    end

    it "should not create a task" do
      expect {
        post :create, task: {name: "", description: "",
              due_date: "", listid: ""}
      }.to_not change(Task, :count)
    end
  end
end
