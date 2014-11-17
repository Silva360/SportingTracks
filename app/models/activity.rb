class Activity < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	has_many :clubs

	#serialize to store json object
	serialize :info, JSON
	
	validates :activity_type, :presence => true
	
end
