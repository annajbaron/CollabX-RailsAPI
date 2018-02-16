class CollaboratorSerializer < ActiveModel::Serializer
  attributes :id, :brand_id, :collection_id, :collection

  def collection
    object.collection_id
  end
end
