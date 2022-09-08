class PersonSerializer < ActiveModel::Serializer
  attributes :id, :person_email, :person_password, :person_email_confirmation_token, :person_email_confirmed
end
