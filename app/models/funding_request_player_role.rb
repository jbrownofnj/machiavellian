class FundingRequestPlayerRole < ApplicationRecord
  belongs_to :player
  belongs_to :funding_request
  has_many :fund_request_responses
end
