class ReviewsController < ApplicationController
  def show

    @reviews = Review.all.select {|r| r.activity.id = params[:id]}

  end

  def index
    @reviews = Review.all
  end

  def new

    @activity = User.find(session[:user_id]).activities.ids

    # @activity = User.find(session[:user]).activities
    @review = Review.new
  end

  def create


    Review.create(review_params)
    # flash[:notice] = "Thanks for leaving a review!!"
    redirect_to mainpage_path
  end

private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :activity_id)
  end
end
