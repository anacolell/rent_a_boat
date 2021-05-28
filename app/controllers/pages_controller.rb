class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @host = current_user.boats.any?
    if @host
      @my_boats = current_user.boats
      @booking_requests = Booking.where(boat_id: @my_boats.pluck(:id))
    end
  end
end
