class Place < ActiveRecord::Base
	has_many :activities
	has_many :clubs

	validates :country, :presence => true
	validates :district, :presence => true
	validates :county, :presence => true
	validates :locality, :presence => true
end
