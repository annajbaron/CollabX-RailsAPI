class LikeSerializer < ActiveModel::Serializer
  attributes :id, :collection_id, :user_id, :collection_name

  def collection_name
    object.collection.name
  end
end
