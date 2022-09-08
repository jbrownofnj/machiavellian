class PlayerLoyaltyRoleSerializer < ActiveModel::Serializer
  attributes :id, :player_loyalty_role_type, :player, :player_loyalty_quantity
  def player
   object.player.house_name
  end
  def player_loyalty_quantity
    object.player_loyalty.player_loyalty_quantity
  end
end
