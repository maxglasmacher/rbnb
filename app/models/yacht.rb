class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :previous_users, through: :bookings, source: :user
end
