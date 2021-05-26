class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]
  def index
    @boats = policy_scope(Boat)
    # authorize @boats

    @markers = @boats.geocoded.map do |map|
      {
        lat: boat.laitude,
        lng: boat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { boat: boat })
      }
    end
  end
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
    params.require(:boat).permit(:price, :name, :location, :availability, :capacity, :size, :type, :equipment, :description)
  end
