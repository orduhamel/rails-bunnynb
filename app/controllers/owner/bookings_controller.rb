class Owner::BookingsController < ApplicationController
  def index
    # Afficher tous les bookings de lapins dont le current_user est le owner
    @user = current_user
    @bunnies = current_user.bunnies
  end
end
