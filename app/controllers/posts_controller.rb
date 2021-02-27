class PostsController < ApplicationController
    
    def index
        @posts = Post.all
        render json: @posts
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            render json: PostSerializer.new(post), status: :accepted #sending status codes and accepting or rejecting
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
        params.require(:post).permit(:title, :body)
    end

end