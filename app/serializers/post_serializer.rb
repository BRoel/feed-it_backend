class PostSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
    attributes :id, :title, :body, :image, :user_id, :nickname, :photo
    # attribute :image_url do |post| 
    #     Rails.application.routes.url_helpers.rails_blob_path(post.image) if post.image.attached?
    # end
    
    # belongs_to :user
    has_many :comments
end