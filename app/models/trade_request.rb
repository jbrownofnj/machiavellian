class TradeRequest < ApplicationRecord
  belongs_to :round
  has_many :trade_request_resources
end
