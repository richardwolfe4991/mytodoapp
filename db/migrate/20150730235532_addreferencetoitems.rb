class Addreferencetoitems < ActiveRecord::Migration
  def change
  	add_column :Items, :list_id, :integer, references: :Lists
  	add_index :Items, :list_id
  end
end
  
