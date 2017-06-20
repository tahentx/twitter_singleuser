class SessionsController < ApplicationController

 def create
	if params[:denied]
		redirect_to root_path
	else
		if !(User.find_by(username: auth_hash.info.email))
		@user = User.create_user(auth_hash)
	else
		@user = User.find_by(username: auth_hash.info.email)
	end
	session[:user_id] = @user.id
    redirect_to tweets_path
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
