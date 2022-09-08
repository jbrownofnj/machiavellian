class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_name, :game_password
end
