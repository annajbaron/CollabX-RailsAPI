class Collection < ApplicationRecord
  has_many :collaborators, dependent: :destroy
  has_many :brands, through: :collaborators

  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user
end
