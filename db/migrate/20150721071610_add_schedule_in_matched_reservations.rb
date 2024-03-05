class AddScheduleInMatchedReservations < ActiveRecord::Migration[4.2]
  def change
    add_column :matched_reservations, :schedule, :datetime
  end
end
