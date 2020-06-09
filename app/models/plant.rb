class Plant < ApplicationRecord

  # Attractions
  belongs_to :garden

  # Validations
  validates :nickname, :science_name, :origin, :type, presence: true
end
