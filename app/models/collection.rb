class Collection < ApplicationRecord
  has_many :collaborators, dependent: :destroy
  has_many :brands, through: :collaborators
end
