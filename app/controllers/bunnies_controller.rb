class BunniesController < ApplicationController
  def index
    @bunnies = Bunny.all
  end

  def show
    @bunny = Bunny.find(params[:id])
  end

  def create
  end
end
