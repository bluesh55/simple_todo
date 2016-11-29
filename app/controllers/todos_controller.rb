class TodosController < ApplicationController
  def index
    @todos = Core::FindTodo.find_all
  end

  def new
  end

  def create
    Core::CreateTodo.create(params[:content])
    redirect_to todos_path
  end

  def destroy
    Core::DestroyTodo.destroy(params[:id].to_i)
    redirect_to todos_path
  end
end
