


class BuildSchema < ActiveRecord::Migration
	def change 
		create_table :animals do |t|

			t.string	:animal_name, null: false
			t.string	:animal_ascii_file
			t.string	:animal_sound, null: false
			t.string	:animal_sound_file


			t.timestamps null: false
		end
 
		create_table :continents do |t|
			t.string :continent_name, null: false
			t.timestamps null: false
		end

		create_table :animal_continets do |t|
			t.belongs_to :continent, index: true
			t.belongs_to :animal, index: true

			t.timestamps null: false
		end
	end

end