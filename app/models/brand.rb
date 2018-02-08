class Brand < ApplicationRecord
  has_many :follows, dependent: :destroy
  has_many :followers, through: :likes, source: :user
  has_many :collaborators, dependent: :destroy
  has_many :collections, through: :collaborators
end
