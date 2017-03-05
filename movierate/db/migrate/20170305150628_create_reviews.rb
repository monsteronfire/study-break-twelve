class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
    add_index :reviews, :user_id
  end
end
