class Api::V1::CommentsController < SecuredController
    skip_before_action :authorize_request, only: [:index]
    before_action :set_post
  
    def index
        comments = Comment.all
        render json: comments
    end

    # def show
    #     comment = Comment.find(params[:id])
    #     render json: comment
    # end

    def create
        comment = @post.comments.new(comment_params)
        if comment.save
            render json: @post
        else
            render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity
        end
    end

    # def destroy
    #     comment = Comment.find(params[:id])
    #     @post = Post.find(@comment.post_id)
        
    #    if comment.destroy
    #     render json: @post
    #    else 
    #     render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity
    #    end
    # end

    private

    def set_post
        @post = Post.find(params[:post_id])
    end

    def comment_params
        params.permit(:content, :post_id, :user_id)
    end

end