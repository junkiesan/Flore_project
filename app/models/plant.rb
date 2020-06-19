class Plant < ApplicationRecord

  # Attractions
  belongs_to :garden

  # Validations
  validates :nickname, presence: true
end
