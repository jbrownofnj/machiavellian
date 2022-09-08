class TradeRequestResourceSerializer < ActiveModel::Serializer
  attributes :id, :trade_request_resource_type, :trade_request_resource_quantity, :trade_request
  def trade_request
   object.trade_request.id
  end
end
