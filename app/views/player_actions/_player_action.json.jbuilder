json.extract! player_action, :id, :player_id, :round_id, :action_type, :created_at, :updated_at
json.url player_action_url(player_action, format: :json)
