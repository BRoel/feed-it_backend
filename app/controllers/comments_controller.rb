class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
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