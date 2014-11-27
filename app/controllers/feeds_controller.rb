class FeedsController < ApplicationController
  def new
  	@feed = Feed.new
  end

  def show
  	@feed = Feed.find(params[:id])
  end

  def create
  	@feed = Feed.new(feed_params)
  	if @feed.save
  		flash[:success] = "Feed added!"
  		redirect_to @feed
  	else
  		render 'new'
  	end
  end


  private

    def feed_params
      params.require(:feed).permit(:name, :uri)
    end
end
