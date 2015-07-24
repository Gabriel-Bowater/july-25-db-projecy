require_relative '../../config/application'
# require_relative '../models/animal'
require_relative '../models/continent'
require_relative '../view/view.rb'
require_relative


def animals_by_sound
	animal = Animal.find(rand(1..Animal.all.length))
	system("espeak #{animal.animal_sound}")
	answer = gets.chomp
	disp_art(animal.animal_ascii_file)
	if answer == animal.animal_name
		Gosu
		return true
	else
		return false
	end
end


def game_runner
	score = 0
	p "What does the that say?"
	10.times do
		round = animals_by_sound
		if round === true
			score +=1
			p "That's Right!"
		else
			p round
		end
	end

	p "You go " + score.to_s + " out of 10"
end

game_runner
