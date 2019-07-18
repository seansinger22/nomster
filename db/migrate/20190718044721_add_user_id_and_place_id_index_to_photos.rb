class AddUserIdAndPlaceIdIndexToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_index :photos, [:user_id, :place_id]
  end
end
