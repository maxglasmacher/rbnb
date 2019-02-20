class AddBookingEndToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_end, :string
  end
end
