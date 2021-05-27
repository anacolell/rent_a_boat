class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[create] # add more methods if needed
  # before_action :set_booking, only: %i[show] # add more methods if needed

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = current_user
    authorize @booking
    if @booking.save
      # @boat.update(availiablity: false)
      redirect_to boat_path(@booking.boat)
    else
      render 'bookings/new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status, :user_id, :boat_id)
  end
end
