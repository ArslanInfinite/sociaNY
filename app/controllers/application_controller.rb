class ApplicationController < ActionController::Base


  before_action :authorized
  helper_method :current_user, :logged_in?

  def current_user
    User.find_by({ id: session[:user_id] })
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def activity
    session[:activity] ||= []
  end


end
