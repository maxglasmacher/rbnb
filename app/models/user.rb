class User < ApplicationRecord
  has_many :yachts
  has_many :bookings
  has_many :rented_yachts, through: :bookings, source: :yacht
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
