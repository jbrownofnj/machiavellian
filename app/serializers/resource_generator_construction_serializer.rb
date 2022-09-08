class ResourceGeneratorConstructionSerializer < ActiveModel::Serializer
  attributes :id, :resource_generator_type, :construction
  def construction
    object.construction.id
  end
end
