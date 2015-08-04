class Rollbacklistidid < ActiveRecord::Migration
  def up
  	change_table :Items do |t|
  		t.remove :list_id_id
  		t.rename :item_id, :list_id
  	end
  end

  def down
  end
end
