class TweetsController < ApplicationController
	def index
		@tweets = Tweet.all
		@tweet = Tweet.new
	end

	def new 
	end
	
	def create
		@tweet = Tweet.new(tweet_params)
		if @tweet.save
			redirect_to root_path
		else
			@tweets = Tweet.all
			render 'index'
		end
	end

	def edit
		@tweet = Tweet.find_by(uuid: params[:id])
	end

	def update
		@tweet = Tweet.find(params[:id])
	    if @tweet.update_attributes(tweet_params)
	      redirect_to root_path
	    else
	      render 'index'
	    end
	end

	def destroy
	end
	
	private
	def tweet_params
		params.require(:tweet).permit(:status)
    end
end
