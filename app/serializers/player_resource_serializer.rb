class PlayerResourceSerializer < ActiveModel::Serializer
  attributes :id, :resource_quantity, :resource_type, :player
  def player
    object.player.house_name
  end
end
