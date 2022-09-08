class TradeRequestSerializer < ActiveModel::Serializer
  attributes :id, :round
  def round
    object.round.id
  end
end
