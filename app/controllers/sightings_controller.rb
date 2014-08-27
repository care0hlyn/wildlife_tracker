class SightingsController < ApplicationController
  def index
    @specie = Species.find(params[:id])
    @sighting = Sighting.new
    render('sightings/index.html.erb')
  end

  def create
    @sighting = Sighting.create(params[:sightings])
    @specie = Species.find(params[:id])
    @specie.sightings << @sighting
    render('sightings/index.html.erb')
  end

  def delete
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    @specie = Species.find(params[:specie_id])
    render('sightings/index.html.erb')
  end
end
