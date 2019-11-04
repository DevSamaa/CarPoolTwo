class Ride < ApplicationRecord
  belongs_to :user
  validates :ride_date, :ride_time, :price, presence: true
  has_many :bookings
end
