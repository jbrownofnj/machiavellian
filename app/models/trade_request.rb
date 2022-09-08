class TradeRequest < ApplicationRecord
  belongs_to :round
  has_many :trade_request_resources
  has_many :trade_request_responses
end
