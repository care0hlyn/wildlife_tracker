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

  def delete
    @specie = Species.find(params[:id])
    @specie.destroy
    @species = Species.all
    render('species/index.html.erb')
  end

  def edit
    @specie = Species.find(params[:id])
    render('species/edit.html.erb')
  end

  def update
    @species = Species.all
    @specie = Species.find(params[:id])
    if @specie.update(params[:species])
      render('species/index.html.erb')
    else
      render('species/edit.html.erb')
    end
  end
end
