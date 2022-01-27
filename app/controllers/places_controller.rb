class PlacesController < ApplicationController
	def index
    @places = Place.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @place = Place.new
  end

end
