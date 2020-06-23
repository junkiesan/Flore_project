class Garden < ApplicationRecord

  # Attractions
  belongs_to :user
  has_many :plants, dependent: :destroy
  has_one_attached :photo

  # Validations
  validates :name, presence: true
end
