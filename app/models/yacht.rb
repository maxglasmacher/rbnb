class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :previous_users, through: :bookings, source: :user

  mount_uploader :photo, PhotoUploader
end
