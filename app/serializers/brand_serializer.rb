class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name, :founded, :hq, :collaborators

  def collaborators
    object.collaborators
  end
end
