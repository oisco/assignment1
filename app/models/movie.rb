class Movie < ActiveRecord::Base
	has_many :showings, dependent: :destroy
	
	validates :name, presence: true



	def must_have_valid_trailer
		unless trailer.include?("<iframe")
			errors.add(:trailer, "Must include an iframe tag")
		end
	end

end
