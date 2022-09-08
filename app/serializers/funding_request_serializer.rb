class FundingRequestSerializer < ActiveModel::Serializer
  attributes :id, :round, :construction
  def round
    object.round.id
  end
  def construction
    object.construction.construction_type
  end
end
