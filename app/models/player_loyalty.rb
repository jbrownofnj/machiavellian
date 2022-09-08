class PlayerLoyalty < ApplicationRecord
    has_many :player_loyalty_roles
    has_many :players, through: :player_loyalty_roles
end
