class User < ApplicationRecord
  has_secure_password

  has_many :reservations
  has_many :reviews
  has_many :activities, through: :reservations

  validates :username, presence: true

end
