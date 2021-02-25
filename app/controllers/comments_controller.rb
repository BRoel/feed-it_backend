class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: CommentSerializer.new(comment), status: :accepted #sending status codes and accepting or rejecting
        else
            render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

end