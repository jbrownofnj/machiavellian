class TradePlayerRoleSerializer < ActiveModel::Serializer
  attributes :id, :role_type, :player, :trade_request_resource
  def player 
   object.player.house_name
  end
  def trade_request_resource
    object.trade_request_resource.trade_request_resource_type
  end
end
