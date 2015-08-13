class List < ActiveRecord::Base
  has_many :items, :dependent => :destroy
  attr_accessible :list_name
end
