class PlayerActionSerializer < ActiveModel::Serializer
  attributes :id, :action_type, :player, :round
  def player
    object.player.house_name
  end
  def round
    object.round.id
  end
end
