class Owner::BookingsController < ApplicationController
  def index
    # Afficher tous les bookings de lapins dont le current_user est le owner
    @bunnies = current_user.bunnies
    @bookings = @bunnies.bookings
  end
end
