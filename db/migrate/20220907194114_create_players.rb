class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.references :person, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.string :house_name, null: false

      t.timestamps
    end
  end
end
