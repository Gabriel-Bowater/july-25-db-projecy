require_relative '../../config/application.rb'

class AnimalContinent < ActiveRecord::Base
	belongs_to :animal
	belongs_to :continent
end