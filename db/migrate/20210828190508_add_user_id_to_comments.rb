class AddUserIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :user, index: true
  end
end