class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index show] # add more methods if needed
  before_action :set_boat, only: %i[show] # add more methods if needed

  def index
    @boats = policy_scope(Boat)
    # authorize @boats
  end

  def show
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
    redirect_to boat_path(@boat)
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
    authorize @boat
  end

  def boat_params
    params.require(:boat).permit(:price, :name, :location, :availability, :capacity, :size, :boat_type, :description)
  end
end
