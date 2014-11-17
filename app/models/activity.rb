class Activity < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

	#serialize to store json object
	serialize :info, JSON
	
	validates :activity_type, :presence => true
	validates :title, :presence => true
	validates :date, :presence => true
	validates :start, :presence => true
	validates :duration, :presence => true
	
end
