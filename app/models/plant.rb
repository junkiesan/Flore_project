class Plant < ApplicationRecord

  # Attractions
  belongs_to :garden, optional: true
  has_one_attached :photo

  # Validations
  #validates :nickname, presence: true
end
