class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :phone_number, presence: true
  validates :phone_number, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  has_many :rides
  has_many :bookings
end
