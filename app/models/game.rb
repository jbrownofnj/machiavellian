class Game < ApplicationRecord
    has_many :person_game_roles
    has_many :people, through: :person_game_roles
    has_many :players
    has_many :people, through: :player
    has_many :matches
end
