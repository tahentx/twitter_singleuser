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

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end
	
	private
	def tweet_params
		params.require(:tweet).permit(:status)
    end
end
