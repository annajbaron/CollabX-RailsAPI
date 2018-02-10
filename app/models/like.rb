class Like < ApplicationRecord
  belongs_to :collection
  belongs_to :user

  validates :collection_id, uniqueness: { scope: :user_id }
end
