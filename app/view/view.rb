
class View

def greet_user
  p "Welcome to What Do The Animals Say!"
  p "Which animal would you like to learn about today?"
end

def search_by?
  input = gets.chomp
  return input
end

def search_for?
  input = gets.chomp
  return input
end

def return_animal_profile(animal_id, img_file_path)
  this_animal = Animal.find_by(id: animal_id)
  p disp_art(img_file_path)
  p "WHAT DOES THE #{this_animal.name} SAY?".upcase
  p "The #{this_animal.name} says '#{this_animal.sound}'!"
  P this_animal.continents.each do |c|
    p "#{c}"
  end
end


def disp_art(image_file)
  File.open(image_file).each { |line| print line }
end


end # end of class