class BunniesController < ApplicationController
  def index
    @bunnies = Bunny.all
  end

  def show
  end

  def create
  end
end
