class CitiesController < ApplicationController
  def index
  	@cities = City.all
  	
  	respond_to do |f| 
  	f.html {render :index}
  	f.json {render :json => @city}
 	  end

  end

  def show
  	@city = City.friendly.find(params[:id])
  	
  	respond_to do |f| 
  	f.html {render :show}
  	f.json {render :json => @city}
 	  end
  end

  def tag_cloud
    @tags = Post.tag_counts_on(:tags)
  end
  	
end
