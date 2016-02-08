class User < ActiveRecord::Base
	has_many :tickets, dependent: :destroy

	validates :username, presence: true
	validates :password_digest, presence: true

end
