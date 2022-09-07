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

# Edit
  def edit
    @hike = Hike.find(params[:id])
  end

# Update
  def update
    # pull out an instance from the database
    @hike = Hike.find(params[:id])
    # overwrite the instance in the database
    @hike.update(hike_params)

    # check if the overwrite was valid and updated
    if @hike.valid?
      redirect_to hike_path(@hike)
    else
      redirect_to edit_hike_path(@hike)
    end
  end

  def destroy
    @hike = Hike.find(params[:id])
   if @hike.destroy
    redirect_to hikes_path
   end
  end

# private
  private
# strong params 
  def hike_params
    params.require(:hike).permit(:name, :description)
  end



end
