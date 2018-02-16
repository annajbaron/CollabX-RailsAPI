class VoteSerializer < ActiveModel::Serializer
  attributes :id, :is_up
  has_one :user
  has_one :pitch
end
