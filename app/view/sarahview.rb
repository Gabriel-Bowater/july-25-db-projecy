require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'restclient'
require 'gosu'

class View

def greet_user
  puts "Welcome to What Do The Animals Say!"
  puts "Enter the option number, followed by your search term."
  puts
end



def display_menu
  options = ['Search for animals by name', 'Search for animals by sound', 'Play "Name That Animal!"']

  options.length.times do |i|
    puts (i+1).to_s + ".  "+ options[i]
  end
  puts
  user_choice = gets.chomp
  return user_choice
end

def search_by_name
  puts "Enter animal name: "
  input = gets.downcase.chomp
end


def return_animal_profile(animal_id, img_file_path)
  img_file_path = "./lib/" + img_file_path
  this_animal = Animal.find_by(id: animal_id)
  p disp_art(img_file_path)
  puts "WHAT DOES THE #{this_animal.animal_name} SAY?".upcase
  puts "The #{this_animal.animal_name} says '#{this_animal.animal_sound}'!"

end


def disp_art(in_file)
    system "clear" or system "cls"
    File.open(in_file).each do |line|
        this_line = " "*40
        this_line += line
        print this_line
    end
end

def nope(animal_name)
 puts "Sorry, I've never heard of that animal. But Wikipedia says: "

    this_page = "https://en.wikipedia.org/wiki/" + animal_name
    page = Nokogiri::HTML(RestClient.get(this_page))

    puts page.css("title")[0].text
    puts this_page
p page.css('p')[1].text
end

def noise(sound_file)
  sound = Gosu::Sample.new(sound_file)
  sound.play
end

end # end of class


