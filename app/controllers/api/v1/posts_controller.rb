class Api::V1::PostsController < SecuredController
    skip_before_action :authorize_request, only: [:index, :show]

    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def create
        post = Post.new(post_params)
        # JsonWebToken.verify(bearer_token)
        !!bearer_token
        if post.save
            render json: post
        else
            render json: {errors: post.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
    end

    private

    def bearer_token
        header  = request.headers['Authorization']
        JsonWebToken.verify(header)
    end

    def photo
        if object.photo.attached?
          {
            url: rails_blob_url(object.photo),
            signed_id: object.photo.signed_id
          }
        end
    end

    def post_params
        params.permit(:title, :body, :image, :user_id, :nickname)
    end

end