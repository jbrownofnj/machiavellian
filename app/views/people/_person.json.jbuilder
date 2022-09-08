json.extract! person, :id, :person_email, :person_password, :person_email_confirmation_token, :person_email_confirmed, :created_at, :updated_at
json.url person_url(person, format: :json)
