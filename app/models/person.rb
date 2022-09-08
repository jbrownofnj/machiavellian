class Person < ApplicationRecord
    has_many :person_game_roles
    has_many :games, through: :person_game_roles
    has_many :players
    has_many :games, through: :players
end
