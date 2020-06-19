class Plant < ApplicationRecord

  # Attractions
  belongs_to :garden
  belongs_to :user

  # Validations
  validates :nickname, presence: true
end
