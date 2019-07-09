class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

    def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to activities_path
  end

  def show
    @user = User.find(params[:id])
  end

  def add_funds
    @user = User.find(@session.id)
    @user.update(wallet_amount: params[:wallet_amount])

  end

  def user_activities
    @user = User.find(params[:id])
    @activities = @user.activities
  end

  private


  def user_params
    params.require(:user).permit(:username, :password, :wallet_amount)
  end




end
