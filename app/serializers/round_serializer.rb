class RoundSerializer < ActiveModel::Serializer
  attributes :id, :match_for_round
  def match_for_round
    object.match.id
  end
end
