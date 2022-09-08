json.extract! game, :id, :game_name, :game_password, :created_at, :updated_at
json.url game_url(game, format: :json)
