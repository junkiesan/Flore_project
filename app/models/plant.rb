class Plant < ApplicationRecord

  # Attractions
  belongs_to :garden
  has_one_attached :photo

  # Validations
  validates :nickname, presence: true
end
