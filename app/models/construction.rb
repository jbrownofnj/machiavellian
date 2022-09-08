class Construction < ApplicationRecord
  belongs_to :player
  has_many :fundings
  has_many :funding_requests
  has_many :resource_generator_constructions
  has_many :path_to_power_constructions
end
