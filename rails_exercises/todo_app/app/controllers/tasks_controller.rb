class TasksController < ApplicationController
  before_filter :set_task, only: [:delete_confirmation, :complete]

  # GET /task/list
  def list
    @tasks = Task.all
  end

  # GET /task/new
  def new
    @task = Task.new
  end

  # GET /task/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to action: 'list'
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)

    if @task.save
      redirect_to action: 'list'
    else
      render :new
    end
  end

  # GET /task/delete_confirmation/?id=:id
  def delete_confirmation; end

  # POST /task/complete/?id=:id
  def complete
    @task.completion_date = Date.today
    @task.save!

    render nothing: true, status: 200, content_type: 'text/html'
  end

  # POST /task/1/delete
  def destroy
    Task.destroy(params[:id])

    redirect_to action: 'list'
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def task_params
    params[:task]
  end
end
