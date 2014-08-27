class SightingsController < ApplicationController
  def index
    @specie = Species.find(params[:id])
    @sighting = @specie.sightings.new
    render('index.html.erb')
  end
end
