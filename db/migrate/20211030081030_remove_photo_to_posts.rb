class RemovePhotoToPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :photo, :attachment
  end
end
