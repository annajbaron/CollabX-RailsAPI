class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :pitch
  validates :user_id, uniqueness: { scope: :pitch_id }
end
