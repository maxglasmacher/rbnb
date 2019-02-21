class Yacht < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings, dependent: :destroy
  has_many :previous_users, through: :bookings, source: :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
end
