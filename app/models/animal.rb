require_relative '../../config/application.rb'

class Animal < ActiveRecord::Base
	has_many :animal_continent
	has_many :continents, through: :animal_continent
end