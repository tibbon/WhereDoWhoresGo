class Whore < ActiveRecord::Base
  paginates_per 5
  attr_accessible :location
  validates :location, :presence => true
end
