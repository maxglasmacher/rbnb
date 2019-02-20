class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :yacht

  validates :booking_start, presence: true
  validates :booking_end, presence: true
end
