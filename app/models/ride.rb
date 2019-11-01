class Ride < ApplicationRecord
  belongs_to :user
  validates :ride_time, presence: true
end
