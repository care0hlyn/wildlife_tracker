class AddSpeciesIdToSightingsTable < ActiveRecord::Migration
  def change
    add_column :sightings, :species_id, :integer
  end
end
