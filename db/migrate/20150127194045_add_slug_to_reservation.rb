class AddSlugToReservation < ActiveRecord::Migration[4.2]
  def change
    add_column :reservations, :slug, :string
    add_index :reservations, :slug
  end
end
