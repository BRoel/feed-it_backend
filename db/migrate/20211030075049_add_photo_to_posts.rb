class AddPhotoToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :photo, :attachment
  end
end
