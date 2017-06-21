class SessionsController < ApplicationController
 def create
 	if current_user
 		redirect_to new_tweet_path
 	end
 end

  def failure
	redirect_to root_path, alert: "Your log in was denied"
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, alert: "You have logged out."
  end
end
