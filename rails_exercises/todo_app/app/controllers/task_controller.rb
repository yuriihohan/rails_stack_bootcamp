class TaskController < ApplicationController
  before_filter :set_task, only: [:edit, :delete_confirmation, :complete]

  # GET /tasks/list
  def list
    @tasks = Task.all
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit; end

  # GET /tasks/1/delete_confirmation
  def delete_confirmation; end

  # POST /tasks
  def save
    if params[:task][:id].nil? || params[:task][:id] == ''
      @task = Task.new(task_params)
    else
      @task = Task.find(params[:task][:id])
      @task.update_attributes(task_params)
    end

    if @task.save
      redirect_to action: 'list'
    else
      render :new
    end
  end

  # POST /tasks/1/complete
  def complete
    @task.completionDate = Date.today
    @task.save!

    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  # POST /tasks/1
  def delete
    Task.destroy(params[:task][:id])

    redirect_to action: 'list'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params[:task]
  end
end
