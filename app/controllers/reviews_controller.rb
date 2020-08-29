class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end
  def new
    @review = Review.new
  end
  def create
    @review = Review.new(review_params)
    binding.pry
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end
  def show
    @review = Review.find(params[:id])
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
  end

  private
  def review_params
    params.require(:review).permit(:title, :treatment_site, :date, :clinic, :docter, :price, :content, images: []).merge(user_id: current_user.id)
  end
end
