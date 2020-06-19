class Garden < ApplicationRecord

  # Attractions
  belongs_to :user
  has_many :plants, dependent: :destroy

  # Validations
  validates :name, presence: true
end
