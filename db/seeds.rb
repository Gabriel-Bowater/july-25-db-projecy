require_relative '../config/application.rb'

animal_name = ["dog", 
				"cat", 
				"bird",
				"mouse",
				"cow", 
				"frog",
				"elephant",
				"ducks",
				"fish",
				"seal",
				"fox",
				"horse",
				"bear",
				"lion",
				"rooster",
				"pig",
				"whale",
				"dolphin",
				"monkey",
				"skunk",
				"penguin"]


animal_sound = ["woof",
				"meow",
				"tweet",
				"squeek",
				"moo",
				"croak",
				"toot",
				"quack",
				"blub",
				"ow-ow-ow-ow",
				"ding ling ding ring",
				"ah-ooh-ga",
				"growl",
				"roar",
				"cock-a-doodle-doo",
				"oink",
				"mwoooo wwwweee",
				"eeek eek eek",
				"whoo whoo whoo",
				"fart",
				"meep meep"]


continent_name = ["North America",
					"Asia",
					"Africa",
					"South America",
					"Antarctica",
					"Europe",
					"Australia"]


20.times do |i|
	Animal.create(
		:animal_name => animal_name[i],
		:animal_sound => animal_sound[i]
		)
end

7.times do |x|
	Continent.create(
		:continent_name => continent_name[x]
		)
end
