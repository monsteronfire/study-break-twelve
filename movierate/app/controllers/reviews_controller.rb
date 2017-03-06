class ReviewsController < ApplicationController
  before_action :set_review, only: [ :destroy ]

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def destroy
    @review.destroy
    redirect_to movies_path
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:star_rating, :comment, :user_id, :movie_id)
  end
end
