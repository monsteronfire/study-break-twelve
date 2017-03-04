class AddPhotoToPins < ActiveRecord::Migration[5.0]
  def change
    add_column :pins, :photo, :string
  end
end
