require_relative '../view/sarahview.rb'
require_relative '../models/animal.rb'


class Controller
  def initialize
    @speak = View.new
  end

  def user_controls
    @speak.greet_user
    act_on_input(@speak.display_menu)
  end

  def act_on_input(user_input)
    user_input = user_input.downcase.split(" ")
    case user_input[0].to_i
    when 1
      if Animal.find_by(animal_name: user_input[1])
        animal = Animal.find_by(animal_name: user_input[1])
        p animal
        sound = animal.animal_sound_file
        @speak.noise(sound)
        @speak.return_animal_profile(animal.id, animal.animal_ascii_file)
      else
        @speak.nope(user_input[1])
      end

    when 2
      animal = Animal.find_by(sound: user_input[1])
      @speak.return_animal_profile(animal.id, animal.animal_ascii_file)
    end
  end





end #end of class
      # animal = Animal.find_by(continent: user_input[1])
      # @speak.return_animal_profile(animal.id, animal.animal_ascii_file)