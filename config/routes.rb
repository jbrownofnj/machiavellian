Rails.application.routes.draw do
  resources :path_to_power_constructions
  resources :resource_generator_constructions
  resources :trade_request_responses
  resources :fund_request_responses
  resources :funding_request_resources
  resources :funding_request_player_roles
  resources :funding_requests
  resources :fundings
  resources :constructions
  resources :player_military_unit_roles
  resources :military_units
  resources :resource_generators
  resources :trade_player_roles
  resources :trade_request_resources
  resources :trade_requests
  resources :player_loyalty_roles
  resources :player_loyalties
  resources :player_actions
  resources :player_resources
  resources :rounds
  resources :player_match_roles
  resources :matches
  resources :players
  resources :person_game_roles
  resources :games
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
