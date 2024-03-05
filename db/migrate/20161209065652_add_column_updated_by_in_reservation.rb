class AddColumnUpdatedByInReservation < ActiveRecord::Migration[4.2]
  def change
    add_column :reservations, :updated_by, :string
  end
end
