class Follow < ApplicationRecord
  belongs_to :brand
  belongs_to :user
  validates :brand_id, uniqueness: { scope: :user_id }
end
