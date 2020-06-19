class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Attractions
  has_one :garden
  has_many :plants, through: :garden
  def email_required?
    false
  end

  def email_changed?
    false
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
