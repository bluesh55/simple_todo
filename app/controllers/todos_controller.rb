class TodosController < ApplicationController
  def index
    @todos = FindTodo.find_all
  end

  def new
  end

  def create
    CreateTodo.create(params[:content])
    redirect_to todos_path
  end
end
