class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["place"]["Name of the place"]
    @place.save

    redirect_to "/places"
  end

  def show
    
    @place = Place.find_by({"id" => params["id"]})

  end

end