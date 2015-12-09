class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	
	geocoded_by :address
  after_validation :geocode

	validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 50, :minimum => 3}
	validates :address, :presence => true, :uniqueness => true
	validates :description, :presence => true, :length => { :maximum => 1000, :minimum => 15}
end
