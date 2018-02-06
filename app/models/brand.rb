class Brand < ApplicationRecord
  has_many :follows, dependent: :destroy
  has_many :followers, through: :likes, source: :user
end
