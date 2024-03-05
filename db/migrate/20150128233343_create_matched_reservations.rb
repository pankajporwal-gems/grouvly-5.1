class CreateMatchedReservations < ActiveRecord::Migration[4.2]
  def change
    create_table :matched_reservations do |t|
      t.integer :first_reservation_id, null: false
      t.integer :second_reservation_id, null: false
      t.timestamps null: false
    end
  end
end
