class TodoListItemFacade
  attr_reader :todo_list_item

  def initialize(todo_list_item)
    @todo_list_item = todo_list_item
  end

  def new_item
    @new_item = todo_list.items.new
  end
end
