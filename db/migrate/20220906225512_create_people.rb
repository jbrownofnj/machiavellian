class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :person_email, null: false 
      t.string :password_digest, null: false
      t.string :person_email_confirmation_token, default:""
      t.boolean :person_email_confirmed, default:false
      t.boolean :is_admin, default:false
      t.timestamps
    end
  end
end
