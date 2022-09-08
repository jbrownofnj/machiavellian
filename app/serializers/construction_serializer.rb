class ConstructionSerializer < ActiveModel::Serializer
  attributes :id, :construction_type, :player
  def player
    object.player.house_name
  end
end
