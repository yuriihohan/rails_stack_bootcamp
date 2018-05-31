class TaskController < ApplicationController
  before_filter :set_task, only: [:edit, :delete_confirmation]
  
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

  # GET /tasks/1/delete_confirmation
  def delete_confirmation
  end

  # POST /tasks
  def save
    if params[:task][:id].nil? || params[:task][:id] == ''
      task = Task.new(params[:task])
    else
      task = Task.find(params[:task][:id])
      task.update_attributes(params[:task])
    end

    if task.save
      redirect_to action: 'list', notice: 'Task was successfully created.'
    else
      render :new
    end
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
