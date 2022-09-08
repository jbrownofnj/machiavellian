class Match < ApplicationRecord
  belongs_to :game
  has_many :player_match_roles
  has_many :players, through: :player_match_roles
  has_many :rounds
end
