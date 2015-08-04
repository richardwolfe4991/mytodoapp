class Addfktolistidinitems < ActiveRecord::Migration
  def up
  	change_table :Items do |t|
  		t.remove :list_id
  	end
  end

  def down
  end
end
