class RemoveUniqueColumnCont <ActiveRecord::Migration
	def change
		remove_column :continents, :unique 
	end
end
