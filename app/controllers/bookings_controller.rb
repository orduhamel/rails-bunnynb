class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    #@user = User.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bunny = Bunny.find(params[:bunny_id])
    @booking.total_price = @booking.bunny.price_per_day*((@booking.end_date - @booking.start_date).to_i)
    @booking.status = 'pending'
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
