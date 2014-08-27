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

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @specie = Species.find(params[:specie_id])
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sighting])
      render('sightings/index.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end
end
