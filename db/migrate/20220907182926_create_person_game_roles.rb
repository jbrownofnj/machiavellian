class CreatePersonGameRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :person_game_roles do |t|
      t.references :person, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.string :person_game_role_type, null: false

      t.timestamps
    end
  end
end
