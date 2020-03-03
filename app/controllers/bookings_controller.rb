class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    #@user = User.find(params[:id])
  end

  # def create
  #   @booking = Booking.new(booking_params)
  #   @booking.user = @user
  #   redirect_to bunny_bookings_path
  # end
end
