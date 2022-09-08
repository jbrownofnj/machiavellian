class FundingRequestPlayerRoleSerializer < ActiveModel::Serializer
  attributes :id, :player_role, :player, :funding_request
  def player
    object.player.house_name
  end
  def funding_request
    object.funding_request.id
  end
end
