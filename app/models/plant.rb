class Plant < ApplicationRecord

  # Attractions
  belongs_to :garden
  belongs_to :user
  has_one_attached :photo

  # Validations
  validates :nickname, presence: true
end
