class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @link
    else
      render 'new'
    end
  end

  def destroy
    @comment.destroy
    redirect_to :back
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:link_id, :body, :user_id)
  end
end
