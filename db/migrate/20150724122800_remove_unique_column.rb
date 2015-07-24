class RemoveUniqueColumn <ActiveRecord::Migration
	def change
		remove_column :animals, :unique 
	end
end
