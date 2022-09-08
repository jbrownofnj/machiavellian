class Player < ApplicationRecord
  belongs_to :person
  belongs_to :game
  has_many :player_match_roles
  has_many :matches, through: :player_match_roles
  has_many :player_resources
  has_many :player_actions 
  has_many :rounds, through: :player_actions
  has_many :player_loyalty_roles
  has_many :player_loyalties, through: :player_loyalty_roles
  has_many :trade_player_roles
  has_many :trade_request_resources, through: :trade_player_roles
  has_many :resource_generators
  has_many :player_military_unit_roles
  has_many :military_units, through: :player_military_unit_roles
  has_many :constructions 
  has_many :funding_request_player_roles
  has_many :funding_requests, through: :funding_request_player_roles
end
