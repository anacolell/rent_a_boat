class BoatsController < ApplicationController
  def new
    @boat = Boat.new
    authorize @boat
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat
    @boat.save
    redirect_to root_path
  end

  private

  def boat_params
    params.require(:boat).permit(:price, :name, :location, :availability, :capacity, :size, :type, :equipment, :description)
  end
end
