class Activity < ApplicationRecord

  has_many :admins
  has_many :reservations
  has_many :reviews
  has_many :users, through: :reservations
  has_many :users, through: :reviews

end
