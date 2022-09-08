class TradeRequestResource < ApplicationRecord
  belongs_to :trade_request
  has_many :trade_player_roles
  has_many :players, through: :trade_player_roles
end
