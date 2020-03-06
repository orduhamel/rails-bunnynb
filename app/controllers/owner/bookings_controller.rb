class Owner::BookingsController < ApplicationController
  def index
    # Afficher tous les bookings de lapins dont le current_user est le owner
    @user = current_user
    @bunnies = current_user.bunnies
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.update(status: "confirmed")
    redirect_to owner_bookings_path
  end

  def refuse
    @booking = Booking.find(params[:id])
    @booking.update(status: "refused")
    redirect_to owner_bookings_path
  end
end
