class BunniesController < ApplicationController
  def index
    @bunnies = Bunny.geocoded

    @markers = @bunnies.map do |bunny|
      {
        lat: bunny.latitude,
        lng: bunny.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bunny: bunny }),
        image_url: helpers.asset_url('noun_bunny_3060201_100.png')
      }
    end
  end

  def show
    @bunny = Bunny.find(params[:id])
    @booking = Booking.new
  end

  def new
    @bunny = Bunny.new
  end

  def create
    @bunny = Bunny.new(bunny_params)
    @bunny.user = current_user
    if @bunny.save
      redirect_to owner_bunnies_path
    else
      render :new
    end
  end

  private

  def bunny_params
  params.require(:bunny).permit(:name, :description, :price_per_day, :address, :fur, :size, :weight, :skill, :cleanliness, :photo)
  end
end
