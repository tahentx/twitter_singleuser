class UsersController < ApplicationController
  def create
  	if params[:denied]
  	  alert: "Your log in was denied"
  	  redirect_to login_path
  	else
  	  if !(User.find_by(auth_hash.info.nickname))
  	  	@user = User.create_user(auth_hash)
  	  else
  	  	@user = User.find_by(auth_hash.info.nickname)
  	  end
  	  session[:user_id] = @user.id
  	  redirect_to tweets_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
