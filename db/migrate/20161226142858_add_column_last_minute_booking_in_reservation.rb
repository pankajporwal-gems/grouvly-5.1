class AddColumnLastMinuteBookingInReservation < ActiveRecord::Migration[4.2]
  def change
    add_column :reservations, :last_minute_booking, :boolean, default: false
  end
end
