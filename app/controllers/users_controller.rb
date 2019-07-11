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
    redirect_to mainpage_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(wallet_amount: user_params[:wallet_amount].to_i + @user.wallet_amount)
    redirect_to user_path(@user)
  end

  def user_activities
    @user = User.find(params[:id])
    @activities = @user.activities
  end

  def welcome
    render "/welcome"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Your user account has been deleted."
    redirect_to welcome_path
  end

  private


  def user_params
    params.require(:user).permit(:username, :password, :wallet_amount)
  end




end
