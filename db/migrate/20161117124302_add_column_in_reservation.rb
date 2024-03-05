class AddColumnInReservation < ActiveRecord::Migration[4.2]
  def change
    add_column :reservations, :user_type, :string
  end
end
