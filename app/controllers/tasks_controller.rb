class TasksController < ApplicationController
  def index
    @tasks = Task.order("due_date ASC").all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to list_path(@task.listid), flash: {success: "Success: New task was saved!"}
    else
      redirect_to new_task_path, flash: {danger: "Error: Could not save task"}
    end
  end

  private
    def task_params
      params.require(:task).permit(:name, :description, :due_date, :listid)
    end
end
