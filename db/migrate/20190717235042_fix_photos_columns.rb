class FixPhotosColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :message
    add_column :photos, :caption, :text
  end
end
