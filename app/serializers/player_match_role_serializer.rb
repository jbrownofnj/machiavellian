class PlayerMatchRoleSerializer < ActiveModel::Serializer
  attributes :id, :player_match_role_type, :match_for_role, :house_for_role
  def match_for_role
  object.match.id
  end
  def house_for_role
    object.player.house_name
  end
end
