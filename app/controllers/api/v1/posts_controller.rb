class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.new(post_params)
        if post.save
            render json: post
        else
            render json: {errors: post.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    # def destroy
    #     post = Post.find(params[:id])
    #     post.destroy
    # end

    private

    def post_params
        params.require(:post).permit(:title, :body, :image)
    end

end