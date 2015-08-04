class Changelistname < ActiveRecord::Migration
  def up
  	change_table :Lists do |t|
  		t.rename :item, :list_name
  	end
  end

  def down
  end
end
