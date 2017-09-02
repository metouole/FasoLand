class Comment < ApplicationRecord
  belongs_to :message
  belongs_to :utilisateur
end
