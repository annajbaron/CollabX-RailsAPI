class Pitch < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user
end
