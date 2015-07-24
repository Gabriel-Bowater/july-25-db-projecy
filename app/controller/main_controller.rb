

def display_menu
	options = ['Search for animals by name', 'Search for animals', 'Search for animals by sound',
				'Add an animal', 'Play "Name That Animal!"']

	options.length.times do |i|
		puts i.to_s + ".  "+ options[i]
	end
	puts
	user_choice = gets.chomp
end

display_menu