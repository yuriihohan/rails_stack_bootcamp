class TaskController < ApplicationController
  
  before_filter :set_todo_list, only: [:edit, :update, :destroy]
  
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

  # DELETE /tasks/1
  def delete
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      puts params
      params.require(:task).permit(:title, :note)
    end
end
