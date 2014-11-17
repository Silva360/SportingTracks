class Club < ActiveRecord::Base
	#many-to-many relationship between user-club
	has_many :user_clubs
	has_many :users, :through => :user_clubs

	belongs_to :place
end
