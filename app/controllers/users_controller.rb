class UsersController < ApplicationController
  def create
  	if params[:denied]
  	  alert: "Your log in was denied"
  	  redirect_to login_path
  	else
  	  if !(User.find_by(auth_hash.info.twitter))
  	  	@user = User.create_user

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
