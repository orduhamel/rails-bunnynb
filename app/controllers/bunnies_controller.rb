class BunniesController < ApplicationController
  def index
    @bunnies = Bunny.geocoded

    @markers = @bunnies.map do |bunny|
      {
        lat: bunny.latitude,
        lng: bunny.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bunny: bunny }),
        image_url: helpers.asset_url('noun_bunny_3060201_100')
      }
    end
  end

  def show
    @bunny = Bunny.find(params[:id])
    @booking = Booking.new
  end

  def create
  end

  private

  def article_params
  params.require(:bunny).permit(:name, :description, :fur, :size, :weight, :skill, :cleanliness, :photo)
  end
end
