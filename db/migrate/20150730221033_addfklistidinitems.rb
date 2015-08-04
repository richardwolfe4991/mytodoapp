class Addfklistidinitems < ActiveRecord::Migration
  def change
  	add_column :Items, :list_id, :integer
  end
end