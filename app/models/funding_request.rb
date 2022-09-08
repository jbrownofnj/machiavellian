class FundingRequest < ApplicationRecord
  belongs_to :round
  belongs_to :construction
  has_many :funding_request_player_roles
  has_many :players, through: :funding_request_player_roles
  has_many :funding_request_resources
  has_many :fund_request_responses
end
