class AddColumnRollInReservation < ActiveRecord::Migration[4.2]
  def change
    add_column :reservations, :is_roll, :boolean, default: false
  end
end
