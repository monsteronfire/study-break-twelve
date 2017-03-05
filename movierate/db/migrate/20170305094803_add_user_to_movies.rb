class AddUserToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :user_id, :integer
    add_index :movies, :user_id
  end
end
