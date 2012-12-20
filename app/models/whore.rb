class Whore < ActiveRecord::Base
  attr_accessible :location
  validates :location, :presence => true
end
