class FundingSerializer < ActiveModel::Serializer
  attributes :id, :funding_resource_type, :funding_resource_ammount,:construction
  def construction
    object.construction.construction_type
  end
end
