class RemoveBookingEndFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_end
  end
end
