class ChangeDateToDateTimeInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :date, :string
    add_column :bookings, :booking_date, :date
  end
end
