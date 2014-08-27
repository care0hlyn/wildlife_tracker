class SpeciesController < ApplicationController
  def index
    @species = Species.all
    @specie = Species.new
    render('species/index.html.erb')
  end

  def create
    @species = Species.all
    @specie = Species.create(params[:species])
    render('species/index.html.erb')
  end
end
