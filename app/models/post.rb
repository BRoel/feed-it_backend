class Post < ApplicationRecord
    validates_presence_of :title, :body, :user_id
    # belongs_to :user
    has_many :comments, dependent: :destroy
#     has_one_attached :image, :dependent => :destroy
end