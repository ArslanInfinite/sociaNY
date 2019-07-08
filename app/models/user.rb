class User < ApplicationRecord

  has_many :reservations 
  has_many :reviews
  has_many :activities, through: :reservations
  has_many :activities, through: :reviews

end
