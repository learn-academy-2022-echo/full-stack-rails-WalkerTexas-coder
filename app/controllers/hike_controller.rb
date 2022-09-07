class HikeController < ApplicationController
# Index
  def index
    @hikes = Hike.all
  end
# Show
  def show
    @hike = Hike.find(params[:id])
  end
# New
  def new
  end
# Create 
  def create
    @hike = Hike.create(
      name:params[:name], 
      description:params[:description]
    )
  end
end
