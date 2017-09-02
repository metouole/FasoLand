class Message < ApplicationRecord
	belongs_to :utilisateur
	has_many :comments
end
