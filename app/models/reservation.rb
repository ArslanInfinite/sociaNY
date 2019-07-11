class Reservation < ApplicationRecord

  belongs_to :user
  belongs_to :activity
  validates :price, presence: true



end
