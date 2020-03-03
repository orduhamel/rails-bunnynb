class BunniesController < ApplicationController
  def index
    @bunnies = Bunny.all
  end

  def show
    @bunny = Bunny.find(params[:id])
  end

  def create
  end

  private

  def article_params
  params.require(:bunny).permit(:name, :description, :fur, :size, :weight, :skill, :cleanliness, :photo)
end
end
