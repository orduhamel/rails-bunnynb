class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    #@user = User.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bunny = Bunny.find(params[:bunny_id])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :status, :start_date, :end_date)
  end
end
