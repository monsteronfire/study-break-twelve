class AddPhotoToLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :photo, :string
  end
end
