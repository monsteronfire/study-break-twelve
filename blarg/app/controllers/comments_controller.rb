class CommentsController < ApplicationController
  before_action :set_comment, only: [ :destroy ]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @post
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
    params.require(:comment).permit(:name, :body, :user_id, :post_id)
  end
end
