require_relative '../config/application.rb'

animal_sound = ["dog.wav",
				"cat.wav",
				"bird.wav",
				"mouse.wav",
				"cow.wav",
				"frog.wav",
				"elephant.wav",
				"duck.wav",
				"fish.wav",
				"seal.wav",
				"fox.ogg",
				"horse.wav",
				"bear.wav",
				"lion.wav",
				"rooster.wav",
				"pig.wav",
				"whale.wav",
				"dolphin.wav",
				"monkey.wav",
				"skunk.wav",
				"penguin.wav"]

animal_list = ["dog",
				"cat",
				"bird",
				"mouse",
				"cow",
				"frog",
				"elephant",
				"duck",
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

animal_art = ["dog.txt",
				"cat.txt",
				"bird.txt",
				"mouse.txt",
				"cow.txt",
				"frog.txt",
				"elephant.txt",
				"duck.txt",
				"fish.txt",
				"seal.txt",
				"fox.ogg",
				"horse.txt",
				"bear.txt",
				"lion.txt",
				"rooster.txt",
				"pig.txt",
				"whale.txt",
				"dolphin.txt",
				"monkey.txt",
				"skunk.txt",
				"penguin.txt"]

# animal_sound = ["woof",
# 				"meow",
# 				"tweet",
# 				"squeek",
# 				"moo",
# 				"croak",
# 				"toot",
# 				"quack",
# 				"blub",
# 				"ow-ow-ow-ow",
# 				"ding ling ding ring",
# 				"ah-ooh-ga",
# 				"growl",
# 				"roar",
# 				"cock-a-doodle-doo",
# 				"oink",
# 				"mwoooo wwwweee",
# 				"eeek eek eek",
# 				"whoo whoo whoo",
# 				"fart",
# 				"meep meep"]


# continent_name = ["North America",
# 					"Asia",
# 					"Africa",
# 					"South America",
# 					"Antarctica",
# 					"Europe",
# 					"Australia"]


	animals = Animal.all
animals.length.times do |i|
	p animals[i]
	animals[i].update(
	:animal_ascii_file => animal_art[i],
	:animal_sound_file => animal_sound[i])
	p animals[i]
	animals.save
end

# 7.times do |x|
# 	Continent.create(
# 		:continent_name => continent_name[x]
# 		)
# end
