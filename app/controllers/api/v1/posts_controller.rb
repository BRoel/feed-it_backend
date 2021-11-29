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
        if post.save
            render json: post
        else
            render json: {errors: post.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        post = Post.find(params[:id])
        # debugger
        if post.user_id === AuthorizationService.new(request.headers).authenticate_request![0]["sub"]
            post.destroy
        else
            render json: {errors: post.errors.full_messages}, status: :unprocessible_entity
        end
        head :no_content
    end

    private

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