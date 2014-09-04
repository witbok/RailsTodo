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
      redirect_to tasks_path, flash: {success: "Successfully created task"}
    else
      redirect_to new_task_path, flash: {danger: "Could not save task"}
    end
  end

  private
    def task_params
      params.require(:task).permit(:name, :description, :due_date)
    end
end
