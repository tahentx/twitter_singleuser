class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user


  def authenticate_user
  	if !current_user
  		redirect_to login_path
  	end
  end

  private
  def current_user
    @current_user ||= (User.find(session[:user_id]) if session[:user_id])
  end


end
