class MatchSerializer < ActiveModel::Serializer
  attributes :id, :game
  def game
  object.game.game_name
  end

end
