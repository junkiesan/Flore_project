class Plant < ApplicationRecord

  # Attractions
  belongs_to :garden

  # Validations
  validates :science_name, :origin, :type, presence: true
end
