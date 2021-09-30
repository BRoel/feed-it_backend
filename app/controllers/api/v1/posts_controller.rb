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
        post.destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :body, :image)
    end

end