class Sighting < ActiveRecord::Base
  validates :latitude, :numericality => {only_integer: true}
  validates :longitude, :numericality => {only_integer: true}
  validates :date, :presence => true
  validates :species_id, :numericality => {only_integer: true}

  belongs_to :species
  belongs_to :region
end
