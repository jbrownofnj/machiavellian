class PathToPowerConstructionSerializer < ActiveModel::Serializer
  attributes :id, :path_to_power_type, :construction
  def construction
    object.construction.id
  end
end
