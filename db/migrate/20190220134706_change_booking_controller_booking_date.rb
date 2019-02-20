class ChangeBookingControllerBookingDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :booking_date, :booking_start
  end
end
