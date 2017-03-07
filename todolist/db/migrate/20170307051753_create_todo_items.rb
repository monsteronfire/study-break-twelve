class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.integer :todo_list_id

      t.timestamps
    end
    add_index :todo_items, :todo_list_id
  end
end
