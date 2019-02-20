class AddBookingEndToBookingsC < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_end, :date
  end
end
