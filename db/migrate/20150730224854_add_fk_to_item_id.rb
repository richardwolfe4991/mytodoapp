class AddFkToItemId < ActiveRecord::Migration
  def up
  	change_table :items do |t|
  		t.references :list_id
  	end
  end

  def down
  	remove_index :items, :list_id
  end
end
