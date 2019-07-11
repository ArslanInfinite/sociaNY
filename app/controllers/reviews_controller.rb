class ReviewsController < ApplicationController
  def show
    
    @reviews = Review.all.select {|r| r.activity.id = params[:id]}

  end

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    params[:review][:user_id]= session[:user_id]
    params[:review][:activity_id] = params[:review][:activity_id].to_i
    @review = Review.create(review_params)
    # flash[:notice] = "Thanks for leaving a review!!"
    redirect_to mainpage_path
  end

private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :activity_id)
  end
end
