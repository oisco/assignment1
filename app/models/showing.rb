class Showing < ActiveRecord::Base
	belongs_to :theatre, dependent: :destroy
	belongs_to :movie, dependent: :destroy
	
	validates :theatre_id, presence: true
	validates :movie_id, presence: true


end
