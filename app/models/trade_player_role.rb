class TradePlayerRole < ApplicationRecord
  belongs_to :player
  belongs_to :trade_request_resource
  has_many :trade_request_responses
end
