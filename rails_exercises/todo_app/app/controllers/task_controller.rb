class TaskController < ApplicationController
  def list
    @tasks = Task.all
  end

  def create
  end

  def edit
  end

  def delete
  end
end
