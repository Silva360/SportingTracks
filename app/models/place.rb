class Place < ActiveRecord::Base
	has_many :activities
	has_many :clubs
end
