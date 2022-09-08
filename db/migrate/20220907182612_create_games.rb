class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :game_name, null: false
      t.string :game_password, null: false

      t.timestamps
    end
  end
end
