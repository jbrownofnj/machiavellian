class PersonGameRoleSerializer < ActiveModel::Serializer
  attributes :id, :person_game_role_type, :player_for_role, :game_for_role
  def player_for_role
    object.person.person_email
  end
  def game_for_role
    object.game.game_name
  end
end
