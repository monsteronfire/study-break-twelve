class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
    add_index :pins, :user_id
  end
end
