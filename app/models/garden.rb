class Garden < ApplicationRecord

  # Attractions
  belongs_to :user
  has_many :plants

  # Validations
  validates :name, presence: true
end
