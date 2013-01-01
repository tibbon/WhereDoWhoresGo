class Whore < ActiveRecord::Base
  paginates_per 10
  attr_accessible :location
  validates :location, :presence => true
end
