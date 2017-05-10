class PlacesController < ApplicationController
  def index
    @places = Place.search(params[:page])
  end

  def new
    @place = Place.new
  end
end
