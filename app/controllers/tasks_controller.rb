class TasksController < ApplicationController
  def index
    @tasks = Task.all

    if params[:id].present?
      @task = Task.find(params[:id])
    else
       @task = Task.new
    end
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      redirect_to root_path
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params)
    if @task.save
      redirect_to root_path
    end
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :body, :start_date, :end_date)
  end
end
