class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]
  def index
    @boats = policy_scope(Boat)
    # authorize @boats
  end

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
    params.require(:boat).permit(:price, :name, :location, :availability, :capacity, :size, :boat_type, :description)
  end
end
