class TodoItemsController < ApplicationController
  before_action :set_todo_item, except: [ :create ]
  before_action :set_todo_list

  def create
    @todo_item = @todo_list.todo_items.create(todo_item_params)
    redirect_to @todo_list
  end

  def destroy
    @todo_item.destroy
    redirect_to todo_lists_path
  end

  def complete
    @todo_item.update_attribute(:completed_at, Time.now)
    redirect_to @todo_list
  end

  private

  def set_todo_item
    @todo_item = @todo_list.todo_items.find(params[:id])
  end

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def todo_item_params
    params.require(:todo_item).permit(:id, :content)
  end
end
