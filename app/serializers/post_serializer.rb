class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :body, :image
    # attribute :image_url do |post| 
    #     Rails.application.routes.url_helpers.rails_blob_path(post.image) if post.image.attached?
    # end
    
    # belongs_to :user
    has_many :comments
end