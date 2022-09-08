class FundRequestResponseSerializer < ActiveModel::Serializer
  attributes :id, :funding_request_response_type, :funding_request,:funding_request_player_role
  def funding_request
    object.funding_request.id
  end
  def funding_request_player_role
    object.funding_request_player_role.player_role
  end
end
