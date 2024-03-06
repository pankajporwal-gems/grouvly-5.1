class AddMostRecentToReservationTransition < ActiveRecord::Migration[5.1]
  def change
    add_column :reservation_transitions, :most_recent, :boolean, default: false
    add_column :user_transitions, :most_recent, :boolean, default: false
    add_column :matched_reservation_transitions, :most_recent, :boolean, default: false
    add_column :venue_booking_transitions, :most_recent, :boolean, default: false
  end
end
