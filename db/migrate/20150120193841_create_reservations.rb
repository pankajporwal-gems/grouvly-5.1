class CreateReservations < ActiveRecord::Migration[4.2]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, null: false
      t.datetime :schedule, null: false
      t.timestamps null: false
    end
  end
end
