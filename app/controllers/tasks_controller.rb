class TasksController < ApplicationController
  def create
    @task = Task.new
    @task.save
  end

  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end
