class SightingsController < ApplicationController
  def index
    @specie = Species.find(params[:id])
    @sighting = @specie.sightings.new
    render('sightings/index.html.erb')
  end

  def create
    @sighting = Sighting.create(params[:sightings])
    render('sightings/index.html.erb')
  end
end
