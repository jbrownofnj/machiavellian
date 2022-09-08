class MilitaryUnit < ApplicationRecord
    has_many :player_military_unit_roles
    has_many :players, through: :player_military_unit_roles
end
