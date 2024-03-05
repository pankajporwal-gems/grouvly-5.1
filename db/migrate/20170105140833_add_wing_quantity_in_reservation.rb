class AddWingQuantityInReservation < ActiveRecord::Migration[4.2]
  def change
    add_column :reservations, :wing_quantity, :integer, default: 2
  end
end
