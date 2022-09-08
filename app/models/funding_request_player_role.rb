class FundingRequestPlayerRole < ApplicationRecord
  belongs_to :player
  belongs_to :funding_request
end
