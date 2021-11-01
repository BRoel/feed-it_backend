class Post < ApplicationRecord
    validates_presence_of :title, :body, :user_id
    has_one_attached :photo, dependent: :destroy
    has_many :comments, dependent: :destroy
end