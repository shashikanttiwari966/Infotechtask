class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = current_user.comments.build
  end

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to root_path
    end
  end

  def comment_params
    params.permit(:user_id, :post_id, :comment)
  end
end
