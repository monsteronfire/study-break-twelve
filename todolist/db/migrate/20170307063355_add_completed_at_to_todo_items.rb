class AddCompletedAtToTodoItems < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_items, :completed_at, :daatetime
  end
end
