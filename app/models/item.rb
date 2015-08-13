class Item < ActiveRecord::Base
  belongs_to :list
  attr_accessible :Item_name
  attr_accessible :list_id
end
