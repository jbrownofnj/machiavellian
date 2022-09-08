class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :house_name, :person_for_player, :game_for_player
  def person_for_player
  object.person.person_email
  end
  
  def game_for_player
  object.game.game_name
  end
end
