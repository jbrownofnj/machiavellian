class FundingRequestResourceSerializer < ActiveModel::Serializer
  attributes :id, :funding_resource_type, :funding_resource_ammount, :funding_request
  
  def funding_request
    object.funding_request.id
  end
end
