class TradeRequestResponseSerializer < ActiveModel::Serializer
  attributes :id, :trade_response_type, :trade_player_role, :trade_request
  def trade_player_role
    object.trade_player_role.player.house_name
  end
  def trade_request
    object.trade_request.id
  end
end
