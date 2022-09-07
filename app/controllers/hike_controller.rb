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
    @hike = Hike.new
  end
# Create 
  def create
    @hike = Hike.create(hike_params)
    # redirect on valid input of data to the DB
    if @hike.valid?
      redirect_to hikes_path
    else
      redirect_to new_hike_path
    end
  end

# private
  private
# strong params 
  def hike_params
    params.require(:hike).permit(:name, :description)
  end



end
