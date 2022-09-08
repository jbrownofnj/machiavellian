class Round < ApplicationRecord
  belongs_to :match
  has_many :player_actions
  has_many :players, through: :player_actions
  has_many :funding_requests
end
