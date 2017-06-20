class SessionsController < ApplicationController
 def create
 end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, alert: "You have logged out."
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
