class TradePlayerRole < ApplicationRecord
  belongs_to :player
  belongs_to :trade_request_resource
end
