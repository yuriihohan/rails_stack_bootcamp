class TaskController < ApplicationController
  before_filter :set_task, only: [:edit, :update, :delete_confirmation]
  
  # GET /tasks/list
  def list
    @tasks = Task.all
  end

  # GET /tasks/new
  def new
    @todo_list = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(params[:task])

    if @task.save
      redirect_to action: 'list', notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PUT /tasks/1
  def update
  end
  
  # GET /tasks/1/delete_confirmation
  def delete_confirmation
  end

  # DELETE /tasks/1
  def delete
    Task.destroy(params[:task][:id])
    
    redirect_to action: 'list', notice: 'Task was successfully created.'
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :note)
    end
end
