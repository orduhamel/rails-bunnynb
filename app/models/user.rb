class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bunnies, dependent: :destroy
  has_many :booking_requests, through: :bunnies, source: :bookings, dependent: :destroy
  has_one_attached :photo

  has_many :bookings, dependent: :destroy
end
