class VoteSerializer < ActiveModel::Serializer
  attributes :id, :is_up, :user_id, :pitch_id
  has_one :user
  has_one :pitch
end
