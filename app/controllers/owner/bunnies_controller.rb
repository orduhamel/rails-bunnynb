class Owner::BunniesController < ApplicationController
  def index
    # Afficher tous les bunnies dont le current_user est le owner
    @user = current_user
    @bunnies = current_user.bunnies
  end
end
