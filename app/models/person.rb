class Person < ApplicationRecord
    has_secure_password
    before_create :make_confirmation_token
    has_many :person_game_roles
    has_many :games, through: :person_game_roles
    has_many :players
    has_many :games, through: :players
   
    private
        def make_confirmation_token
            if self.person_email_confirmation_token.blank?
                self.person_email_confirmation_token = SecureRandom.urlsafe_base64.to_s
            end
        end
end
