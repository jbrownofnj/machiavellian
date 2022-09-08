class ResourceGeneratorSerializer < ActiveModel::Serializer
  attributes :id, :resource_generator_type, :player
  def player
   object.player.house_name
  end

end
