class CreateTradePlayerRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :trade_player_roles do |t|
      t.references :player, null: false, foreign_key: true
      t.references :trade_request_resource, null: false, foreign_key: true
      t.string :role_type, null:false

      t.timestamps
    end
  end
end
