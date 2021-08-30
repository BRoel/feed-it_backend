class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    # has_many :responses, class_name: 'Comment', foreign_key: 'parent_comment_id'
    # belongs_to :parent_comment, class_name: 'Comment', optional: true
end