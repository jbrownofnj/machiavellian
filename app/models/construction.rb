class Construction < ApplicationRecord
  belongs_to :player
  has_many :fundings
  has_many :funding_requests
end
