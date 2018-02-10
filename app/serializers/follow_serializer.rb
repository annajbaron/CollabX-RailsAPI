class FollowSerializer < ActiveModel::Serializer
  attributes :id, :brand_id, :user_id, :brand_name

  def brand_name
    object.brand.name
  end
end
