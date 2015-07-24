require_relative '../../config/application.rb'
	
class Continent < ActiveRecord::Base
	has_many :animal_continents
	has_many :animals, through: :animal_continents
end